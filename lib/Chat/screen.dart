import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:zuki_laundry/bottomnav.dart';

class chat_screen extends StatefulWidget {
  const chat_screen({super.key});

  @override
  State<chat_screen> createState() => _chat_screenState();
}

class _chat_screenState extends State<chat_screen> {
  List<Message> _messages = [
    Message(
      text: 'i\'m fine, thanks, how about you?',
      date: DateTime.now().subtract(
        const Duration(days: 0, minutes: 3),
      ),
      isSentByMe: false,
    ),
    Message(
      text: 'Hello there, how are you?',
      date: DateTime.now().subtract(
        const Duration(days: 0, minutes: 2),
      ),
      isSentByMe: true,
    ),
    Message(
      text: 'Hiiiiii',
      date: DateTime.now().subtract(
        const Duration(days: 0, minutes: 1),
      ),
      isSentByMe: false,
    ),
    Message(
      text: 'Aaaa its okayy',
      date: DateTime.now().subtract(
        const Duration(days: 1, minutes: 3),
      ),
      isSentByMe: true,
    ),
    Message(
      text: 'Awww thank you! 😊',
      date: DateTime.now().subtract(
        const Duration(days: 1, minutes: 2),
      ),
      isSentByMe: false,
    ),
    Message(
      text: 'Happy birthday!',
      date: DateTime.now().subtract(
        const Duration(days: 1, minutes: 1),
      ),
      isSentByMe: true,
    ),
    Message(
      text: 'I\'m fine, thanks',
      date: DateTime.now().subtract(
        const Duration(days: 3, minutes: 4),
      ),
      isSentByMe: true,
    ),
    Message(
      text: 'How are you?',
      date: DateTime.now().subtract(
        const Duration(days: 3, minutes: 3),
      ),
      isSentByMe: false,
    ),
    Message(
      text: 'Hello',
      date: DateTime.now().subtract(
        const Duration(days: 3, minutes: 2),
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
  ].reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
      body: Column(children: [
        Expanded(
          child: GroupedListView<Message, DateTime>(
            padding: const EdgeInsets.all(8),
            // order: GroupedListOrder.DESC,
            useStickyGroupSeparators: true,
            floatingHeader: true,
            elements: _messages,
            groupBy: (_messages) => DateTime(
              _messages.date.year,
              _messages.date.month,
              _messages.date.day,
            ),
            groupHeaderBuilder: (Message _messages) => SizedBox(
              height: 40,
              child: Center(
                child: Card(
                  color: Color.fromRGBO(25, 164, 206, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      DateFormat.yMMMd().format(_messages.date),
                      style: const TextStyle(color: Colors.white,
                      ),
                      
                    ),
                  ),
                ),
              ),  
            ),
            itemBuilder: ((context, Message _messages) => Align(
              alignment: _messages.isSentByMe 
                ? Alignment.centerRight 
                : Alignment.centerLeft,
              child: Card(
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(_messages.text),
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
              
              setState(() =>
                _messages.add(message)
              );
            },
          ),
        ),
        
      ],),
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
