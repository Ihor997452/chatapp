import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';
import 'package:myapp/pages/login/login_view.dart';
import 'package:myapp/pages/room/room.dart';
import 'package:myapp/pages/roomList/room_list_view.dart';
import 'package:provider/provider.dart';

import '../login/login.dart';

class RoomList extends StatefulWidget {
  const RoomList({Key? key}) : super(key: key);

  @override
  RoomListController createState() => RoomListController();
}

class RoomListController extends State<RoomList> {
  void logout() async {
    final client = Provider.of<Client>(context, listen: false);
    print(client);
    await client.logout();
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => const Login()),
      (route) => false,
    );
  }

  void join(Room room) async {
    if (room.membership != Membership.join) {
      await room.join();
    }
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => MyRoom(room: room),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RoomListView(this);
  }
}
