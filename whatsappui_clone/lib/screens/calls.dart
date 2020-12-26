import 'package:flutter/material.dart';
import 'package:whatsappui_clone/models/call_model.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: callList.length,
        itemBuilder: (context, i) => Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(callList[i].avatarUrl),
                radius: 27.0,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    callList[i].name,
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 17.0),
                  ),
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 1.0),
                child: Text(
                  callList[i].time,
                  style: TextStyle(color: Colors.grey[600], fontSize: 15.0),
                ),
              ),
              trailing: Icon(
                i % 3 == 0 ? Icons.call : Icons.videocam,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Divider(
              height: 8.0,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add_call,
          color: Colors.white,
        ),
      ),
    );
  }
}
