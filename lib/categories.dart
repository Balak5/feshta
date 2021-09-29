//import 'package:feshta/popular_events_hero_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesWidget extends StatelessWidget {
  final String id;
  final String name;
  final String image;

  CategoriesWidget({required this.id, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
//      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => popularHeroWidget(eventName: eventName, eventType: eventType, image: image,))),
      child: Stack(
        children: [
          Hero(
              tag: image,
              child: Container(
                height: 200,
                width: 170,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/$image.jpg'))),
              )),
          Positioned(
            bottom: 40,
            left: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$name',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}