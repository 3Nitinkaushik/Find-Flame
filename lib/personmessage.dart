import 'package:chat_screen_flutter/pink%20circle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Roundimagebuton.dart';

class personmessage extends StatelessWidget {
  const personmessage({required this.Image,required this.name,required this.message,required this.messagecount,
    super.key,
  });
  final ImageProvider Image;
  final String name;
  final String message;
  final String messagecount;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){},
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 12),
            width: 60,
            height: 60,
            child: Roundimagebutton(
                image:Image
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.nunito(
                          textStyle: const TextStyle(fontSize: 20)),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Icon(
                      Icons.verified,
                      color:  Color(0xff4D72F4),
                      size: 16.67,
                    )
                  ],
                ),
                Text(
                  message,
                  style:  GoogleFonts.nunito(
                      textStyle: TextStyle(fontSize: 16,color: message!="Typing.."?Colors.black:Colors.pink, fontStyle: message!="Typing.."?FontStyle.normal:FontStyle.italic),),
                )
              ],
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.only(right: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [const Text("13:10"), const SizedBox(height: 4,),messagecount!='0'?PinkCircleNumber(number: messagecount):Container()],
            ),
          )
        ],
      ),
    );
  }
}
