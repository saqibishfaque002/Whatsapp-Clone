import 'package:flutter/material.dart';

class MessageList extends StatelessWidget {
  final String avatar;
  final String name;
  final String message;
  final String time;
  const MessageList({super.key, required this.name, required this.message, required this.time, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) { 
        return ListTile(
          leading: CircleAvatar(
            child: Text(avatar),
          ),
          title: Text(name),
          subtitle: Text(message),
          trailing: Text(time),
        );
       },
    );
  }
}