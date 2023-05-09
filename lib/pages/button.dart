import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 20*fem, 20*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          border: Border.all(color: const Color(0xff9747ff)),
          borderRadius: BorderRadius.circular(5*fem)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero
                ),
                child: Container(
                  width: double.infinity,
                  height: 42*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xffd9d9d9),
                    borderRadius: BorderRadius.circular(7*fem)
                  ),
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context)!.next,
                      textAlign: TextAlign.center,
                      style: safeGoogleFont (
                        'Inter',
                        fontSize: 18*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125*ffem/fem,
                        color: const Color(0xff7c7c7c)
                      )
                    )
                  )
                )
              )
            ),
            Container(
              width: double.infinity,
              height: 42*fem,
              decoration: BoxDecoration (
                color: const Color(0xff2eac87),
                borderRadius: BorderRadius.circular(7*fem)
              ),
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.next,
                  textAlign: TextAlign.center,
                  style: safeGoogleFont (
                    'Inter',
                    fontSize: 18*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125*ffem/fem,
                    color: const Color(0xfffff9f9)
                  )
                )
              )
            )
          ]
        )
      )
    );
  }
}