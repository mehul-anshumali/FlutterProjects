import 'package:flutter/material.dart';
import 'package:whatsappui_clone/screens/calls.dart';
import 'package:whatsappui_clone/screens/camera.dart';
import 'package:whatsappui_clone/screens/chats.dart';
import 'package:whatsappui_clone/screens/status.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
          actions: [
            Icon(Icons.search),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
            ),
            Icon(Icons.more_vert)
          ],
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            ChatScreen(),
            StatusScreen(),
            CallScreen(),
          ],
        ),
      ),
    );
  }
}
