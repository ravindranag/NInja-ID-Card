import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const NinjaCard());
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
          title: const Text(
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
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/ninja.png'),
                  radius: 100,
                ),
              ),
              const SizedBox(height: 40,),
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
              const SizedBox(height: 40),
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
              const SizedBox(height: 40),
              Text(
                  'CONTACT THIS NINJA',
                  style: Theme.of(context).textTheme.labelLarge?.apply(
                      color: Colors.blueGrey
                  )
              ),
              const SizedBox(height: 4),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.email,
                    // size: 30,
                  ),
                  const SizedBox(width: 10,),
                  Text(
                      'ravindranag52@gmail.com',
                    style: Theme.of(context).textTheme.titleLarge,
                  )
                ],
              ),
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.thumb_up
                          ),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(20),
                          elevation: 0
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Text(
                        '20',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Row(
                    children:[
                      ElevatedButton(
                        onPressed: () {},
                        child: const Icon(
                            Icons.thumb_down
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(20),
                            elevation: 0
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Text(
                        '20',
                        style: Theme.of(context).textTheme.titleLarge,
                      )
                    ]
                  )
                ],
              ),
            ]
          ),
        )
      )
    );
  }
}
