import 'package:flutter/material.dart';
import 'package:flutter_menu/inbox/inbox_chat_list_item.dart';
import 'package:flutter_menu/inbox/inbox_user.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  final List<InboxUser> users = [
    InboxUser(
        name: 'John Doe',
        profileUrl:
            'https://img.freepik.com/free-photo/portrait-asian-girl-student-stands-city-centre-with-cars-busy-street-holds-digital-tablet_1258-151469.jpg?t=st=1725879697~exp=1725883297~hmac=556d3e687e440f3cd2390204759bfc1bc3f8dc13d25fc451a2c0e5e33df23979&w=2000',
        hasBadge: true),
    InboxUser(
        name: 'Jane Smith',
        profileUrl:
            'https://img.freepik.com/free-photo/mand-holding-cup_1258-340.jpg?t=st=1725879742~exp=1725883342~hmac=84c51dcfc1fcefb1063715d9d852e31772bf91f399d8a3e6ebc98bb0f071b7fd&w=2000',
        hasBadge: false),
    InboxUser(
        name: 'Alice Brown',
        profileUrl:
            'https://img.freepik.com/free-photo/beautiful-asian-woman-long-black-hair-portrait-white-sweater-with-happiness-smile-positive-thinking_609648-601.jpg?t=st=1725879772~exp=1725883372~hmac=aecdab0cf47f276a5246b0470b81c172160c3453f8f8a1ed9de6d750206d62b5&w=2000',
        hasBadge: true),
    InboxUser(
        name: 'Bob Johnson',
        // profileUrl: 'https://via.placeholder.com/150',
        profileUrl:
            'https://img.freepik.com/free-photo/portrait-asian-senior-retired-couple-smiling-looking-out-window-apartment-while-hold-wife-shoulder-cheerful-asian-senior-couple-retirement-life-wellness-senior-healthy-lifestyle-concept_609648-289.jpg?t=st=1725879791~exp=1725883391~hmac=c004e21621388bba6cb126c0e9957ce6446c86a3413e08a6b18b17e912b86aed&w=2000',
        hasBadge: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inbox Screen"),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return InboxChatListItemPage(user: users[index]);
        },
      ),
    );
  }
}
