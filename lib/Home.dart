
import 'dart:ui';

import 'package:flutter/material.dart';

class MusicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://thumbs.dreamstime.com/b/taj-mahal-agra-india-morning-light-reflection-water-uttar-pradesh-108954918.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color.fromARGB(255, 199, 184, 184),
                        width: 5,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://thumbs.dreamstime.com/b/taj-mahal-agra-india-morning-light-reflection-water-uttar-pradesh-108954918.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Hi! I am Shakib',
                    style: TextStyle(
                      color: Color.fromARGB(255, 19, 23, 27),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 20),
                      Icon(
                        Icons.skip_previous,
                        size: 100,
                        color: Colors.blue,
                      ),
                      RotationTransition(
                        turns: AlwaysStoppedAnimation(1.0),
                        child: Icon(
                          Icons.play_circle_fill,
                          size: 100,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.skip_next,
                        size: 100,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
