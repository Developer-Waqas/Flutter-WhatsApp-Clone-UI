import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          centerTitle: false,
          backgroundColor: tealColor,
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              itemBuilder: (
                context,
              ) =>
                  [
                const PopupMenuItem(
                  child: Text('New Groups'),
                ),
                const PopupMenuItem(
                  child: Text('Linked Devices'),
                ),
                const PopupMenuItem(
                  child: Text('New Broadcast'),
                ),
                const PopupMenuItem(
                  child: Text('Starred Messages'),
                ),
                const PopupMenuItem(
                  child: Text('Settings'),
                ),
              ],
            ),
          ],
        ),
        body: TabBarView(
          children: [
            ///<<<<<<<<<==========Camera Tab Bar==========>>>>>>>>>>>>>
             const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Icon(
                    Icons.camera_alt_rounded,
                    size: 100,
                  ),
                ),
              ],
            ),

            ///<<<<<<<<===========Chats Tab Bar=============>>>>>>>>>>>
            ListView.builder(
              itemCount: usersChats.length,
              itemBuilder: (context,index) {
                return  ListTile(
                  leading:
                    CircleAvatar(
                      backgroundImage:
                      AssetImage(usersChats[index].image),
                    ),
                  title:  Text(usersChats[index].name),
                  subtitle: Text(usersChats[index].time),
                );
              },
            ),

            ///<<<<<<<<=========Status Tab Bar==========>>>>>>>>>>>>>..
            ListView.builder(
              itemCount: usersStatus.length,
              itemBuilder: (context, int index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: greenColor,
                        width: 3,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child:  CircleAvatar(
                      backgroundImage:
                          AssetImage(usersStatus[index].image),
                  ),
                  ),
                  title:  Text(usersStatus[index].name),
                  subtitle: Text(usersStatus[index].time),
                );
              },
            ),

            ///<<<<<<<<=========Calls Tab Bar==========>>>>>>>>>>>>>..
            ListView.builder(
              itemCount: 13,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/img_image.png'),
                  ),
                  subtitle: Text(index / 2 == 1
                      ? 'You have missed audio call'
                      : 'You have missed video call'),
                  title: const Text('Waqas Muhammad'),
                  trailing:
                      Icon(index / 2 == 1 ? Icons.phone : Icons.video_call),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
