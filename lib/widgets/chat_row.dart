import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils.dart';

class ChatRow extends StatelessWidget {
  final double fem;
  final double ffem;

  final String name;
  final CircleAvatar image;
  final String lastMessage;
  final String date;

  const ChatRow(
      {super.key,
      required this.fem,
      required this.ffem,
      required this.name,
      required this.image,
      required this.lastMessage,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
        // message1sTB (1:37)
      margin: EdgeInsets.only(top: 5 * fem),
        padding: EdgeInsets.fromLTRB(21 * fem, 1 * fem, 8 * fem, 1 * fem),
        width: double.infinity,
        height: 62 * fem,
        decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Color(0x3375704e)
              )),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // imgandnameyFK (1:40)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 59 * fem, 0 * fem),
              height: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // userbuttomhh7 (1:38)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 10 * fem, 0 * fem),
                    width: 53 * fem,
                    height: 53 * fem,
                    child: image,
                  ),
                  SizedBox(
                    // nameandmassageeuB (1:39)
                    width: 154 * fem,
                    height: 35 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // bJd (1:30)
                          left: 0 * fem,
                          top: 19 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 97 * fem,
                              height: 16 * fem,
                              child: Text(
                                lastMessage,
                                style: safeGoogleFont(
                                  'Inter',
                                  fontSize: 13 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125 * ffem / fem,
                                  color: const Color(0xff76797e),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // F8H (1:29)
                          left: 0 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 154 * fem,
                              height: 20 * fem,
                              child: Text(
                                name,
                                style: safeGoogleFont(
                                  'Inter',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2125 * ffem / fem,
                                  color: const Color(0xff000000),
                                ),
                                maxLines: 1
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
            Text(
              // datej3T (1:31)
              date,
              style: safeGoogleFont(
                'Inter',
                fontSize: 12 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.2125 * ffem / fem,
                color: const Color(0xff76797e),
              ),
              maxLines: 1
            ),
          ],
        ),
    );
  }
}
