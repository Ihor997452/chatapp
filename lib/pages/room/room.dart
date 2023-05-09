import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';
import 'package:myapp/pages/room/room_view.dart';

class MyRoom extends StatefulWidget {
  final Room room;
  const MyRoom({required this.room, super.key});

  @override
  RoomController createState() => RoomController();
}

class RoomController extends State<MyRoom> {
  late final Future<Timeline> timelineFuture;
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  int count = 0;

  @override
  void initState() {
    timelineFuture = widget.room.getTimeline(onChange: (i) {
      print('on change! $i');
      listKey.currentState?.setState(() {});
    }, onInsert: (i) {
      print('on insert! $i');
      listKey.currentState?.insertItem(i);
      count++;
    }, onRemove: (i) {
      print('On remove $i');
      count--;
      listKey.currentState?.removeItem(i, (_, __) => const ListTile());
    }, onUpdate: () {
      print('On update');
    });
    super.initState();
  }

  final TextEditingController sendController = TextEditingController();

  void send() {
    widget.room.sendTextEvent(sendController.text.trim());
    sendController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return RoomView(this);
  }
}
