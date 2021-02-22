import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipPath(
                clipper: CustomShape(),
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 90),
                    child: Text(
                      'MY TESTS',
                      style: TextStyle(
                        color: Colors.blueAccent[400],
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Text("Available Tests",
                style: TextStyle(
                  color: Colors.blueAccent[400],
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            SizedBox(height: 10,),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.navigate_before,
                      size: 55,
                      color: Colors.blueAccent[400],
                    ),
                      Container(
                        width: 280,
                        height: 420,
                        decoration: BoxDecoration(
                          boxShadow: [BoxShadow(
                            color: Colors.black12,
                            blurRadius: 20,
                          )],
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(30))
                        ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 50),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('3',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 180,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Text('rd',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 50,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text("MODULE",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 50,
                                  fontWeight: FontWeight.w800,
                                  height: -1,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(20),
                                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 100/4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[100],
                                ),
                                child: Column(
                                  children: [
                                    Text("CBSE STD VII",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 7,
                                        fontWeight: FontWeight.w900,
                                    )),
                                    SizedBox(height: 5,),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 5*1.5, vertical: 5 /4,),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blue,
                                      ),
                                      child: Text('Edit'),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20*1.5, vertical: 20 /4,),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue,
                                ),
                                child: Text('TAKE TEST'),
                              ),
                            ],
                          ),
                      ),
                    Icon(Icons.navigate_next,
                      size: 55,
                      color: Colors.blueAccent[400],
                    ),
                  ],
                ),
              ),
            ),
            ClipPath(
              clipper: CustomShape1(),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 65,vertical: 65),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        boxShadow: [BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                        )],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Text("Test Results",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20*1.5, vertical: 20 /4,),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                          ),
                          child: Text('View'),
                        ),
                      ],
                    ),
                  ),
                ),),
              ),
          ],
        ),
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 130);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height - 130);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CustomShape1 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, 40);
    path.quadraticBezierTo(size.width/2, 0, size.width, 40);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

