import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  final String avatar;
  final String contactName;
  final String status;
  const ContactsList({super.key, required this.contactName, required this.avatar, required this.status});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Replace with actual contact count
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            child: Text(avatar),
          ),
          title: Text(contactName),
          subtitle: Text(status),
        );
      },
    );
  }
}