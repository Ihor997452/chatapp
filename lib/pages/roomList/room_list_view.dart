import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:matrix/matrix.dart';
import 'package:myapp/pages/roomList/room_list.dart';
import 'package:myapp/widgets/avatar.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../utils.dart';
import '../../widgets/chat_item.dart';

class RoomListView extends StatelessWidget {
  final RoomListController controller;
  const RoomListView(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    final client = Provider.of<Client>(context, listen: false);

    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: const Text(""),
        leading: Container(
          margin: EdgeInsets.only(left: 23 * fem),
          child: Image.asset('assets/images/user-buttom.png'),
        ),
        leadingWidth: 58 * fem,
        actions: <Widget>[
          SizedBox(
              width: 45 * fem,
              height: 25 * fem,
              child: const Icon(Icons.search, color: Colors.black)),
          SizedBox(
              width: 45 * fem,
              height: 25 * fem,
              child: const Icon(Icons.menu, color: Colors.black))
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    EdgeInsets.fromLTRB(20 * fem, 10 * fem, 0 * fem, 10 * fem),
                child: Text(
                  AppLocalizations.of(context)!.allChats,
                  style: safeGoogleFont(
                    'Inter',
                    fontSize: 22 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125 * ffem / fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
              StreamBuilder(
                  stream: client.onSync.stream,
                  builder: (_, __) {
                    var list = <Widget>[];
                    controller.getRooms().forEach((room) async {
                      var row = ChatItem(
                          fem: fem,
                          ffem: ffem,
                          name: room.getLocalizedDisplayname(),
                          avatar: Avatar(
                              url: room.avatar == null
                                  ? 'null'
                                  : room.avatar!
                                      .getThumbnail(client,
                                          width: 58, height: 58)
                                      .toString(),
                              name: room.getLocalizedDisplayname()),
                          lastMessage: room.lastEvent!.body,
                          date: room.lastEvent!.originServerTs,
                          callback: () {
                            controller.join(room);
                          });
                      list.add(row);
                    });
                    return Column(children: list);
                  }),
            ],
          ),
        ),
      )),
      floatingActionButton: Stack(
        children: [
          Container(
            padding:
                EdgeInsets.fromLTRB(290 * fem, 508 * fem, 20 * fem, 30 * fem),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin:
                      EdgeInsets.fromLTRB(2 * fem, 0 * fem, 3 * fem, 10 * fem),
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
                        blurRadius: 3 * fem,
                      ),
                    ],
                  ),
                  child: Center(
                    child: SizedBox(
                      width: 25 * fem,
                      height: 25 * fem,
                      child: Image.asset(
                        'assets/images/prostors-icon.png',
                        width: 25 * fem,
                        height: 25 * fem,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.fromLTRB(13 * fem, 7 * fem, 7 * fem, 13 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff75704e),
                    borderRadius: BorderRadius.circular(15 * fem),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x7f000000),
                        offset: Offset(0 * fem, 0 * fem),
                        blurRadius: 3 * fem,
                      ),
                    ],
                  ),
                  child: Center(
                    child: SizedBox(
                      width: 30 * fem,
                      height: 30 * fem,
                      child: Image.asset(
                        'assets/images/img-write.png',
                        width: 30 * fem,
                        height: 30 * fem,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
