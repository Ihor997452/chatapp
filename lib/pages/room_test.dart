import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:matrix/matrix.dart';
import 'package:myapp/pages/room/room.dart';
import 'package:myapp/util/colors.dart';
import 'package:myapp/utils.dart';

class Roomba extends StatelessWidget {
  final RoomController controller;

  const Roomba(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          title: Text(
            controller.widget.room.getLocalizedDisplayname(),
            overflow: TextOverflow.ellipsis,
          ),
          leading: SizedBox(
            height: double.infinity,
            child: IconButton(
              icon: Image.asset('assets/images/back-button.png'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          leadingWidth: 34 * fem,
          actions: <Widget>[
            SizedBox(
                width: 45 * fem,
                height: double.infinity,
                child:
                    const Icon(Icons.video_call, color: AppColors.accentColor)),
            SizedBox(
                width: 30 * fem,
                height: 20 * fem,
                child: const Icon(Icons.call, color: AppColors.accentColor)),
            SizedBox(
                width: 45 * fem,
                height: double.infinity,
                child: const Icon(Icons.menu, color: AppColors.accentColor)),
          ],
        ),
        body: SingleChildScrollView(
            child: SizedBox(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(
                      10 * fem, 482 * fem, 10 * fem, 10 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 10 * fem),
                        width: double.infinity,
                        height: 94 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0 * fem,
                              top: 36 * fem,
                              child: SizedBox(
                                width: 157 * fem,
                                height: 58 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                      width: 20 * fem,
                                      height: 20 * fem,
                                      child: Image.asset(
                                        'assets/images/user-avatar-zqb.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          10 * fem, 0 * fem, 2 * fem, 5 * fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0x3f75704e),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10 * fem),
                                          topRight: Radius.circular(10 * fem),
                                          bottomRight:
                                              Radius.circular(10 * fem),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0x4c483f3f),
                                            offset: Offset(0 * fem, 0 * fem),
                                            blurRadius: 4 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ім’я користувача',
                                            style: safeGoogleFont(
                                              'Inter',
                                              fontSize: 11 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2125 * ffem / fem,
                                              color: const Color(0xff75704e),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4 * fem,
                                          ),
                                          Text(
                                            'Повідомлення',
                                            style: safeGoogleFont(
                                              'Inter',
                                              fontSize: 16 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2125 * ffem / fem,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4 * fem,
                                          ),
                                          Text(
                                            '21:25',
                                            style: safeGoogleFont(
                                              'Inter',
                                              fontSize: 9 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2125 * ffem / fem,
                                              color: const Color(0xff75704e),
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
                              left: 0 * fem,
                              top: 0 * fem,
                              child: SizedBox(
                                width: 340 * fem,
                                height: 41 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 14 * fem),
                                      width: 142 * fem,
                                      height: 1 * fem,
                                      decoration: const BoxDecoration(
                                        color: Color(0x6675704e),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 1 * fem,
                                    ),
                                    Container(
                                      constraints: BoxConstraints(
                                        maxWidth: 54 * fem,
                                      ),
                                      child: Text(
                                        'Понеділок\n08.05',
                                        textAlign: TextAlign.center,
                                        style: safeGoogleFont(
                                          'Inter',
                                          fontSize: 11 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125 * ffem / fem,
                                          color: const Color(0xff75704e),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 1 * fem,
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 14 * fem),
                                      width: 142 * fem,
                                      height: 1 * fem,
                                      decoration: const BoxDecoration(
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
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 15 * fem),
                        width: double.infinity,
                        height: 94 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 183 * fem,
                              top: 36 * fem,
                              child: SizedBox(
                                width: 157 * fem,
                                height: 58 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                      padding: EdgeInsets.fromLTRB(
                                          10 * fem, 0 * fem, 2 * fem, 5 * fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0x2675704e),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10 * fem),
                                          topRight: Radius.circular(10 * fem),
                                          bottomLeft: Radius.circular(10 * fem),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0x3f000000),
                                            offset: Offset(0 * fem, 0 * fem),
                                            blurRadius: 4 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 23 * fem, 0 * fem),
                                            child: Text(
                                              'Ім’я користувача',
                                              style: safeGoogleFont(
                                                'Inter',
                                                fontSize: 11 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2125 * ffem / fem,
                                                color: const Color(0xff75704e),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4 * fem,
                                          ),
                                          Text(
                                            'Повідомлення',
                                            style: safeGoogleFont(
                                              'Inter',
                                              fontSize: 16 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2125 * ffem / fem,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4 * fem,
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 8 * fem, 0 * fem),
                                            child: Text(
                                              '21:25',
                                              style: safeGoogleFont(
                                                'Inter',
                                                fontSize: 9 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2125 * ffem / fem,
                                                color: const Color(0xff75704e),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20 * fem,
                                      height: 20 * fem,
                                      child: Image.asset(
                                        'assets/images/user-avatar.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0 * fem,
                              top: 0 * fem,
                              child: SizedBox(
                                width: 340 * fem,
                                height: 41 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 14 * fem),
                                      width: 146 * fem,
                                      height: 1 * fem,
                                      decoration: const BoxDecoration(
                                        color: Color(0x6675704e),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2 * fem,
                                    ),
                                    Container(
                                      constraints: BoxConstraints(
                                        maxWidth: 44 * fem,
                                      ),
                                      child: Text(
                                        'Вівторок\n09.05',
                                        textAlign: TextAlign.center,
                                        style: safeGoogleFont(
                                          'Inter',
                                          fontSize: 11 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125 * ffem / fem,
                                          color: const Color(0xff75704e),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2 * fem,
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 14 * fem),
                                      width: 146 * fem,
                                      height: 1 * fem,
                                      decoration: const BoxDecoration(
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
                      SizedBox(
                        width: double.infinity,
                        height: 40 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 2.5 * fem, 0 * fem, 2.5 * fem),
                              padding: EdgeInsets.fromLTRB(5.83 * fem,
                                  5.83 * fem, 5.83 * fem, 5.83 * fem),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xff75704e),
                                borderRadius: BorderRadius.circular(17.5 * fem),
                              ),
                              child: Center(
                                child: SizedBox(
                                  width: 23.33 * fem,
                                  height: 23.33 * fem,
                                  child: Image.asset(
                                    'assets/images/white-plus.png',
                                    width: 23.33 * fem,
                                    height: 23.33 * fem,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10 * fem,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(
                                  15 * fem, 10 * fem, 15 * fem, 10 * fem),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0x3375704e)),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 100 * fem, 0 * fem),
                                    child: Text(
                                      'Повідомлення...',
                                      style: safeGoogleFont(
                                        'Inter',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125 * ffem / fem,
                                        color: const Color(0x6675704e),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20 * fem,
                                    height: 20 * fem,
                                    child: Image.asset(
                                      'assets/images/emoji.png',
                                      width: 20 * fem,
                                      height: 20 * fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10 * fem,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 2.5 * fem, 0 * fem, 2.5 * fem),
                              padding: EdgeInsets.fromLTRB(8.17 * fem,
                                  5.83 * fem, 3.5 * fem, 5.83 * fem),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xff75704e),
                                borderRadius: BorderRadius.circular(17.5 * fem),
                              ),
                              child: Center(
                                child: SizedBox(
                                  width: 23.33 * fem,
                                  height: 23.33 * fem,
                                  child: Image.asset(
                                    'assets/images/img-for-send.png',
                                    width: 23.33 * fem,
                                    height: 23.33 * fem,
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
        )
        ),
    );
  }
}
