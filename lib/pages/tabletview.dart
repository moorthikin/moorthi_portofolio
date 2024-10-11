import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'dart:js' as js;

class TabletView extends StatefulWidget {
  const TabletView({super.key});

  @override
  State<TabletView> createState() => _TabletViewState();
}

class _TabletViewState extends State<TabletView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: const Text(
          "MK",
          style: TextStyle(
            fontFamily: "FFF Galaxy",
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 240, 255, 29),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: Container(
                height: 40,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.black,
                ),
                child: const Center(
                  child: Text(
                    "Contact!",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Container(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage('assets/background.jpg'), // Path to your image
                  fit: BoxFit.cover, // Cover the entire background
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 90.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: constraints.maxWidth *
                                0.09, // Responsive avatar size
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: constraints.maxWidth * 0.08,
                              backgroundImage:
                                  const AssetImage('assets/moorthi.jpg'),
                            ),
                          ),
                          const SizedBox(width: 50.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "I'm Moorthi",
                                style: TextStyle(
                                  fontFamily: "FFF Galaxy",
                                  color: Colors.white,
                                  fontSize: constraints.maxWidth *
                                      0.05, // Responsive text size
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Flutter Developer!",
                                style: TextStyle(
                                  fontFamily: "FFF Galaxy",
                                  color:
                                      const Color.fromARGB(255, 240, 255, 29),
                                  fontSize: constraints.maxWidth * 0.02,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 100.0),
                    Text(
                      "Highlights",
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "FFF Galaxy",
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: constraints.maxWidth * 0.02,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 100.0),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Container(
                                height: 300,
                                width: constraints.maxWidth *
                                    0.40, // Responsive width
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 235, 245, 128),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Stack(children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        12.0), // To clip the image inside the border radius
                                    child: Image.asset(
                                      'assets/container.jpg',
                                      height: 300,
                                      width: MediaQuery.of(context).size.width,
                                      fit: BoxFit
                                          .cover, // Cover the entire container
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: constraints.maxWidth * 0.002,
                                            top: 40.0),
                                        child: Image.asset(
                                          'assets/mobile.png',
                                          height: 70,
                                          width: constraints.maxWidth * 0.10,
                                          fit: BoxFit
                                              .cover, // Cover the entire container
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 40.0,
                                      ),
                                      Center(
                                        child: Text(
                                          "Transforming Ideas into \nHigh-Performance Mobile Applications",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: "FFF Galaxy",
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize:
                                                constraints.maxWidth * 0.01,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                              ),
                            ),
                            const SizedBox(width: 30.0),
                            Flexible(
                              child: Container(
                                height: 300,
                                width: constraints.maxWidth *
                                    0.40, // Responsive width
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 235, 245, 128),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Stack(children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        12.0), // To clip the image inside the border radius
                                    child: Image.asset(
                                      'assets/container.jpg',
                                      height: 300,
                                      width: MediaQuery.of(context).size.width,
                                      fit: BoxFit
                                          .cover, // Cover the entire container
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: constraints.maxWidth * 0.002,
                                            top: 40.0),
                                        child: Image.asset(
                                          'assets/goat.png',
                                          height: 70,
                                          width: constraints.maxWidth * 0.10,
                                          fit: BoxFit
                                              .cover, // Cover the entire container
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 40.0,
                                      ),
                                      Center(
                                        child: Text(
                                          "2 years\n Experience",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: "FFF Galaxy",
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize:
                                                constraints.maxWidth * 0.01,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: Container(
                                height: 300,
                                width: constraints.maxWidth *
                                    0.40, // Responsive width
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 235, 245, 128),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Stack(children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        12.0), // To clip the image inside the border radius
                                    child: Image.asset(
                                      'assets/container.jpg',
                                      height: 300,
                                      width: MediaQuery.of(context).size.width,
                                      fit: BoxFit
                                          .cover, // Cover the entire container
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: constraints.maxWidth * 0.002,
                                            top: 40.0),
                                        child: Image.asset(
                                          'assets/experience.png',
                                          height: 70,
                                          width: constraints.maxWidth * 0.10,
                                          fit: BoxFit
                                              .cover, // Cover the entire container
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20.0,
                                      ),
                                      Center(
                                        child: Text(
                                          "SDE-I\n\nGuru Information Technology PVT LTD\n\n Chennai",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: "FFF Galaxy",
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize:
                                                constraints.maxWidth * 0.01,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                              ),
                            ),
                            const SizedBox(width: 30.0),
                            Flexible(
                              child: Container(
                                height: 300,
                                width: constraints.maxWidth *
                                    0.40, // Responsive width
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 235, 245, 128),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Stack(children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        12.0), // To clip the image inside the border radius
                                    child: Image.asset(
                                      'assets/container.jpg',
                                      height: 300,
                                      width: MediaQuery.of(context).size.width,
                                      fit: BoxFit
                                          .cover, // Cover the entire container
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: constraints.maxWidth * 0.002,
                                            top: 40.0),
                                        child: Image.asset(
                                          'assets/projects.png',
                                          height: 70,
                                          width: constraints.maxWidth * 0.10,
                                          fit: BoxFit
                                              .cover, // Cover the entire container
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 40.0,
                                      ),
                                      Center(
                                        child: Text(
                                          "Projects Done\n\n 2",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: "FFF Galaxy",
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize:
                                                constraints.maxWidth * 0.01,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 80.0),
                    Text(
                      "Tech Stacks",
                      style: TextStyle(
                        fontFamily: "FFF Galaxy",
                        color: const Color.fromARGB(255, 240, 255, 29),
                        fontSize: constraints.maxWidth * 0.02,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 80.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //const SizedBox(width: 450.0),
                        Image.asset(
                          "assets/flutter.png",
                          height: 50,
                          width: constraints.maxWidth * 0.10,
                        ),
                        Image.asset(
                          "assets/firebase.png",
                          height: 50,
                          width: constraints.maxWidth * 0.10,
                        ),
                        Image.asset(
                          "assets/nodejs.png",
                          height: 50,
                          width: constraints.maxWidth * 0.10,
                        ),
                        Image.asset(
                          "assets/express.png",
                          color: Colors.white,
                          height: 50,
                          width: constraints.maxWidth * 0.10,
                        ),
                        Image.asset(
                          "assets/postgresql.png",
                          height: 50,
                          width: constraints.maxWidth * 0.10,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 80.0,
                    ),
                    Text(
                      "#Connect with Me",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "FFF Galaxy",
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: constraints.maxWidth * 0.01,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: constraints.maxWidth * 0.99,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FlutterSocialButton(
                                onTap: () {
                                  // _launchUrl;
                                  js.context.callMethod('open',
                                      ['https://github.com/moorthikin']);
                                },
                                mini: true,
                                iconColor: Colors.white,
                                buttonType: ButtonType
                                    .github, // Button type for different type buttons
                              ),
                              FlutterSocialButton(
                                onTap: () {
                                  // _launchUrl;
                                  js.context.callMethod('open',
                                      ['https://github.com/moorthikin']);
                                },
                                mini: true,
                                iconColor: Colors.white,
                                buttonType: ButtonType
                                    .email, // Button type for different type buttons
                              ),
                              FlutterSocialButton(
                                onTap: () {
                                  // _launchUrl;
                                  js.context.callMethod('open', [
                                    'https://www.linkedin.com/in/moorthi-l/'
                                  ]);
                                },
                                mini: true,
                                iconColor: Colors.white,
                                buttonType: ButtonType
                                    .linkedin, // Button type for different type buttons
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 80.0,
                    ),
                    Text(
                      "Coded by Moorthi 💛 ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        // fontFamily: "FFF Galaxy",
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: constraints.maxWidth * 0.01,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
