import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class chat_screen extends StatefulWidget {
  const chat_screen({super.key});

  @override
  State<chat_screen> createState() => _chat_screenState();
}

class _chat_screenState extends State<chat_screen> {
  final List<Message> _messages = [
    Message(
      text: 'i\'m fine, thanks, how about you?',
      date: DateTime.now().subtract(
        const Duration(days: 0, minutes: 3),
      ),
      isSentByMe: true,
    ),
    Message(
      text: 'Hi',
      date: DateTime.now().subtract(
        const Duration(days: 3, minutes: 1),
      ),
      isSentByMe: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          color: Colors.black,
          iconSize: 30,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Chat', style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        children: [
          Expanded(
            child: GroupedListView<Message, DateTime>(
              padding: const EdgeInsets.all(8),
              useStickyGroupSeparators: true,
              floatingHeader: true,
              elements: _messages,
              groupBy: (messages) => DateTime(
                messages.date.year,
                messages.date.month,
                messages.date.day,
              ),
              groupHeaderBuilder: (Message messages) => SizedBox(
                height: 40,
                child: Center(
                  child: Card(
                    color: const Color.fromRGBO(25, 164, 206, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        DateFormat.yMMMd().format(messages.date),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),  
              ),
              itemBuilder: ((context, Message messages) => Align(
                alignment: messages.isSentByMe 
                  ? Alignment.centerRight 
                  : Alignment.centerLeft,
                child: Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(messages.text),
                  )
                ),
              )),
            ),
          ),
          Container(
            color: Colors.grey.shade300,
            child: TextField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(12),
                hintText: 'Type your message here....',
              ),
              onSubmitted: (text) {
                final message = Message(
                  text: text,
                  date: DateTime.now(),
                  isSentByMe: true,
                );
                
                setState(() => _messages.add(message));
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;

  const Message({
    required this.text,
    required this.date,
    required this.isSentByMe,
  });
}
