import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:moorthi_portofolio/components/constants.dart';
import 'dart:js' as js;

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  // final Uri _url = Uri.parse('https://pub.dev/packages/url_launcher');
  // Future<void> _launchUrl() async {
  //   if (!await launchUrl(_url)) {
  //     throw Exception('Could not launch $_url');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height * 0.05;
    // double width = MediaQuery.of(context).size.width * 0.60;
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Image.asset("assets/mountain.jpg"),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "M",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: primary),
                    ),
                    addBoldText("oorthi")
                  ],
                ),
              ),
              addHeightBox(70),
              Text(
                "Hi! I am Moorthi.",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: additional),
              ),
              Text(
                "I am a Flutter Developer!.\nI can provide clean code & Pixel perfect design\nI also make Web Designing",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: additional),
              ),
              addHeightBox(12),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Row(
                  //
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: FlutterSocialButton(
                        onTap: () {
                          // _launchUrl;
                          js.context.callMethod(
                              'open', ['https://github.com/moorthikin']);
                        },
                        mini: true,
                        iconColor: primary,
                        buttonType: ButtonType
                            .github, // Button type for different type buttons
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: FlutterSocialButton(
                        onTap: () {
                          js.context.callMethod('open', [
                            'https://www.linkedin.com/in/moorthi-l-66a83a260/'
                          ]);
                        },
                        mini: true,
                        //  iconColor: primary,
                        buttonType: ButtonType
                            .linkedin, // Button type for different type buttons
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: FlutterSocialButton(
                        onTap: () {
                          // _sendingMails();
                        },
                        mini: true,
                        //  iconColor: primary,
                        buttonType: ButtonType
                            .email, // Button type for different type buttons
                      ),
                    ),
                  ],
                ),
              ),
              addHeightBox(9),
              // Divider(
              //   thickness: 2,
              //   color: primary,
              // ),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromARGB(255, 137, 138, 138),
                child: Column(
                  children: [
                    addBoldText("About Me!"),
                    addHeightBox(18),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 2),
                          child: SizedBox(
                              height: 200,
                              width: 200,
                              child: Image.asset("assets/moorthi.jpeg")),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 120, right: 12),
                          child: Column(
                            children: [
                              addBoldText("Hi I'm Moorthi!"),
                              const Text("Name : Moorthi"),
                              const SizedBox(width: 20.0),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
