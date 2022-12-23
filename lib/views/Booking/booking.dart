import 'dart:html';
import 'dart:math';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travelappui/components/rating,.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:travelappui/routes/routes.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
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
          Navigator.pushNamed(context, AppRoutes.ROUTE_ViewDetails);
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
              height: size.height * 0.70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Concert NCT 127 Neo City",
                      style: appTheme.textTheme.headline2),

                  // Row(
                  //   children: [
                  //     IconButton(
                  //         icon: Icon(
                  //           Icons.remove,
                  //           color: appTheme.accentColor,
                  //         ),
                  //         splashColor: appTheme.accentColor,
                  //         onPressed: () {
                  //           removePackage();
                  //         }),
                  //     Container(
                  //       padding: EdgeInsets.only(left: 8, right: 8),
                  //       child: Text(
                  //         numberPackage.toString(),
                  //         style: appTheme.textTheme.caption,
                  //       ),
                  //     ),
                  //     IconButton(
                  //         icon: Icon(Icons.add),
                  //         onPressed: () {
                  //           addPackage();
                  //         }),
                  //     // SizedBox(width: 12),
                  //     // Icon(
                  //     //   Icons.timer_rounded,
                  //     //   color: appTheme.accentColor,
                  //     // ),
                  //     // SizedBox(
                  //     //   width: 8,
                  //     // ),
                  //     // Text(
                  //     //   "5 Days",
                  //     //   style: appTheme.textTheme.caption
                  //     //       .merge(TextStyle(color: appTheme.accentColor)),
                  //     // ),
                  //   ],
                  // ),
                  SizedBox(
                    height: 33,
                  ),
                  Text(
                    "Booking Ticket Now!",
                    style: appTheme.textTheme.headline3
                        .merge(TextStyle(color: Colors.black)),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Pembelian tiket untuk sementara waktu belum tersedia di aplikasi.",
                    maxLines: 4,
                    overflow: TextOverflow.fade,
                    style: appTheme.textTheme.bodyText1
                        .merge(TextStyle(color: Colors.red)),
                  ),
                  Text(
                    "Silahkan pilih salah satu tombol untuk diarahkan menuju step selanjutnya! ",
                    maxLines: 4,
                    overflow: TextOverflow.fade,
                    style: appTheme.textTheme.bodyText1,
                  ),
                  SizedBox(height: size.height * 0.08),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "\Rp 3.050.000",
                              style: TextStyle(
                                  color: appTheme.accentColor,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: "/Ticket",
                              style: TextStyle(
                                  color: appTheme.accentColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))
                        ]),
                      ),
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
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Link(
                              target: LinkTarget.blank,
                              uri: Uri.parse(
                                  'https://www.viagogo.com/id/Concert-Tickets/K-Pop/NCT-127-Tickets/E-151328824'),
                              builder: (context, FollowLink) => ElevatedButton(
                                onPressed: FollowLink,
                                // child: Text('Open link'),
                                child: Text(
                                  "Book Now",
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "\Rp 4.020.000",
                              style: TextStyle(
                                  color: appTheme.accentColor,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: "/Ticket",
                              style: TextStyle(
                                  color: appTheme.accentColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))
                        ]),
                      ),
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
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Link(
                              target: LinkTarget.blank,
                              uri: Uri.parse(
                                  'https://www.viagogo.com/id/Concert-Tickets/K-Pop/NCT-127-Tickets/E-151328824'),
                              builder: (context, FollowLink) => ElevatedButton(
                                onPressed: FollowLink,
                                // child: Text('Open link'),
                                child: Text(
                                  "Book Now",
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "\Rp 5.000.000",
                              style: TextStyle(
                                  color: appTheme.accentColor,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: "/Ticket",
                              style: TextStyle(
                                  color: appTheme.accentColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))
                        ]),
                      ),
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
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Link(
                              target: LinkTarget.blank,
                              uri: Uri.parse(
                                  'https://www.viagogo.com/id/Concert-Tickets/K-Pop/NCT-127-Tickets/E-151328824'),
                              builder: (context, FollowLink) => ElevatedButton(
                                onPressed: FollowLink,
                                // child: Text('Open link'),
                                child: Text(
                                  "Book Now",
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
