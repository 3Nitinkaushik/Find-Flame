import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:chat_screen_flutter/Roundimagebuton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chat_screen_flutter/Roundrectanglebuttton.dart';
import 'personmessage.dart';

void main() {
  runApp(const Chatscreen());
}

class Chatscreen extends StatefulWidget {
  const Chatscreen({Key? key}) : super(key: key);

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: const Padding(
              padding:  EdgeInsets.only(left: 8.0),
              child: Roundimagebutton(
                  image: AssetImage(
                      "Images/personimages/christopher-campbell.jpg")),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.sliders,
                  color: Colors.black38,
                  weight: 100,
                ),
              ),
            ],
            title: Text(
              "Find Flames",
              style: GoogleFonts.nunito(
                  textStyle:
                      const TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
            ),
            centerTitle: true,
            titleTextStyle: const TextStyle(color: Colors.pinkAccent),
          ),
          body: ListView(
            children: [
              SizedBox(
                height: 145,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    RoundRectangleimage(
                      Image: const AssetImage(
                          "Images/Rectangleimages/Rectangle 453.png"),
                      Child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Image(
                              image: AssetImage("Images/Iconspng/Vector.png")),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "20",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Textchild: Text(
                        "Likes",
                        style: GoogleFonts.nunito(
                            textStyle: const TextStyle(fontSize: 12)),
                      ),
                    ),
                    RoundRectangleimage(
                      Image: const AssetImage(
                          "Images/Rectangleimages/Rectangle 454.png"),
                      Textchild: Row(
                        children: [
                          Text(
                            "Tony",
                            style: GoogleFonts.nunito(
                                textStyle: const TextStyle(fontSize: 12)),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Icon(
                            Icons.verified,
                            color: Color(0xff4D72F4),
                            size: 10,
                          )
                        ],
                      ),
                    ),
                    RoundRectangleimage(
                      Image: const AssetImage(
                          "Images/Rectangleimages/Rectangle 458.png"),
                      Textchild: Row(
                        children: [
                          Text(
                            "James",
                            style: GoogleFonts.nunito(
                                textStyle: const TextStyle(fontSize: 12)),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Icon(
                            Icons.verified,
                            color: Color(0xff4D72F4),
                            size: 10,
                          )
                        ],
                      ),
                    ),
                    RoundRectangleimage(
                      Image: const AssetImage(
                          "Images/Rectangleimages/Rectangle 459.png"),
                      Textchild: Row(
                        children: [
                          Text(
                            "Jordan",
                            style: GoogleFonts.nunito(
                                textStyle: const TextStyle(fontSize: 12)),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Icon(
                            Icons.verified,
                            color: Color(0xff4D72F4),
                            size: 10,
                          )
                        ],
                      ),
                    ),
                    RoundRectangleimage(
                      Image: const AssetImage(
                          "Images/Rectangleimages/Rectangle 455.jpg"),
                      Textchild: Row(
                        children: [
                          Text(
                            "Tim",
                            style: GoogleFonts.nunito(
                                textStyle: const TextStyle(fontSize: 12)),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Icon(
                            Icons.verified,
                            color: Color(0xff4D72F4),
                            size: 10,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 12.0, bottom: 12, left: 18, right: 18),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(0.0, 0),
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset:  Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(image: AssetImage("Images/Iconspng/Search.png")),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                          width: 304,
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search",
                                hintStyle: GoogleFonts.nunito(
                                    textStyle: const TextStyle(
                                        fontSize: 17, color: Colors.black45))),
                          ))
                    ],
                  ),
                ),
              ),
              const personmessage(
                  Image: AssetImage("Images/personimages/andrei-damian.jpg"),
                  name: "Jordan",
                  message: "Hii",
                  messagecount: "1"),
              const personmessage(
                  Image: AssetImage("Images/personimages/Person3.jpg"),
                  name: "Tim",
                  message: "Hii!",
                  messagecount: "0"),
              const personmessage(
                  Image: AssetImage("Images/personimages/Person4.jpg"),
                  name: "James",
                  message: "Typing..",
                  messagecount: "9+"),
             const personmessage(
                  Image: AssetImage("Images/personimages/Person5.png"),
                  name: "Tony",
                  message: "Hii",
                  messagecount: "2")
            ],
          ),
          bottomNavigationBar: Container(
            height: 80,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    child: const Image(image: AssetImage("Images/Iconspng/Home.png"),)),

                GestureDetector(
                    child: const Image(image: AssetImage("Images/Iconspng/globalsearch.png"))),
                GestureDetector(
                    child: const Image(image: AssetImage("Images/Iconspng/calendaredit.png"))),
                GestureDetector(
                    child: const Image(image:  AssetImage("Images/Iconspng/messages3.png")))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
