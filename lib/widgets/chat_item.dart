import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:matrix/matrix.dart';
import 'package:myapp/util/colors.dart';
import 'package:myapp/widgets/avatar.dart';

import '../utils.dart';

class ChatItem extends StatelessWidget {
  final double fem;
  final double ffem;

  final String name;
  final Avatar avatar;
  final String lastMessage;
  final DateTime date;
  final VoidCallback callback;

  const ChatItem(
      {super.key,
      required this.fem,
      required this.ffem,
      required this.name,
      required this.avatar,
      required this.lastMessage,
      required this.date,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: InkWell(
            splashColor: AppColors.accentColor,
            onTap: callback,
            child: Container(
              margin: EdgeInsets.only(top: 5 * fem),
              padding: EdgeInsets.fromLTRB(21 * fem, 1 * fem, 8 * fem, 1 * fem),
              width: double.infinity,
              height: 62 * fem,
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Color(0x3375704e))),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 59 * fem, 0 * fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 10 * fem, 0 * fem),
                          width: 53 * fem,
                          height: 53 * fem,
                          child: avatar,
                        ),
                        SizedBox(
                          width: 154 * fem,
                          height: 35 * fem,
                          child: Stack(
                            children: [
                              Positioned(
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
                                left: 0 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    child: Text(name,
                                        style: safeGoogleFont(
                                          'Inter',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2125 * ffem / fem,
                                          color: const Color(0xff000000),
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text((DateFormat(DateFormat.WEEKDAY).format(date)),
                      style: safeGoogleFont(
                        'Inter',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: const Color(0xff76797e),
                      ),
                      maxLines: 1),
                ],
              ),
            )));
  }
}
