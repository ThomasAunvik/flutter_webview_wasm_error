
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PDFWidget extends HookWidget {
  final String data;

  const PDFWidget(this.data, { super.key });

  @override
  Widget build(BuildContext context) {
    final controller = useState(
      WebViewController()
        ..loadRequest(
          Uri.parse("data:application/pdf;base64,$data"),
        ),
    );

    return WebViewWidget(
      controller: controller.value,
    );
  }
}

class SiteWidget extends HookWidget {
  const SiteWidget({ super.key });

  @override
  Widget build(BuildContext context) {
    final controller = useState(
      WebViewController()
        ..loadRequest(
          Uri.parse("http://localhost:8080"),
        ),
    );

    return WebViewWidget(
      controller: controller.value,
    );
  }
}
