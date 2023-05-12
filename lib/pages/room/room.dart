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
  Timeline? timeline;
  Room get room => widget.room;
  Client get sendingClient => widget.room.client;
  final TextEditingController sendController = TextEditingController();
  final int _loadHistoryCount = 100;

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

  void send() {
    widget.room.sendTextEvent(sendController.text.trim());
    sendController.clear();
  }

  void requestHistory() async {
    if (!timeline!.canRequestHistory) return;

    await timeline!.requestHistory(historyCount: _loadHistoryCount);
  }

  Future<List> getMessages() async {
    var a = room.onUpdate.stream;
    var text = "aaaa";
    print('\x1B[33m$text\x1B[0m');
    a.forEach((element) {
      text = element.toString();
      print('\x1B[33m$text\x1B[0m');
;});
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Roomba(this);
  }
}
