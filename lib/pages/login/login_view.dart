import 'package:flutter/material.dart';
import 'package:myapp/pages/login/login.dart';
import 'package:myapp/util/colors.dart';
import 'package:myapp/utils.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginView extends StatelessWidget {
  final LoginController controller;
  const LoginView(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
        body: controller.loading
            ? const Center(
                child: CircularProgressIndicator(
                    backgroundColor: Colors.grey, color: AppColors.accentColor))
            : SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.fromLTRB(
                        19 * fem, 132 * fem, 20 * fem, 314 * fem),
                    width: double.infinity,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(
                                  11 * fem, 0 * fem, 0 * fem, 48 * fem),
                              child: Text(AppLocalizations.of(context)!.login,
                                  textAlign: TextAlign.center,
                                  style: safeGoogleFont('Inter',
                                      fontSize: 32 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125 * ffem / fem,
                                      color: const Color(0xff000000)))),
                          Container(
                              margin: EdgeInsets.fromLTRB(
                                  1 * fem, 0 * fem, 0 * fem, 39 * fem),
                              width: 320 * fem,
                              height: 1 * fem,
                              decoration: const BoxDecoration(
                                  color: Color(0xffc4c4c4))),
                          Container(
                              margin: EdgeInsets.fromLTRB(
                                  1 * fem, 0 * fem, 0 * fem, 40 * fem),
                              width: 320 * fem,
                              child: TextField(
                                  onChanged: (text) {
                                    controller.validate();
                                  },
                                  autocorrect: false,
                                  controller: controller.usernameTextField,
                                  decoration: InputDecoration(
                                    hintText:
                                        AppLocalizations.of(context)!.username,
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xffababab)),
                                        borderRadius:
                                            BorderRadius.circular(3 * fem)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: AppColors.accentColor,
                                            width: 2),
                                        borderRadius:
                                            BorderRadius.circular(3 * fem)),
                                    contentPadding: EdgeInsets.fromLTRB(
                                        12 * fem, 16 * fem, 12 * fem, 16 * fem),
                                  ),
                                  maxLines: 1,
                                  style: safeGoogleFont('Inter',
                                      fontSize: 18 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125 * ffem / fem,
                                      color: const Color(0xff7c7c7c)))),
                          Container(
                              margin: EdgeInsets.fromLTRB(
                                  1 * fem, 0 * fem, 0 * fem, 40 * fem),
                              width: 320 * fem,
                              child: TextField(
                                  onChanged: (text) {
                                    controller.validate();
                                  },
                                  obscureText: !controller.showPassword,
                                  enableSuggestions: false,
                                  autocorrect: false,
                                  controller: controller.passwordTextField,
                                  decoration: InputDecoration(
                                      hintText: AppLocalizations.of(context)!
                                          .password,
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color(0xffababab)),
                                          borderRadius:
                                              BorderRadius.circular(3 * fem)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: AppColors.accentColor,
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(3 * fem)),
                                      contentPadding: EdgeInsets.fromLTRB(
                                          12 * fem,
                                          16 * fem,
                                          12 * fem,
                                          16 * fem),
                                      suffixIcon: Align(
                                        widthFactor: 1.0,
                                        heightFactor: 1.0,
                                        child: IconButton(
                                          onPressed:
                                              controller.toggleShowPassword,
                                          icon: Icon(
                                            controller.showPassword
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            color: AppColors.accentColor,
                                          ),
                                        ),
                                      )),
                                  maxLines: 1,
                                  style: safeGoogleFont('Inter',
                                      fontSize: 18 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125 * ffem / fem,
                                      color: const Color(0xff7c7c7c)))),
                          SizedBox(
                              width: 320 * fem,
                              height: 42 * fem,
                              child: ElevatedButton(
                                  onPressed: () {
                                    controller.login();
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: controller.isEmpty
                                          ? const Color(0xff7c7c7c)
                                          : AppColors.accentColor,
                                      elevation: 6.0,
                                      textStyle: safeGoogleFont('Inter',
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125 * ffem / fem,
                                          color: const Color(0xff7c7c7c))),
                                  child: Text(
                                      AppLocalizations.of(context)!.login)))
                        ]))));
  }
}
