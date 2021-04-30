import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenThree extends StatefulWidget {
static String id = 'screen_three';
  @override
  _ScreenThreeState createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  double _currentSliderValue = 10;
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
              width: 100,
              height: 60,
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
                    'Light(2)',
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
                        color: Color(0xFF262525),
                        fontWeight: FontWeight.w600,
                      ),
                      elevation: 10,
                      iconSize: 15,
                      iconColor: Color(0xFFC70FCF),
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
            Container(
              width: 100,
              height: 60,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Living Room',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Table Lamp',
                    iconData: Icons.arrow_downward_rounded,
                    options: FFButtonOptions(
                      width: 145,
                      height: 40,
                      color: Color(0xFFD1CDCD),
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF262525),
                      ),
                      elevation: 7,
                      iconSize: 15,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 2,
                      ),
                      borderRadius: 15,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 100,
              height: 70,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Table Lamp is on  Last:',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '4 Hours',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  FaIcon(
                    FontAwesomeIcons.toggleOn,
                    color: Colors.blue,
                    size: 28,
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.purpleAccent,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/bulb.png',
                      ),
                      backgroundColor: Color(0xFFEEEEEE),
                      radius: 30,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('OFF'),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 20,
                          inactiveTrackColor: Color(0xFFEEEEEE),
                          activeTrackColor: Colors.blue,
                          thumbColor: Colors.blueAccent,
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                          value: _currentSliderValue,
                          min: 5,
                          max: 100,
                          label: _currentSliderValue.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderValue = value;
                            });
                          },
                        ),
                      ),
                      Text('100%')
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    border: Border.all(color: Color(0xFFEEEEEE), width: 2),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Schedule',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          FaIcon(
                            FontAwesomeIcons.plus,
                            color: Color(0xFFE31FDF),
                            size: 24,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'From',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF525050),
                            ),
                          ),
                          Text(
                            'To',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: Text(
                            '6:59 AM',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text(
                              '8:59 PM',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 100,
              height: 65,
              decoration: BoxDecoration(
                  color: Colors.white,
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
