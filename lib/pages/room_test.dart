import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:matrix/matrix.dart';
import 'package:myapp/utils.dart';

class Roomba extends StatelessWidget {
  final Room room;

  const Roomba({super.key, required this.room});


  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // androidlarge1a45 (1:3)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // headQBX (1:12)
              padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 10*fem, 10*fem),
              width: double.infinity,
              height: 55*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x7f000000),
                    offset: Offset(0*fem, 4*fem),
                    blurRadius: 2*fem,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // namechatavatarandbackbuttonQKw (1:23)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 66*fem, 0*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // backbuttonJw7 (6:32)
                          width: 26*fem,
                          height: 26*fem,
                          child: Image.asset(
                            'assets/page-1/images/back-button.png',
                            width: 26*fem,
                            height: 26*fem,
                          ),
                        ),
                        SizedBox(
                          width: 10*fem,
                        ),
                        Container(
                          // useravatarr5T (1:11)
                          width: 35*fem,
                          height: 35*fem,
                          child: Image.asset(
                            'assets/page-1/images/user-avatar-Lvh.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10*fem,
                        ),
                        Container(
                          // nameofchatNJh (1:22)
                          margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                          child: Text(
                            'Назва чату',
                            style: safeGoogleFont (
                              'Inter',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // buttonsforcallandmenurDs (6:38)
                    width: 93*fem,
                    height: 25*fem,
                    child: Image.asset(
                      'assets/page-1/images/buttons-for-call-and-menu.png',
                      width: 93*fem,
                      height: 25*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupmyg1Ni1 (LT3mfuWy921jZwx5s2myg1)
              padding: EdgeInsets.fromLTRB(10*fem, 482*fem, 10*fem, 10*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupjspfsem (LT3kvbRoaQ6m3GQRp6JSPF)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                    width: double.infinity,
                    height: 94*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // messageCS9 (27:62)
                          left: 0*fem,
                          top: 36*fem,
                          child: Container(
                            width: 157*fem,
                            height: 58*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // useravatarivH (27:68)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                  width: 20*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/user-avatar-zqb.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // messageboxENq (27:63)
                                  padding: EdgeInsets.fromLTRB(10*fem, 0*fem, 2*fem, 5*fem),
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0x3f75704e),
                                    borderRadius: BorderRadius.only (
                                      topLeft: Radius.circular(10*fem),
                                      topRight: Radius.circular(10*fem),
                                      bottomRight: Radius.circular(10*fem),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x4c483f3f),
                                        offset: Offset(0*fem, 0*fem),
                                        blurRadius: 4*fem,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // tiH (27:64)
                                        'Ім’я користувача',
                                        style: safeGoogleFont (
                                          'Inter',
                                          fontSize: 11*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff75704e),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4*fem,
                                      ),
                                      Text(
                                        // LqB (27:65)
                                        'Повідомлення',
                                        style: safeGoogleFont (
                                          'Inter',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4*fem,
                                      ),
                                      Text(
                                        // pVT (27:67)
                                        '21:25',
                                        style: safeGoogleFont (
                                          'Inter',
                                          fontSize: 9*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff75704e),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // datem9o (27:69)
                          left: 0*fem,
                          top: 0*fem,
                          child: Container(
                            width: 340*fem,
                            height: 41*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // line15wB (27:70)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                                  width: 142*fem,
                                  height: 1*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0x6675704e),
                                  ),
                                ),
                                SizedBox(
                                  width: 1*fem,
                                ),
                                Container(
                                  // 149 (27:71)
                                  constraints: BoxConstraints (
                                    maxWidth: 54*fem,
                                  ),
                                  child: Text(
                                    'Понеділок\n08.05',
                                    textAlign: TextAlign.center,
                                    style: safeGoogleFont (
                                      'Inter',
                                      fontSize: 11*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff75704e),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 1*fem,
                                ),
                                Container(
                                  // line2Vzu (27:72)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                                  width: 142*fem,
                                  height: 1*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0x6675704e),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogrouptaytRtZ (LT3mMaiAi4fZ37zJmKtAyT)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                    width: double.infinity,
                    height: 94*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // messagemBj (15:56)
                          left: 183*fem,
                          top: 36*fem,
                          child: Container(
                            width: 157*fem,
                            height: 58*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // messageboxVNd (15:51)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                  padding: EdgeInsets.fromLTRB(10*fem, 0*fem, 2*fem, 5*fem),
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0x2675704e),
                                    borderRadius: BorderRadius.only (
                                      topLeft: Radius.circular(10*fem),
                                      topRight: Radius.circular(10*fem),
                                      bottomLeft: Radius.circular(10*fem),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3f000000),
                                        offset: Offset(0*fem, 0*fem),
                                        blurRadius: 4*fem,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // Yrh (15:50)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23*fem, 0*fem),
                                        child: Text(
                                          'Ім’я користувача',
                                          style: safeGoogleFont (
                                            'Inter',
                                            fontSize: 11*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff75704e),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4*fem,
                                      ),
                                      Text(
                                        // r6h (15:52)
                                        'Повідомлення',
                                        style: safeGoogleFont (
                                          'Inter',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4*fem,
                                      ),
                                      Container(
                                        // mzM (15:54)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                                        child: Text(
                                          '21:25',
                                          style: safeGoogleFont (
                                            'Inter',
                                            fontSize: 9*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff75704e),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // useravataru4y (15:49)
                                  width: 20*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/user-avatar.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // datecVB (24:58)
                          left: 0*fem,
                          top: 0*fem,
                          child: Container(
                            width: 340*fem,
                            height: 41*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // line1LRB (24:60)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                                  width: 146*fem,
                                  height: 1*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0x6675704e),
                                  ),
                                ),
                                SizedBox(
                                  width: 2*fem,
                                ),
                                Container(
                                  // Fo3 (24:57)
                                  constraints: BoxConstraints (
                                    maxWidth: 44*fem,
                                  ),
                                  child: Text(
                                    'Вівторок\n09.05',
                                    textAlign: TextAlign.center,
                                    style: safeGoogleFont (
                                      'Inter',
                                      fontSize: 11*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff75704e),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2*fem,
                                ),
                                Container(
                                  // line29tR (24:61)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                                  width: 146*fem,
                                  height: 1*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0x6675704e),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // createnewmessageJFX (1:27)
                    width: double.infinity,
                    height: 40*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // insertfilebuttonqFT (13:40)
                          margin: EdgeInsets.fromLTRB(0*fem, 2.5*fem, 0*fem, 2.5*fem),
                          padding: EdgeInsets.fromLTRB(5.83*fem, 5.83*fem, 5.83*fem, 5.83*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xff75704e),
                            borderRadius: BorderRadius.circular(17.5*fem),
                          ),
                          child: Center(
                            // whitepluswJV (13:42)
                            child: SizedBox(
                              width: 23.33*fem,
                              height: 23.33*fem,
                              child: Image.asset(
                                'assets/page-1/images/white-plus.png',
                                width: 23.33*fem,
                                height: 23.33*fem,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10*fem,
                        ),
                        Container(
                          // boxforwritingmessagequf (15:4)
                          padding: EdgeInsets.fromLTRB(15*fem, 10*fem, 15*fem, 10*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0x3375704e)),
                            borderRadius: BorderRadius.circular(15*fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // 9fT (15:3)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 100*fem, 0*fem),
                                child: Text(
                                  'Повідомлення...',
                                  style: safeGoogleFont (
                                    'Inter',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125*ffem/fem,
                                    color: Color(0x6675704e),
                                  ),
                                ),
                              ),
                              Container(
                                // emojiFyP (15:7)
                                width: 20*fem,
                                height: 20*fem,
                                child: Image.asset(
                                  'assets/page-1/images/emoji.png',
                                  width: 20*fem,
                                  height: 20*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10*fem,
                        ),
                        Container(
                          // sendmessagebuttonmB3 (15:12)
                          margin: EdgeInsets.fromLTRB(0*fem, 2.5*fem, 0*fem, 2.5*fem),
                          padding: EdgeInsets.fromLTRB(8.17*fem, 5.83*fem, 3.5*fem, 5.83*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xff75704e),
                            borderRadius: BorderRadius.circular(17.5*fem),
                          ),
                          child: Center(
                            // imgforsendFru (15:11)
                            child: SizedBox(
                              width: 23.33*fem,
                              height: 23.33*fem,
                              child: Image.asset(
                                'assets/page-1/images/img-for-send.png',
                                width: 23.33*fem,
                                height: 23.33*fem,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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