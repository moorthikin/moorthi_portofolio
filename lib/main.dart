import 'package:flutter/material.dart';
import 'package:moorthi_portofolio/Responsive/responsive.dart';
import 'package:moorthi_portofolio/pages/mobile_view.dart';
import 'package:moorthi_portofolio/pages/tabletview.dart';
import 'package:moorthi_portofolio/pages/webview.dart';

void main() {
  runApp(const MyPortofolio());
}

class MyPortofolio extends StatelessWidget {
  const MyPortofolio({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // routes: {
      //   "/": (context) =>  const MobileView(),
      // },
      debugShowCheckedModeBanner: false,
      home: //WebView()

          Responsive(
        desktop: WebView(),
        mobile: MobileView(),
        tablet: TabletView(),
      ),
    );
  }
}
