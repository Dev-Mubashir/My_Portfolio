import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/svg.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  downloadFile(url) {
    AnchorElement anchorElement = new AnchorElement(href: url);
    anchorElement.download = "CV-MubashirUrRehman";
    anchorElement.click();
  }

  final int phoneNumber = 03145808279;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Rawalpindi",
                    ),
                    AreaInfoText(
                      title: "Mail",
                      text: "mubashirehman01@gmail.com",
                    ),
                    AreaInfoText(
                      title: "Number",
                      text: "03145808279",
                    ),
                    AreaInfoText(
                      title: "Degree",
                      text: "BSc Software Engineering",
                    ),
                    AreaInfoText(
                      title: "Institution",
                      text: "UET Taxila",
                    ),
                    AreaInfoText(
                      title: "Graduation Date",
                      text: "May 2024",
                    ),
                    AreaInfoText(
                      title: "CGPA",
                      text: "3.33",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () =>
                                  downloadFile("assets/Mubashir ur Rehman.pdf"),
                              child: Text(
                                "DOWNLOAD CV",
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                ),
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF24242E),
                        border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      margin: EdgeInsets.only(top: defaultPadding),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              const url =
                                  'https://www.linkedin.com/in/app-developer-flutter/';
                              launch(url);
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              const url = 'https://github.com/Dev-Mubashir';
                              launch(url);
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              String url =
                                  'https://wa.me/$phoneNumber/?text=${Uri.parse("Hello")}';
                              launch(url);
                            },
                            icon: Container(
                                width: 20,
                                height: 20,
                                child:
                                    Image.asset("assets/icons/whatsapp.png")),
                          ),
                          Spacer(),
                        ],
                      ),
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
