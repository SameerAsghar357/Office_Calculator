// ignore_for_file: unused_local_variable, avoid_unnecessary_containers, must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:news_app/Services/newsheadlinesApiResponse.dart';

class IndependentNews extends StatefulWidget {
  bool isScrollable;
  IndependentNews({super.key, required this.isScrollable});

  @override
  State<IndependentNews> createState() => _IndependentNewsState();
}

// enum sourceList { bbcNews, aryNews, cnnNews, aljazeeraEnglish, independent }

class _IndependentNewsState extends State<IndependentNews> {
  final format = DateFormat('MMMM dd, yyyy');
  bool loading = false;
  // bool isScrollable = true;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   sourceFinder('bbc-news');
  // }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return SizedBox(
      // color: Colors.blue,
      height: height * 1,
      width: width * 1,
      child: Expanded(
        child: FutureBuilder(
          future: Newsapiresponse().fetchNewsCategoriesApi('general'),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(child: SpinKitCircle(color: Colors.amber));
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: SpinKitCircle(color: Colors.amber));
            } else if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            } else {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data!.articles!.length,
                physics: widget.isScrollable
                    ? AlwaysScrollableScrollPhysics()
                    : NeverScrollableScrollPhysics(),
                // shrinkWrap: true,
                itemBuilder: (context, index) {
                  DateTime dateTime = DateTime.parse(
                    snapshot.data!.articles![index].publishedAt.toString(),
                  );
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          // horizontal: 0,
                          vertical: 10,
                        ),
                        child: SizedBox(
                          height: height * 0.15,
                          width: width * 0.25,
                          // decoration: BoxDecoration(color: Colors.blue),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CachedNetworkImage(
                              imageUrl: snapshot
                                  .data!
                                  .articles![index]
                                  .urlToImage
                                  .toString(),
                              fit: BoxFit.cover,
                              errorWidget: (context, url, error) =>
                                  Image.asset('images/news_image.jpg'),
                              placeholder: (context, url) => const Center(
                                child: Center(
                                  child: SpinKitCircle(color: Colors.amber),
                                ), // shows while image is loading
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        // color: Colors.white,
                        height: height * 0.15,
                        width: width * 0.62,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                snapshot.data!.articles![index].title
                                    .toString(),
                              ),
                              // SizedBox(height: 50),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    // padding: EdgeInsets.all(5),
                                    width: width * 0.25,
                                    // color: Colors.amber,
                                    child: Text(
                                      snapshot.data!.articles![index].author
                                          .toString(),
                                      // maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.poppins(
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                  Text(format.format(dateTime)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
