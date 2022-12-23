import 'dart:math';
import 'package:flutter/material.dart';
import 'package:travelappui/components/rating,.dart';
import 'package:travelappui/constants/colors.dart';
import 'package:travelappui/routes/routes.dart';

class ViewDetails extends StatefulWidget {
  @override
  _ViewDetailsState createState() => _ViewDetailsState();
}

class _ViewDetailsState extends State<ViewDetails> {
  int numberPackage = 0;

  removePackage() {
    setState(() {
      numberPackage--;
      numberPackage = max(numberPackage, 0);
    });
  }

  addPackage() {
    setState(() {
      numberPackage++;
      numberPackage = min(numberPackage, 5);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData appTheme = Theme.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.ROUTE_Home);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: size.height * 0.7,
              color: Colors.grey,
              child: Image(
                image: AssetImage('assets/image/nvt-2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(top: 26, left: 20, right: 20),
                height: size.height * 0.54,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Concert NCT 127 Neo City",
                        style: appTheme.textTheme.headline2),
                    SizedBox(height: 12),
                    Row(children: [
                      Icon(
                        Icons.calendar_month,
                        size: 14,
                      ),
                      SizedBox(width: 12),
                      Text(
                        "Nov, 4-5 2022",
                        style: appTheme.textTheme.caption,
                      )
                    ]),
                    SizedBox(height: 8),
                    Row(children: [
                      Icon(
                        Icons.location_pin,
                        size: 14,
                      ),
                      SizedBox(width: 12),
                      Text(
                        "Jakarta, Indonesian Convention Exhibiiton (ICE) BSD",
                        style: appTheme.textTheme.caption,
                      )
                    ]),
                    SizedBox(height: 8),
                    Row(children: [
                      Icon(
                        Icons.access_time,
                        size: 14,
                      ),
                      SizedBox(width: 12),
                      Text(
                        "3-5 PM",
                        style: appTheme.textTheme.caption,
                      )
                    ]),
                    SizedBox(height: 8),
                    // Rating(rating: 4.5, color: Colors.black),
                    // SizedBox(height: 18),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Description",
                      style: appTheme.textTheme.headline3
                          .merge(TextStyle(color: Colors.black)),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "NCT 127 concert in Jakarta. The ticket price for the NCT 127 concert in Jakarta ranges from Rp. 1 million to almost Rp. 3 million. There are various categories of concert venue options, ranging from those provided with seating to those that stand.",
                      maxLines: 4,
                      overflow: TextOverflow.fade,
                      style: appTheme.textTheme.bodyText1,
                    ),
                    SizedBox(height: size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: appTheme.accentColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                elevation: 0,
                                textStyle: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'PlayFair',
                                    fontWeight: FontWeight.bold)),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.ROUTE_Book);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Buy Ticket",
                                style: appTheme.textTheme.headline3,
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
