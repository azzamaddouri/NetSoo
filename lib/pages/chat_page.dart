import 'package:flutter/material.dart';
import 'package:netsoo/components/chat_me_item.dart';
import 'package:netsoo/components/chat_other_item.dart';
import 'package:netsoo/components/toolbar.dart';
import 'package:netsoo/provider/app_repo.dart';
import 'package:provider/provider.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AppRepo>();
    return Scaffold(
      appBar: Toolbar(title: 'Chat'),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final chat = provider.chats[index];
          if (chat.user.id == provider.user?.id) {
            return ChatMeItem(chat: chat);
          }
          return ChatOtherItem(chat: chat);
        },
        itemCount: provider.chats.length,
      ),
    );
  }
}
