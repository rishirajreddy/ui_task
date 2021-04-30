import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenTwo extends StatefulWidget {
  static String id='living_room';

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: scaffoldKey,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.arrow_back_ios_sharp,
                    color: Colors.black,
                    size: 24,
                  ),
                  Text(
                    'Air Condition',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Add',
                    iconData: FontAwesomeIcons.plus,
                    options: FFButtonOptions(
                      width: 100,
                      height: 40,
                      color: Color(0xFFEEF1F5),
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.purple,
                        fontWeight: FontWeight.w600,
                      ),
                      elevation: 10,
                      iconSize: 15,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 12,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'Living Room',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Open Sans',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300, width: 1)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'AC Running last:',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 18,
                            fontFamily: 'Open Sans',
                          ),
                        ),
                        Text('4 hours',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16))
                      ],
                    ),
                    Icon(
                      FontAwesomeIcons.toggleOn,
                      color: Colors.blueAccent,
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.purple, width: 10),
                shape: BoxShape.circle,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('16°C',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins')),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Room',
                      style: TextStyle(fontSize: 15, fontFamily: 'Poppins')),
                  Text('Temperature',
                      style: TextStyle(fontSize: 15, fontFamily: 'Poppins')),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 110,
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        color: Colors.white,
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade300,
                              child: Icon(
                                FontAwesomeIcons.cloudRain,
                                color: Colors.blueAccent,
                              ),
                            ),
                            Text('OFF',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                            Text(
                              'Light',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        color: Colors.white,
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade300,
                              child: Icon(FontAwesomeIcons.cloudRain,
                                  color: Colors.blueAccent),
                            ),
                            Text('ON',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                            Text('SmartTV', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 100,
              height: 65,
              decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  border: Border.all(width: 3, color: Colors.white10),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home_filled,
                    color: Colors.black,
                    size: 24,
                  ),
                  Icon(
                    Icons.mic_rounded,
                    color: Colors.black,
                    size: 24,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    child: Icon(
                      FontAwesomeIcons.plus,
                      size: 30,
                      color: Colors.purpleAccent,
                    ),
                  ),
                  Icon(
                    Icons.chat_sharp,
                    color: Colors.black,
                    size: 24,
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.black,
                    size: 24,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
