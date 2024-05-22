import 'dart:ui_web' as ui_web;

import 'package:flutter/material.dart';
import 'package:web/web.dart' as html;

class TestWebWidget extends StatelessWidget {
  TestWebWidget({super.key}) {
    ui_web.platformViewRegistry.registerViewFactory(
      "webview1000",
      (int viewId) => html.HTMLIFrameElement()
        ..id = 'webview1000'
        ..style.width = '100%'
        ..style.height = '100%'
        ..style.border = 'none',
    );
  }

  @override
  Widget build(BuildContext context) {
    return const HtmlElementView(viewType: "webview1000");
  }
}