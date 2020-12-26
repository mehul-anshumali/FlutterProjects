import 'package:flutter/material.dart';
import 'package:whatsappui_clone/models/chatModel.dart';
import 'package:whatsappui_clone/screens/messageScreen.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage(chatList[index].avatarUrl),
                  radius: 26.0,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      chatList[index].name,
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 17.0),
                    ),
                    Text(
                      chatList[index].time,
                      style: TextStyle(color: Colors.grey[600], fontSize: 13.0),
                    ),
                  ],
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    chatList[index].message,
                    style: TextStyle(color: Colors.grey[600], fontSize: 15.0),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MessageScreen(),
                    ),
                  );
                },
              ),
              Container(
                padding: EdgeInsets.only(right: 10.0),
                child: Divider(
                  height: 8.0,
                  indent: 83.0,
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 1.0,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
