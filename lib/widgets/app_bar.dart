import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;

  MyAppBar({super.key, required this.title, required this.backgroundColor});
  
  get _tabController => null;
  // TabController controller = TabController(length: 3);


  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: backgroundColor,
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {

          }
        ),
        PopupMenuButton(
          icon: const Icon(Icons.more_vert),
          itemBuilder: (BuildContext context){
            return const [
              PopupMenuItem(
                value: 1,
                child: Text("Option 1"),
              ),
              PopupMenuItem(
                  value: 1,
                  child: Text("Option 1"),
                ),
            ];
          }
        ),
      ],
      bottom: TabBar(
        controller: _tabController, // Provide the TabController here
        tabs: const [
          Tab(text: 'Messages'),
          Tab(text: 'Contacts'),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
