import 'package:flutter/material.dart';
import 'package:flutter_menu/inbox/inbox_user.dart';

class InboxChatListItemPage extends StatelessWidget {
  final InboxUser user;

  const InboxChatListItemPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(user.profileUrl),
            radius: 25,
          ),
          user.hasBadge
              ? const Positioned(
                  right: 0,
                  bottom: 0,
                  child: Icon(
                    Icons.circle,
                    color: Colors.redAccent,
                    size: 20,
                  ),
                )
              : const Positioned(
                  right: 0,
                  bottom: 0,
                  child: Icon(
                    Icons.circle,
                    color: Colors.green,
                    size: 20,
                  ),
                ),
        ],
      ),
      title: Text(user.name),
      subtitle: const Text('Active now'),
      onTap: () {
        // Handle onTap
      },
    );
  }
}
