import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  myAchieve(num, type) {
    return Row(
      children: [
        Text(num, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(type),
        )
      ],
    );
  }

  MySpe(icon, tech) {
    return Container(
      width: 105,
      height: 114,
      child: Card(
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.amber,
              ),
              SizedBox(
                height: 05,
              ),
              Text(
                tech,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
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
        backgroundColor: Color.fromARGB(255, 15, 15, 15),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: PopupMenuButton(
              color: Colors.black,
              icon: Icon(Icons.menu),
              itemBuilder: ((context) => [
                    PopupMenuItem(
                      child: TextButton(
                        child: Text(
                          'Project',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'project');
                        },
                      ),
                      value: 1,
                    ),
                    PopupMenuItem(
                      child: TextButton(
                        child: Text(
                          'About Me',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'about');
                        },
                      ),
                      value: 2,
                    ),
                  ])),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SlidingSheet(
            elevation: 8,
            cornerRadius: 50,
            snapSpec: const SnapSpec(
              // Enable snapping. This is true by default.
              snap: true,
              // Set custom snapping points.
              snappings: [0.38, 0.7, 1.0],
              // Define to what the snappings relate to. In this case,
              // the total available space that the sheet can expand to.
              positioning: SnapPositioning.relativeToAvailableSpace,
            ),
            // The body widget will be displayed under the SlidingSheet
            // and a parallax effect can be applied to it.
            body: Container(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 0),
                    child: ShaderMask(
                        shaderCallback: (rect) {
                          return LinearGradient(
                                  begin: Alignment.center,
                                  end: Alignment.bottomCenter,
                                  colors: [Colors.black, Colors.transparent])
                              .createShader(
                                  Rect.fromLTRB(0, 0, rect.width, rect.height));
                        },
                        blendMode: BlendMode.dstIn,
                        child: Image.asset(
                          'assets/img.png',
                          height: 400,
                          fit: BoxFit.contain,
                        )),
                  ),
                  Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.5),
                      child: Column(children: [
                        Text(
                          'YOGESH SINGH YADAV',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Android Developer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ]))
                ],
              ),
            ),
            builder: (context, state) {
              // This is the content of the sheet that will get
              // scrolled, if the content is bigger than the available
              // height of the sheet.
              return Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myAchieve('78', ' Projects'),
                        myAchieve('45', ' Clients'),
                        myAchieve('99', ' Messages'),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Specialized In',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MySpe(Icons.android, 'Android'),
                            MySpe(Icons.android, 'Android'),
                            MySpe(Icons.android, 'Android'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MySpe(Icons.android, 'Android'),
                            MySpe(Icons.android, 'Android'),
                            MySpe(Icons.android, 'Android'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MySpe(Icons.android, 'Android'),
                            MySpe(Icons.android, 'Android'),
                            MySpe(Icons.android, 'Android'),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              );
            }));
  }
}
