import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/widgets/contacts_list.dart';
import 'package:whatsapp_clone/widgets/web_chat_appbar.dart';
import 'package:whatsapp_clone/widgets/web_chat_list.dart';
import 'package:whatsapp_clone/widgets/web_profile_bar.dart';
import 'package:whatsapp_clone/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                WebProfileBar(),
                WebSearchBar(),
                contacts_list(),
              ],
            ),
          ),
        ),
        // web screen
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/backgroundImage.png'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              const WebChatAppbar(),
              const SizedBox(height: 20),
              const Expanded(
                child: WebChatList(),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: dividerColor,
                    ),
                  ),
                  color: chatBarMessage,
                ),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                        ),),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.attach_file,
                        color: Colors.grey,
                      ),),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 15),
                        child: TextField(
                          decoration:InputDecoration(
                            filled: true,
                            fillColor: searchBarColor,
                            hintText: 'Type a message',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            contentPadding: const EdgeInsets.only(left: 20)
                          ) ,
                        ),

                      ),
                    ),
                    Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mic,
                          color: Colors.grey,
                        ),),

                    ),
                    Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send,
                          color: Colors.grey,
                        ),),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
