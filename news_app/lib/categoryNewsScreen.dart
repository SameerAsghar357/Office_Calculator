// ignore_for_file: unused_import, unused_element, must_be_immutable
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:news_app/Home_Screen.dart';
import 'package:news_app/Independent_News.dart';
import 'package:news_app/Services/newsheadlinesApiResponse.dart';

class Categorynewsscreen extends StatefulWidget {
  bool isScrollable;
  Categorynewsscreen({super.key, required this.isScrollable});

  @override
  State<Categorynewsscreen> createState() => _CategorynewsscreenState();
}

final format = DateFormat('MMMM dd, yyyy');
bool loading = false;

List<String> Categories = [
  'General',
  'Entertainment',
  'Health',
  'Sports',
  'Business',
  'Technoloy',
];

enum categories { general, entertainment, health, sports, business, technology }

// List<String> categories = [
//   'general',
//   'entertainment',
//   'health',
//   'sports',
//   'business',
//   'technology',
// ];
String category = categories.values[0].name.toString();
bool isPressed = false;
// Color color = Colors.grey;

class _CategorynewsscreenState extends State<Categorynewsscreen> {
  @override
  Widget build(BuildContext context) {
    //   initState() {
    //     category = 'general';
    //     super.initState();
    //   }

    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    try {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          // title: Text('Categories News Screen'),
          // centerTitle: true,
        ),
        body: SizedBox(
          height: height * 1,
          width: width * 1,
          child: Column(
            children: [
              // SizedBox(height: height * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    // color: Colors.amber,
                    height: height * 0.08,
                    width: width * 1,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Categories.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 8,
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(40),
                            onTap: () {
                              category = categories.values[index].name
                                  .toString();
                              debugPrint(
                                categories.values[index].name.toString(),
                              );
                              setState(() {});
                              // debugPrint('${Categories[index]} Button Tapped');
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color:
                                    category ==
                                        categories.values[index].name.toString()
                                    ? Colors.blue
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  Categories[index].toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),

              // SizedBox(height: 20),
              Expanded(
                child: FutureBuilder(
                  future: Newsapiresponse().fetchNewsCategoriesApi(category),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: SpinKitChasingDots(color: Colors.amber),
                      );
                    } else if (snapshot.connectionState ==
                        ConnectionState.waiting) {
                      return Center(
                        child: SpinKitChasingDots(color: Colors.amber),
                      );
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
                            snapshot.data!.articles![index].publishedAt
                                .toString(),
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
                                      placeholder: (context, url) =>
                                          const Center(
                                            child: Center(
                                              child: SpinKitCircle(
                                                color: Colors.amber,
                                              ),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
            ],
          ),
        ),
      );
    } catch (e) {
      return Text(e.toString());
    }
  }
}
