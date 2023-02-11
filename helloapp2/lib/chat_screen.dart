import 'dart:async';

import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'chatmessage.dart';
import 'threedots.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();

  final List<ChatMessage> _messages = [];

  ChatGPT? chatGPT;

  StreamSubscription? _subscription;
  bool _isTyping = false;

  @override
  void initState() {
    super.initState();
    chatGPT = ChatGPT.instance;
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

// Link for api =- https://beta.openai.com/account/api-keys
//  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

  void _sendMessage() {
    ChatMessage messages = ChatMessage(
      text: _controller.text,
      sender: "user",
    );

    setState(() {
      _messages.insert(0, messages);
      _isTyping = true;
    });

    _controller.clear();

    final request = CompleteReq(
        prompt: messages.text, model: kTranslateModelV3, max_tokens: 200);

    _subscription = chatGPT!
        .builder("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")
        .onCompleteStream(request: request)
        .listen((response) {
      Vx.log(response!.choices[0].text);
      ChatMessage botMessage =
          ChatMessage(text: response.choices[0].text, sender: 'bot');

      setState(() {
        _isTyping = false;
        _messages.insert(0, botMessage);
      });
    });
  }

  Widget _buildTextComposer() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _controller,
            onSubmitted: (value) => _sendMessage,
            decoration: InputDecoration.collapsed(
              hintText: "Send a message",
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.send),
          onPressed: () => _sendMessage(),
        )
      ],
    ).px16();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chat AI GPT")),
      body: Column(
        children: [
          Flexible(
              child: ListView.builder(
            reverse: true,
            padding: Vx.m8,
            itemCount: _messages.length,
            itemBuilder: (context, index) {
              return _messages[index];
            },
          )),
          if (_isTyping) ThreeDots(),
          Divider(
            height: 1.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: context.cardColor,
            ),
            child: _buildTextComposer(),
          )
        ],
      ),
    );
  }
}
