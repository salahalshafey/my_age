import 'package:flutter/material.dart';
import 'package:my_age/l10n/l10n.dart';
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
        title: Text(Strings.of(context).appOverview),
        centerTitle: true,
      ),
      body: ListView(
        padding:
            EdgeInsets.symmetric(horizontal: horizantalPadding, vertical: 20),
        children: <Widget>[
          Text(
            Strings.of(context).aboutAppDescription,
            textAlign: TextAlign.justify,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
              child: Text(
                Strings.of(context).privacyPolicy,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
