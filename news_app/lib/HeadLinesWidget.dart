// ignore_for_file: unused_import

import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:news_app/Models/News_Headlines_Model.dart';
import 'package:news_app/Services/NewsHeadlinesApiCall.dart';
import 'package:news_app/Services/news_headlines_sources.dart';
import 'package:news_app/Services/newsheadlinesApiResponse.dart';
import 'package:news_app/detailsScreen.dart';

class HeadLinesWidget extends StatefulWidget {
  const HeadLinesWidget({super.key});

  @override
  State<HeadLinesWidget> createState() => _HeadLinesWidgetState();
}

enum sourceList { bbcNews, aryNews, cnnNews, aljazeeraEnglish, independent }

class _HeadLinesWidgetState extends State<HeadLinesWidget> {
  final format = DateFormat('MMMM dd, yyyy');
  bool loading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sourceFinder('bbc-news');
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return SizedBox(
      // color: Colors.amber,
      height: height * 0.65,
      width: width * 1,
      child: Expanded(
        child: FutureBuilder(
          future: Newsapiresponse().fetchNewsHeadlinesApi(),
          builder: (context, AsyncSnapshot<News_Headlines_Model> snapshot) {
            try {
              if (!snapshot.hasData) {
                return Center(child: SpinKitCircle(color: Colors.amber));
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: SpinKitCircle(color: Colors.amber));
              } else if (snapshot.hasError) {
                return Center(child: Text(snapshot.error.toString()));
              } else {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshot.data!.articles!.length,
                  itemBuilder: (context, index) {
                    // Converting String format date into datetime Format
                    // If there is Z in end of date that means its GMT Format
                    DateTime dateTime = DateTime.parse(
                      snapshot.data!.articles![index].publishedAt.toString(),
                    );
                    return SizedBox(
                      child: Stack(
                        // To use another widget on another widget like card/container on container as i did
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Detailsscreen(
                                    imageUrl: snapshot
                                        .data!
                                        .articles![index]
                                        .urlToImage
                                        .toString(),
                                    title: snapshot.data!.articles![index].title
                                        .toString(),
                                    description: snapshot
                                        .data!
                                        .articles![index]
                                        .description
                                        .toString(),
                                    author: snapshot
                                        .data!
                                        .articles![index]
                                        .author
                                        .toString(),
                                    dateTime: dateTime,
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              height: height * 0.65,
                              width: width * 0.9,
                              padding: EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 10,
                              ),
                              child: ClipRRect(
                                // To give borderRadius to any widget
                                borderRadius: BorderRadiusGeometry.circular(15),
                                child: CachedNetworkImage(
                                  imageUrl: snapshot
                                      .data!
                                      .articles![index]
                                      .urlToImage
                                      .toString(),
                                  fit: BoxFit.cover,
                                  errorWidget: (context, url, error) {
                                    return Image.asset('images/news_image.jpg');
                                  },
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // To position the card on image
                            bottom: 20,
                            left: 25,
                            child: Card(
                              color: Colors.white,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Container(
                                // All scenerio of card is managed here
                                padding: EdgeInsets.all(12),
                                height: height * 0.17,
                                width: width * 0.75,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      snapshot.data!.articles![index].title
                                          .toString(),
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.poppins(
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          width: width * 0.25,
                                          color: Colors.amber,
                                          child: Text(
                                            snapshot
                                                .data!
                                                .articles![index]
                                                .author
                                                .toString(),
                                            // maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          format.format(dateTime),
                                          // 'October 10 2025',
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }
            } catch (e) {
              return Text(e.toString());
            }
          },
        ),
      ),
    );
  }
}
