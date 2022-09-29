import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProject extends StatefulWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  myPro(lang, title, discription, star) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: Color(0xff252525),
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(lang, style: TextStyle(color: Colors.white, fontSize: 18)),
              SizedBox(height: 10),
              Text(title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              Text(discription,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  )),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 18,
                  ),
                  SizedBox(width: 5),
                  Text(star, style: TextStyle(color: Colors.white70)),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text('PROJECTS'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              myPro('FLUTTER', 'Click 2 Open', 'An online Compiler ', '10'),
              myPro('DART', 'Click 2 Open', 'An online Compiler ', '10'),
              myPro('C++', 'Click 2 Open', 'An online Compiler ', '07'),
              myPro('JAVA', 'Click 2 Open', 'An online Compiler ', '10'),
              myPro('PYTHON', 'Click 2 Open', 'An online Compiler ', '09'),
            ],
          ),
        ),
      ),
    );
  }
}
