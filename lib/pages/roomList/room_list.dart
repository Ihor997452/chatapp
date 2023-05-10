import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';
import 'package:myapp/pages/login/login_view.dart';
import 'package:myapp/pages/room/room.dart';
import 'package:myapp/pages/roomList/room_list_view.dart';
import 'package:myapp/pages/room_test.dart';
import 'package:provider/provider.dart';

import '../login/login.dart';
import '../test.dart';

class RoomList extends StatefulWidget {
  const RoomList({Key? key}) : super(key: key);

  @override
  RoomListController createState() => RoomListController();
}

class RoomListController extends State<RoomList> {
  List<Room> getRooms() {
    final client = Provider.of<Client>(context, listen: false);
    return client.rooms;
  }

  void logout() async {
    final client = Provider.of<Client>(context, listen: false);
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
        builder: (_) => Roomba(room: room),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RoomListView(this);
  }
}
