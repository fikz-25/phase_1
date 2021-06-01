import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phase_1/assets/resources/images.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  goTOSecondScreen() {
    Navigator.pushNamed(context, '/secondscreen');
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      backgroundColor: Color(0xfff57e42),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Align(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xfff57e42),
                      height: MediaQuery.of(context).size.height / 3,
                      child: Image.asset(
                        ImagesItem.BG_BRIGHT,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 6),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              "Welcome",
                              style: TextStyle(
                                  color: Color(0xfffefefe),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "This is app for suitemedia mobile developer test",
                              style: TextStyle(
                                  color: Color(0xfffefefe), fontSize: 14.0),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Container(
                              padding: EdgeInsets.all(20.0),
                              width: MediaQuery.of(context).size.width / 1.4,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  border: Border.all(color: Colors.grey)),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius:
                                        MediaQuery.of(context).size.width / 8,
                                    backgroundImage:
                                        AssetImage(ImagesItem.IMG_AVATAR),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(15.0),
                                    decoration: BoxDecoration(
                                      color: Color(0xffe3e3e3),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0)),
                                    ),
                                    child: TextField(
                                      onTap: () {},
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.0),
                                      decoration: InputDecoration.collapsed(
                                        border: InputBorder.none,
                                        hintText: "Type name here..",
                                        fillColor: Colors.transparent,
                                        hintStyle: TextStyle(
                                            fontSize: 14.0, color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  InkWell(
                                    onTap: () => goTOSecondScreen(),
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        padding: EdgeInsets.all(15.0),
                                        decoration: BoxDecoration(
                                          color: Color(0xfff57e42),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(19.0)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Next",
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.white),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Copyright © 2020 Suitmedia All rights reserved.",
                      style:
                          TextStyle(fontSize: 12.0, color: Color(0xff737373)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
