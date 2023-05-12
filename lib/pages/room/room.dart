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

  Timeline? timeline;
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

  late final Future<void> _loadTimeline;
  Future<void> _getTimeLine() async {
    print("object");
    timeline = await room.getTimeline(
      onChange: onChange,
      onUpdate: onUpdate,
      onRemove: onRemove,
      onInsert: onInsert
    );
    print("object222");

    return;
  }

  @override
  void initState() {
    super.initState();
    _loadTimeline = _getTimeLine();
  }

  void send() {
    widget.room.sendTextEvent(sendController.text.trim());
    sendController.clear();
  }

  void requestHistory() async {
    if (!timeline!.canRequestHistory) return;

    await timeline!.requestHistory(historyCount: _loadHistoryCount);
  }

  List getMessages() {
    var a = timeline!.events;

    var text = "aaaa";
    a.forEach((element) {
      print('\x1B[33m$text\x1B[0m');
      print('\x1B[33m$element\x1B[0m');
    });

    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Roomba(this);
  }
}
