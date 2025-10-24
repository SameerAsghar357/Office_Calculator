// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/Services/NewsHeadlinesApiCall.dart';
import 'package:news_app/categoryNewsScreen.dart';

class Detailsscreen extends StatefulWidget {
  String imageUrl, title, description, author;
  DateTime dateTime;
  Detailsscreen({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.author,
    required this.dateTime,
  });

  @override
  State<Detailsscreen> createState() => _DetailsscreenState();
}

class _DetailsscreenState extends State<Detailsscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sourceFinder('bbc-news');
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen'),
        backgroundColor: Colors.white,
      ),
      body: SizedBox(
        height: height * 1,
        width: width * 1,
        child: Stack(
          children: [
            SizedBox(
              height: height * 0.50,
              width: double.infinity,

              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                child: CachedNetworkImage(
                  imageUrl: widget.imageUrl,
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) =>
                      Center(child: CircularProgressIndicator()),
                ),
              ),
            ),
            Container(
              height: height * 0.50,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: EdgeInsets.only(top: height * .45),
              // width: width * 0.50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.title,
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              // color: Colors.amber,
                              width: width * 0.50,
                              child: Text(
                                widget.author,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Text(
                              format.format(widget.dateTime),
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                // color: Colors.black87,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.03),
                        Text(
                          widget.description,
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
