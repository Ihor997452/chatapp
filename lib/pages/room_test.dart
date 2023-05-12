import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:matrix/matrix.dart';
import 'package:myapp/pages/room/room.dart';
import 'package:myapp/util/colors.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/widgets/input_bar.dart';
import 'package:myapp/widgets/message_bubble.dart';

class Roomba extends StatelessWidget {
  final RoomController controller;

  const Roomba(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    controller.getMessages();

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
        child: Expanded(
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
