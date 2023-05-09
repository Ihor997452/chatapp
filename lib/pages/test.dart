import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return SingleChildScrollView(
      child: SizedBox(
      width: double.infinity,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
              padding:
                  EdgeInsets.fromLTRB(20 * fem, 10 * fem, 17 * fem, 10 * fem),
              width: double.infinity,
              height: 55 * fem,
              decoration: BoxDecoration(
                color: const Color(0xff959464),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3f000000),
                    offset: Offset(0 * fem, 4 * fem),
                    blurRadius: 2 * fem,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 230 * fem, 0 * fem),
                    width: 35 * fem,
                    height: 35 * fem,
                    child: Image.asset(
                      'assets/Userbuttom.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 5 * fem, 0 * fem, 5 * fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 10 * fem, 0 * fem),
                          width: 23 * fem,
                          height: 23 * fem,
                          child: const Icon(Icons.search)
                        ),
                        SizedBox(
                          width: 25 * fem,
                          height: 25 * fem,
                          child: const Icon(Icons.menu)
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 0 * fem, 10 * fem),
              child: Text(
                'Усі бесіди',
                style: safeGoogleFont(
                  'Inter',
                  fontSize: 22 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2125 * ffem / fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              padding:
                  EdgeInsets.fromLTRB(21 * fem, 1 * fem, 19 * fem, 1 * fem),
              width: double.infinity,
              height: 55 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xfff1f1f1)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 77 * fem, 0 * fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 10 * fem, 0 * fem),
                          width: 53 * fem,
                          height: 53 * fem,
                          child: Image.asset(
                            'assets/Userbuttom.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 2 * fem),
                                child: Text(
                                  'Ім’я користувача',
                                  style: safeGoogleFont(
                                    'Inter',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125 * ffem / fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                              Text(
                                'Повідомлення',
                                style: safeGoogleFont(
                                  'Inter',
                                  fontSize: 11 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125 * ffem / fem,
                                  color: const Color(0xff76797e),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '9 травня',
                    style: safeGoogleFont(
                      'Inter',
                      fontSize: 10 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125 * ffem / fem,
                      color: const Color(0xff76797e),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.fromLTRB(290 * fem, 508 * fem, 20 * fem, 30 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        2 * fem, 0 * fem, 3 * fem, 10 * fem),
                    padding: EdgeInsets.fromLTRB(
                        10 * fem, 10 * fem, 10 * fem, 10 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(15 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x7f000000),
                          offset: Offset(0 * fem, 0 * fem),
                          blurRadius: 2 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: SizedBox(
                        width: 25 * fem,
                        height: 25 * fem,
                        child: Image.asset(
                          'assets/Prostorsicon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        13 * fem, 7 * fem, 7 * fem, 13 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xff959464),
                      borderRadius: BorderRadius.circular(15 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x7f000000),
                          offset: Offset(0 * fem, 0 * fem),
                          blurRadius: 2 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: SizedBox(
                        width: 30 * fem,
                        height: 30 * fem,
                        child: Image.asset(
                          'assets/Imgwrite.png',
                          fit: BoxFit.cover,
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
    ));
  }
}
