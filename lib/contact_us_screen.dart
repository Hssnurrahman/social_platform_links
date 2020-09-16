import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatefulWidget {
  @override
  _ContactUsScreenState createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {


  void sendEmail() async {
    var url = "mailto:hssnurrahman@gmail.com";
    if (await canLaunch(url)) {
      await launch(
        url,
      );
    } else {
      throw "Could not Open Email";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              "Welcome To",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Social Media Links",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "If you have",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "If you find any",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "problems or mistakes",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "related to this app",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Then contact Us on this email:",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: sendEmail,
              child: Text(
                "Send Email",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 20,
                ),
              ),
            ),
//            Text(
//              "or",
//              style: TextStyle(
//                fontSize: 20,
//              ),
//            ),
//            SizedBox(
//              height: 10,
//            ),
//            Text(
//              "WhatsApp Us at:",
//              style: TextStyle(
//                fontSize: 20,
//              ),
//            ),
//            SizedBox(
//              height: 10,
//            ),
//            GestureDetector(
//              onTap: sendWhatsApp,
//              child: Text(
//                "0302-6658022",
//                style: TextStyle(
//                  decoration: TextDecoration.underline,
//                  fontSize: 20,
//                ),
//              ),
//            ),
          ],
        ),
      ),
    );
  }
}
