import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';
import 'package:myapp/pages/room/room.dart';

class RoomView extends StatelessWidget {
  final RoomController controller;
  const RoomView(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.widget.room.displayname),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder<Timeline>(
                builder: (context, snapshot) {
                  final timeline = snapshot.data;
                  if (timeline == null) {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  }
                  controller.count = timeline.events.length;
                  return Column(
                    children: [
                      Center(
                        child: TextButton(
                            onPressed: timeline.requestHistory,
                            child: const Text('Load more...')),
                      ),
                      const Divider(height: 1),
                      Expanded(
                        child: AnimatedList(
                          key: controller.listKey,
                          reverse: true,
                          initialItemCount: timeline.events.length,
                          itemBuilder: (context, i, animation) => timeline
                                      .events[i].relationshipEventId !=
                                  null
                              ? Container()
                              : ScaleTransition(
                                  scale: animation,
                                  child: Opacity(
                                    opacity: timeline.events[i].status.isSent
                                        ? 1
                                        : 0.5,
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        foregroundImage: timeline.events[i]
                                                    .sender.avatarUrl ==
                                                null
                                            ? null
                                            : NetworkImage(timeline
                                                .events[i].sender.avatarUrl!
                                                .getThumbnail(
                                                  controller.widget.room.client,
                                                  width: 56,
                                                  height: 56,
                                                )
                                                .toString()),
                                      ),
                                      title: Row(
                                        children: [
                                          Expanded(
                                            child: Text(timeline
                                                .events[i].sender
                                                .calcDisplayname()),
                                          ),
                                          Text(
                                            timeline.events[i].originServerTs
                                                .toIso8601String(),
                                            style:
                                                const TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      subtitle: Text(timeline.events[i]
                                          .getDisplayEvent(timeline)
                                          .body),
                                    ),
                                  ),
                                ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    controller: controller.sendController,
                    decoration: const InputDecoration(
                      hintText: 'Send message',
                    ),
                  )),
                  IconButton(
                    icon: const Icon(Icons.send_outlined),
                    onPressed: controller.send,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
