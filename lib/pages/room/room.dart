import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';
import 'package:myapp/pages/room/room_view.dart';
import 'package:myapp/pages/room_test.dart';

class MyRoom extends StatefulWidget {
  final Room room;
  const MyRoom({required this.room, super.key});

  @override
  RoomController createState() => RoomController();
}

class RoomController extends State<MyRoom> {
  Room get room => widget.room;
  Client get sendingClient => widget.room.client;
  final TextEditingController sendController = TextEditingController();
  final int _loadHistoryCount = 100;

  late Future<Timeline> timelineFuture = room.getTimeline();
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  int count = 0;

  void onChange(i) {
    setState(() {});
  }

  void onInsert(i) {
    setState(() {});
  }

  void onRemove(i) {
    setState(() {});
  }

  void onUpdate() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  void send() {
    widget.room.sendTextEvent(sendController.text.trim());
    sendController.clear();
  }

  Future<List> getMessages() async {
    var a = (await timelineFuture).events;

    a.forEach((element) {
      var text = element.body;
      print('\x1B[33m$text\x1B[0m');
    });

    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Roomba(this);
  }
}
