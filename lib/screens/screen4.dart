import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenFour extends StatefulWidget {
  static String id = 'screen_four';

  @override
  _ScreenFourState createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  double _currentSliderValue = 10;

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
              width: 100,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Icon(
                      Icons.arrow_back_ios_sharp,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      'Energy Saving',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 100,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'January',
                    iconData: Icons.arrow_downward_rounded,
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Color(0xFFE9E5E5),
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF1F1D1D),
                      ),
                      elevation: 3,
                      iconSize: 15,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 2,
                      ),
                      borderRadius: 15,
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Device',
                    iconData: Icons.arrow_downward_rounded,
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Color(0xFFE9E5E5),
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
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Expenses from Device',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Today',
                  iconData: FontAwesomeIcons.arrowCircleDown,
                  options: FFButtonOptions(
                    width: 110,
                    height: 40,
                    color: Color(0xFFEAEBED),
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Source Sans Pro',
                      color: Color(0xFF181717),
                    ),
                    elevation: 4,
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                width: 100,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.airplanemode_active,
                      color: FlutterFlowTheme.primaryColor,
                      size: 24,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Light (\$26)',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 17,
                          ),
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Color(0xFFEEEEEE),
                            activeTrackColor: Colors.blue,
                            thumbColor: Colors.blueAccent,
                            overlayColor: Color(0x29EB1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 10.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0),
                          ),
                          child: Slider(
                            value: _currentSliderValue,
                            min: 5,
                            max: 100,
                            divisions: 5,
                            label: _currentSliderValue.round().toString(),
                            onChanged: (double value) {
                              setState(() {
                                _currentSliderValue = value;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                    Text('20%'),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFFC3C1C1),
                      size: 24,
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 100,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FaIcon(
                    FontAwesomeIcons.snowflake,
                    color: FlutterFlowTheme.primaryColor,
                    size: 24,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Air Conditioner (\$32)',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xFFEEEEEE),
                          activeTrackColor: Colors.blue,
                          thumbColor: Colors.blueAccent,
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 10.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                          value: _currentSliderValue,
                          min: 5,
                          max: 100,
                          divisions: 5,
                          label: _currentSliderValue.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderValue = value;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                  Text('30%'),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFFC3C1C1),
                    size: 24,
                  )
                ],
              ),
            ),
            Container(
              width: 100,
              height: 85,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.router,
                    color: FlutterFlowTheme.primaryColor,
                    size: 24,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'WiFi Router (\$14)',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xFFEEEEEE),
                          activeTrackColor: Colors.blue,
                          thumbColor: Colors.blueAccent,
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 10.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                          value: _currentSliderValue,
                          min: 5,
                          max: 100,
                          divisions: 5,
                          label: _currentSliderValue.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderValue = value;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                  Text('20%'),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFFC3C1C1),
                    size: 24,
                  )
                ],
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
