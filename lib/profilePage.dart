import 'package:demo/utils/colors.dart';
import 'package:demo/utils/sizeConfig.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          "Profile Page",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
          child: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: b * 15),
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  sh(20),
                  Image.network(
                    "https://www.pngall.com/wp-content/uploads/5/Profile-Avatar-PNG.png",
                    width: b * 100,
                    height: h * 100,
                  ),
                  sh(8),
                  Text(
                    "ritesh-amit",
                    style: TextStyle(
                      fontSize: b * 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  sh(18),
                  Container(
                    width: SizeConfig.screenWidth,
                    padding: EdgeInsets.symmetric(
                        vertical: h * 20, horizontal: b * 18),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border.all(color: borderColor),
                      borderRadius: BorderRadius.circular(b * 4),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoTile(
                          title: "Full Name",
                          line: "Ritesh Shukla",
                        ),
                        sh(24),
                        InfoTile(
                          title: "Gender",
                          line: "Male",
                        ),
                        sh(24),
                        InfoTile(
                          title: "Address",
                          line: "Shashtri Nagar, Lakhimpur Kheri",
                        ),
                        sh(24),
                        InfoTile(
                          title: "Email",
                          line: "ritesh.shuklalmp2018@gmail.com",
                        ),
                        sh(24),
                        InfoTile(
                          title: "Phone Number",
                          line: "6387246026",
                        ),
                        sh(24),
                        InfoTile(
                          title: "Nationality",
                          line: "Indian",
                        ),
                        sh(24),
                        InfoTile(
                          title: "City",
                          line: "Lakhimpur",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class InfoTile extends StatelessWidget {
  final String title;
  final String line;
  InfoTile({
    required this.title,
    required this.line,
  });

  @override
  Widget build(BuildContext context) {
    var b = SizeConfig.screenWidth / 375;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          this.title,
          style: TextStyle(
            fontSize: b * 12,
            letterSpacing: 0.6,
            color: Colors.black.withOpacity(0.5),
            fontWeight: FontWeight.w400,
          ),
        ),
        sh(3),
        Text(
          this.line,
          style: TextStyle(
            fontSize: b * 14,
            color: Color(0xff3c3b3b),
          ),
        ),
      ],
    );
  }
}
