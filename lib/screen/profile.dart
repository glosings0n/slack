import 'package:flutter/material.dart';
import 'package:slack_identify/tools/delayed.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {

  WebViewController controller = WebViewController()
    ..loadRequest(Uri.parse('https://github.com/G-Losingson'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,        
        title: DelayedAnimation(
          delay: 500,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Losingson\'s GitHub Profile',
                style: Theme.of(context).textTheme.titleMedium,
                ),
              SizedBox(
                width : 40,
                child: ClipOval(
                  child: Image.asset(
                    'images/losingson.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
