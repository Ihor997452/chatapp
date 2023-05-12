import 'package:flutter/cupertino.dart';

import '../utils.dart';

class InputBar extends StatelessWidget {
  final double fem;
  final double ffem;

  const InputBar({super.key, required this.fem, required this.ffem});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40 * fem,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 2.5 * fem, 0 * fem, 2.5 * fem),
            padding: EdgeInsets.fromLTRB(
                5.83 * fem, 5.83 * fem, 5.83 * fem, 5.83 * fem),
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
            padding:
                EdgeInsets.fromLTRB(15 * fem, 10 * fem, 15 * fem, 10 * fem),
            height: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0x3375704e)),
              borderRadius: BorderRadius.circular(15 * fem),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 100 * fem, 0 * fem),
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
            margin: EdgeInsets.fromLTRB(0 * fem, 2.5 * fem, 0 * fem, 2.5 * fem),
            padding: EdgeInsets.fromLTRB(
                8.17 * fem, 5.83 * fem, 3.5 * fem, 5.83 * fem),
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
    );
  }
}
