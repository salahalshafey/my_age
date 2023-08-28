import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var horizantalPadding = 20.0;
    var width = MediaQuery.of(context).size.width;
    if (width > 800) {
      horizantalPadding += (width - 800) / 2;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('App Overview'),
        centerTitle: true,
      ),
      body: ListView(
        padding:
            EdgeInsets.symmetric(horizontal: horizantalPadding, vertical: 20),
        children: <Widget>[
          const Text(
            "Welcome to My Age App our Age Calculator app, the ultimate tool to celebrate life's milestones and stay connected with your loved ones. Our app goes "
            "beyond just calculating your age – it brings a unique blend of functionality to make each birthday a cherished memory. Discover the day of "
            "the week you were born and explore the beauty of your Hijri birthdate. Never miss an important date again with our countdown timer to your "
            "next birthday, ensuring you're ready for another year of joy. But it doesn't stop there – you can save and manage the birthdates of your "
            "family and friends, and our thoughtful notification system will ensure you never forget to send your best wishes. celebrating "
            "life, capturing moments, and forging stronger bonds with those who matter.",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 50),
          Align(
            child: TextButton(
              onPressed: () {
                launchUrl(
                  Uri.parse(
                      "https://github.com/salahalshafey/myage-privacy/blob/main/privacy-policy.md"),
                  mode: LaunchMode.inAppWebView,
                );
              },
              child: const Text(
                "Privacy Policy",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
