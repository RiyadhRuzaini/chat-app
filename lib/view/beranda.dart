import 'package:chat_1/component/barTopView.dart';
import 'package:chat_1/view/chat.dart';
import 'package:chat_1/view/status.dart';
import 'package:flutter/material.dart';

class BerandaChat extends StatefulWidget {
  const BerandaChat({super.key});

  @override
  State<BerandaChat> createState() => _BerandaChatState();
}

class _BerandaChatState extends State<BerandaChat> {
  final int _activePage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text('Chatting'),
      ),
      body: _viewScreens(),
    );
  }

  Widget _viewScreens() => Container(
        child: IndexedStack(
          index: _activePage,
          children: const [
            ListChat(),
            StatusScreen(),
          ],
        ),
      );

  // Widget _topBar() {
  //   return Container(child:,);
  // }
}
