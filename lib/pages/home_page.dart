import 'package:first_app/widgets/message_list.dart';
import 'package:flutter/material.dart';

import '../widgets/contact_list.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child:  Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 133, 226, 156), // Set your desired color here
          shadowColor: Color.fromARGB(255, 15, 29, 31),
          title: const Text('Messaging App'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Implement your search logic here
              },
            ),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert),
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(
                    value: 1,
                    child: Text('Option 1'),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text('Option 2'),
                  ),
                  // Add more menu items as needed
                ];
              },
              onSelected: (value) {
                // Implement actions based on selected menu item
              },
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Messages'),
              Tab(text: 'Contacts'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            MessageList(
              avatar: "IMG",
              name: "Saqib",
              message: "This is saqib here",
              time: "11:33",
            ),
            ContactsList(
              avatar: 'C',
              contactName :'Contact Name',
              status: 'Status: Online',
            ),
             // Second tab content
          ],
        ),
      ),
    );
  }
}
