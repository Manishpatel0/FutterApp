// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(const MaterialApp(home: WebOne()));

class WebOne extends StatefulWidget {
  const WebOne({super.key});

  @override
  State<WebOne> createState() => _WebOneState();
}

class _WebOneState extends State<WebOne> {
  late final WebViewController controller;

  //@override
  //void initState() {
  //  super.initState();

  //  // #docregion webview_controller
  //  controller = WebViewController()
  //    ..setJavaScriptMode(JavaScriptMode.unrestricted)
  //    ..setBackgroundColor(const Color(0x00000000))
  //    ..setNavigationDelegate(
  //      NavigationDelegate(
  //        onProgress: (int progress) {
  //          // Update loading bar.
  //        },
  //        onPageStarted: (String url) {},
  //        onPageFinished: (String url) {},
  //        onWebResourceError: (WebResourceError error) {},
  //        onNavigationRequest: (NavigationRequest request) {
  //          if (request.url.startsWith('https://www.youtube.com/')) {
  //            return NavigationDecision.prevent;
  //          }
  //          return NavigationDecision.navigate;
  //        },
  //      ),
  //    )
  //    ..loadRequest(Uri.parse('https://flutter.dev'));
  //  // #enddocregion webview_controller
  //}

  // #docregion webview_widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('JustCleanDrycleaner')),
      body: SafeArea(
        child: WebView(initialUrl: "https://justcleandrycleaner.com/ ",
          javascriptMode: JavascriptMode.unrestricted,),
      ),
    );
  }
  // #enddocregion webview_widget
}