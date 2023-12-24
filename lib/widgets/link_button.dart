import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  final String text;
  final String url;
  const LinkButton({super.key, required this.text, required this.url, });

  void _launchURL() async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          ClipOval(
            child: Container(
              width: 60.0,
              height: 60.0,
              decoration: const BoxDecoration(
                color: Colors.blue, 
                image: DecorationImage(
                  image: AssetImage(
                      'assets/jfif/button_background.jfif'), 
                  fit: BoxFit.cover,
                ),
              ),
              child: InkWell(
                onTap: () => _launchURL(),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style:
                const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
