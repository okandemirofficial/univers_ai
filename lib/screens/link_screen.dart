import 'package:flutter/material.dart';
import 'package:univers_ai/widgets/link_button.dart';

class LinkScreen extends StatefulWidget {
  const LinkScreen({super.key});

  @override
  State<LinkScreen> createState() => _LinkScreenState();
}

class _LinkScreenState extends State<LinkScreen>{
  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(
                height: 15,
              );
    return const Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              sizedBox,
              LinkButton(
                text: "İnstagram",
                url: "https://www.instagram.com/universait/",
              ),
             sizedBox,
              LinkButton(
                text: "Youtube",
                url: "https://www.youtube.com/channel/UCVM8BsqvKyuDZrkLIBoWZzw",
              ),
             sizedBox,
              LinkButton(
                text: "Linkedin",
                url: "https://www.linkedin.com/company/univers-ai/",
              ),
              sizedBox,
              LinkButton(
                text: "X",
                url: "https://medium.com/@aiuniversait",
              ),
              sizedBox,
              LinkButton(
                text: "Medium",
                url: "https://medium.com/@aiuniversait",
              ),
              sizedBox,
              LinkButton(
                text: "Web Sitemiz",
                url: "https://univers-ai.com/",
              ),
            ],
          ),
        ),
      ),
    );
  }
}


