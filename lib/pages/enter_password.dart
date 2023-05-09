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
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom (
                padding: EdgeInsets.zero
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(10*fem, 14*fem, 10*fem, 14*fem),
                width: double.infinity,
                decoration: BoxDecoration (
                  border: Border.all(color: const Color(0xffababab)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(3*fem)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 207*fem, 0*fem),
                      child: Text(
                        AppLocalizations.of(context)!.password,
                        style: safeGoogleFont (
                          'Inter',
                          fontSize: 18*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125*ffem/fem,
                          color: const Color(0xff7c7c7c)
                        )
                      )
                    ),
                    SizedBox(
                      width: 23*fem,
                      height: 22*fem,
                      child: Image.asset(
                        'assets/page-1/images/mask-group.png',
                        width: 23*fem,
                        height: 22*fem
                      )
                    )
                  ]
                )
              )
            ),
            SizedBox(
              height: 20*fem
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom (
                padding: EdgeInsets.zero
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(10*fem, 0*fem, 10*fem, 0*fem),
                width: double.infinity,
                height: 50*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: const Color(0xff2eac87)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(3*fem)
                ),
                child: Text(
                    AppLocalizations.of(context)!.password,
                    style: safeGoogleFont (
                    'Inter',
                    fontSize: 10*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125*ffem/fem,
                    color: const Color(0xff7c7c7c)
                  )
                )
              )
            ),
            SizedBox(
              height: 20*fem
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10*fem, 14*fem, 10*fem, 14*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                border: Border.all(color: const Color(0xff62c1a5)),
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(3*fem)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 47*fem, 6*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 10*fem,
                          height: 10*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(5*fem),
                            color: const Color(0xff000000)
                          )
                        ),
                        SizedBox(
                          width: 10*fem
                        ),
                        Container(
                          width: 10*fem,
                          height: 10*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(5*fem),
                            color: const Color(0xff000000)
                          )
                        ),
                        SizedBox(
                          width: 10*fem,
                        ),
                        Container(
                          width: 10*fem,
                          height: 10*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(5*fem),
                            color: const Color(0xff000000)
                          )
                        ),
                        SizedBox(
                          width: 10*fem
                        ),
                        Container(
                          width: 10*fem,
                          height: 10*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(5*fem),
                            color: const Color(0xff000000)
                          )
                        ),
                        SizedBox(
                          width: 10*fem
                        ),
                        Container(
                          width: 10*fem,
                          height: 10*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(5*fem),
                            color: const Color(0xff000000)
                          )
                        ),
                        SizedBox(
                          width: 10*fem
                        ),
                        Container(
                          width: 10*fem,
                          height: 10*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(5*fem),
                            color: const Color(0xff000000)
                          )
                        ),
                        SizedBox(
                          width: 10*fem
                        ),
                        Container(
                          width: 10*fem,
                          height: 10*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(5*fem),
                            color: const Color(0xff000000)
                          )
                        ),
                        SizedBox(
                          width: 10*fem
                        ),
                        Container(
                          width: 10*fem,
                          height: 10*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(5*fem),
                            color: const Color(0xff000000)
                          )
                        ),
                        SizedBox(
                          width: 10*fem
                        ),
                        Container(
                          width: 10*fem,
                          height: 10*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(5*fem),
                            color: const Color(0xff000000)
                          )
                        ),
                        SizedBox(
                          width: 10*fem
                        ),
                        Container(
                          width: 10*fem,
                          height: 10*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(5*fem),
                            color: const Color(0xff000000)
                          )
                        ),
                        SizedBox(
                          width: 10*fem
                        ),
                        Container(
                          width: 10*fem,
                          height: 10*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(5*fem),
                            color: const Color(0xff000000)
                          )
                        ),
                        SizedBox(
                          width: 10*fem
                        ),
                        Container(
                          width: 10*fem,
                          height: 10*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(5*fem),
                            color: const Color(0xff000000)
                          )
                        )
                      ]
                    )
                  ),
                  SizedBox(
                    width: 23*fem,
                    height: 22*fem,
                    child: Image.asset(
                      'assets/page-1/images/mask-group-dqV.png',
                      width: 23*fem,
                      height: 22*fem
                    )
                  )
                ]
              )
            )
          ]
        )
      )
    );
  }
}