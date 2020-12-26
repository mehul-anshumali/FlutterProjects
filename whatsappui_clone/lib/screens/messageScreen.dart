import 'package:flutter/material.dart';
import 'package:whatsappui_clone/models/chatModel.dart';

enum MoreMenu {
  view_contact,
  media,
  search,
  mute,
  wallpaper,
  more,
}

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(chatList[3].avatarUrl),
              radius: 18.0,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    chatList[3].name,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3, right: 50),
                  child: Text(
                    'online',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.videocam,
            ),
            tooltip: 'Video Call',
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call,
            ),
            tooltip: 'Voice Call',
          ),
          PopupMenuButton<MoreMenu>(
            tooltip: 'More Options',
            itemBuilder: (BuildContext context) => <PopupMenuEntry<MoreMenu>>[
              PopupMenuItem<MoreMenu>(
                value: MoreMenu.view_contact,
                child: Text('View Contact'),
              ),
              PopupMenuItem<MoreMenu>(
                value: MoreMenu.media,
                child: Text('Media'),
              ),
              PopupMenuItem<MoreMenu>(
                value: MoreMenu.search,
                child: Text('Search'),
              ),
              PopupMenuItem<MoreMenu>(
                value: MoreMenu.mute,
                child: Text('Mute notifications'),
              ),
              PopupMenuItem<MoreMenu>(
                value: MoreMenu.wallpaper,
                child: Text('Wallpaper'),
              ),
              PopupMenuItem<MoreMenu>(
                value: MoreMenu.more,
                child: ListTile(
                  title: Text('More'),
                  contentPadding: EdgeInsets.all(0.0),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            disabledColor: Colors.grey,
                            color: Colors.grey,
                            icon: Icon(Icons.insert_emoticon),
                            onPressed: () {},
                          ),
                          Flexible(
                            child: Container(
                              constraints: BoxConstraints(maxHeight: 100.0),
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18.0,
                                ),
                                textCapitalization:
                                    TextCapitalization.sentences,
                                textInputAction: null,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(0.0),
                                  hintText: "Type a message",
                                  hintStyle: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 18.0,
                                  ),
                                  counterText: "",
                                ),
                                keyboardType: TextInputType.multiline,
                                maxLines: null,
                                maxLength: 100,
                                cursorColor: Theme.of(context).primaryColor,
                                cursorWidth: 1.8,
                              ),
                            ),
                          ),
                          IconButton(
                            disabledColor: Colors.grey,
                            color: Colors.grey,
                            icon: Icon(Icons.attach_file),
                            onPressed: () {},
                          ),
                          IconButton(
                            disabledColor: Colors.grey,
                            color: Colors.grey,
                            icon: Icon(Icons.camera_alt),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 50.0,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.0),
                      child: FloatingActionButton(
                        elevation: 2.0,
                        backgroundColor: Theme.of(context).primaryColor,
                        foregroundColor: Colors.white,
                        child: Icon(Icons.send),
                        onPressed: () {},
                      ),
                    ),
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
