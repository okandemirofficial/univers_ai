import 'package:flutter/material.dart';
import 'package:univers_ai/widgets/link_button.dart';

class LinkScreen extends StatefulWidget {
  const LinkScreen({super.key});

  @override
  State<LinkScreen> createState() => _LinkScreenState();
}

class _LinkScreenState extends State<LinkScreen> {
  var textInstagram = "İnstagram";
  var urlInstagram = "https://www.instagram.com/universait/";
  var textYoutube = "Youtube";
  var urlYoutube = "https://www.youtube.com/channel/UCVM8BsqvKyuDZrkLIBoWZzw";
  var textLinkedin = "Linkedin";
  var urlLinkedin = "https://www.linkedin.com/company/univers-ai/";
  var textX = "X";
  var urlX = "https://medium.com/@aiuniversait";
  var textMedium = "Medium";
  var url6 = "https://medium.com/@aiuniversait";
  var textWeb = "Web Sitemiz";
  var url7 = "https://univers-ai.com/";
  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(
      height: 15,
    );
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              sizedBox,
              LinkButton(
                text: textInstagram,
                url: urlInstagram,
              ),
              sizedBox,
              LinkButton(
                text: textYoutube,
                url: urlYoutube,
              ),
              sizedBox,
              LinkButton(
                text: textLinkedin,
                url: urlLinkedin,
              ),
              sizedBox,
              LinkButton(
                text: textX,
                url: urlX,
              ),
              sizedBox,
              LinkButton(
                text: textMedium,
                url: url6,
              ),
              sizedBox,
              LinkButton(
                text: textWeb,
                url: url7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
