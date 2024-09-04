import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class JsChannelScreen extends StatefulWidget {
  const JsChannelScreen({super.key});

  @override
  State<JsChannelScreen> createState() => _JsChannelScreenState();
}

class _JsChannelScreenState extends State<JsChannelScreen> {
  late final WebViewController controller;

  String result = '';

  Future<void> sendMessage() async {
    controller.loadRequest(Uri.parse('https://qr처리페이지'));
  }

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..addJavaScriptChannel(
        'Channel',
        onMessageReceived: (JavaScriptMessage message) {
          final jsonString = message.message;
          final json = jsonDecode(jsonString);

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );

          setState(() {
            result = json['message'];
          });
        },
      )
      ..loadRequest(
          Uri.parse('https://sesac-flutter-6.github.io/website_sample/'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text(result),
            Expanded(
              child: WebViewWidget(controller: controller),
            ),
          ],
        ),
      ),
    );
  }
}
