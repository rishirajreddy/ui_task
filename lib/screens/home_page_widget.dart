import 'package:new_tasks_ui/screens/screen4.dart';
import 'package:new_tasks_ui/screens/screen5.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screen2.dart';
import 'screen3.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                color: Color(0xFFEEEEEE),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 200, 0),
                    child: IconButton(
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                      icon: Icon(
                        Icons.grid_view,
                        color: Colors.black,
                        size: 35,
                      ),
                      iconSize: 35,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(1, 0, 0, 0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, ScreenThree.id);
                        },
                        icon: Icon(
                          Icons.notifications,
                          color: Color(0xFFB7B1B1),
                          size: 30,
                        ),
                        iconSize: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 190,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment(-0.05, -0.75),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(9, 0, 2, 0),
                            child: Text(
                              'Hello Surja Sen!',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Source Sans Pro',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            '12 January 2021',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Add',
                      iconData: FontAwesomeIcons.plus,
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: Color(0xFFE3E6EB),
                        textStyle: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF1D1C1C),
                        ),
                        elevation: 7,
                        iconSize: 15,
                        iconColor: Color(0xFFB222BA),
                        borderSide: BorderSide(
                          color: Color(0xFFC8C1C1),
                          width: 1,
                        ),
                        borderRadius: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 5, color: Colors.blueAccent)),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, ScreenTwo.id);
                              },
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                                child: Text(
                                  'Living  Room',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Lato',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(9, 5, 0, 0),
                              child: Text(
                                '10 Devices',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Open Sans',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: IconButton(
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                          icon: FaIcon(
                            FontAwesomeIcons.edit,
                            color: Colors.black,
                            size: 20,
                          ),
                          iconSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 60,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'http://icons.iconarchive.com/icons/harwen/simple/256/Audio-CD-icon.png',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment(0, -0.22),
                          child: Text(
                            'Don\'t Let Me Go',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.92, 0.26),
                          child: Text(
                            'by The Fray',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_left,
                    color: Color(0xFFA8A2A2),
                    size: 50,
                  ),
                  Icon(
                    Icons.pause,
                    color: Colors.black,
                    size: 24,
                  ),
                  Icon(
                    Icons.arrow_right,
                    color: Color(0xFF262525),
                    size: 50,
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, ScreenFour.id);
                        },
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Color(0xFF42A5F5),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.snowflake,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child: Text(
                                      'Air Conditioner',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Lato',
                                        color: Color(0xFFB9B1B1),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '16°C',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFFEDE9E9),
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  )
                                ],
                              ),
                              FaIcon(
                                FontAwesomeIcons.toggleOn,
                                color: Color(0xFFEDE9E9),
                                size: 24,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, ScreenFive.id);
                        },
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Color(0xFFEDE9E9),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.wifi,
                                    color: Color(0xFF262525),
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child: Text(
                                      'WiFiRouter',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Lato',
                                        color: Color(0xFF262525),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '16°C',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF262525),
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  )
                                ],
                              ),
                              FaIcon(
                                FontAwesomeIcons.toggleOn,
                                color: Color(0xFF262525),
                                size: 24,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 100,
              height: 85,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
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
                  IconButton(
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.plus,
                      color: Color(0xFFDC2EBF),
                      size: 50,
                    ),
                    iconSize: 50,
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
