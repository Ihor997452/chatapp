import 'package:flutter/cupertino.dart';

import '../utils.dart';

class MessageBubble extends StatelessWidget {
  final bool isMy;
  final double fem;
  final double ffem;

  const MessageBubble(
      {super.key, required this.isMy, required this.fem, required this.ffem});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(10 * fem, 482 * fem, 10 * fem, 10 * fem),
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
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
                              bottomRight: Radius.circular(10 * fem),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
          )
        ]));
  }
}
