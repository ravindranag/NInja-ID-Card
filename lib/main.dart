import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(NinjaCard());
}

class NinjaCard extends StatelessWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ninja ID Card',
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              'Ninja ID Card',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Inter',
              fontWeight: FontWeight.bold
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'NAME',
                  style: Theme.of(context).textTheme.labelLarge?.apply(
                    color: Colors.blueGrey
                  )
              ),
              Text(
                  'Ravindra Nag',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.black
                  )
              ),
              SizedBox(height: 20),
              Text(
                  'CURRENT NINJA LEVEL',
                  style: Theme.of(context).textTheme.labelLarge?.apply(
                      color: Colors.blueGrey
                  )
              ),
              Text(
                  '8',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.black
                  )
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email,
                    // size: 30,
                  ),
                  SizedBox(width: 10,),
                  Text(
                      'ravindranag52@gmail.com',
                    style: Theme.of(context).textTheme.titleLarge,
                  )
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}
