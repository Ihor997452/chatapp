import 'dart:io';

import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';
import 'package:myapp/pages/login/login_view.dart';
import 'package:myapp/pages/room/room.dart';
import 'package:myapp/pages/roomList/room_list_view11.dart';
import 'package:myapp/pages/room_test.dart';
import 'package:myapp/util/route_builder.dart';
import 'package:provider/provider.dart';

import '../login/login.dart';
import 'room_list_view.dart';

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

    Navigator.of(context).push(RouteBuilder.createRoute(const Login()));
  }

  void join(Room room) async {
    if (room.membership != Membership.join) {
      await room.join();
    }

    Navigator.of(context).push(RouteBuilder.createRoute(MyRoom(room: room)));
  }

  @override
  Widget build(BuildContext context) {
    return RoomListView(this);
  }
}
