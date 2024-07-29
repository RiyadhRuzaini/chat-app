import 'package:flutter/material.dart';

class ListChat extends StatefulWidget {
  const ListChat({super.key});

  @override
  State<ListChat> createState() => _ListChatState();
}

class _ListChatState extends State<ListChat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Container(
        height: 50,
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Icon(
                  Icons.image,
                  color: Colors.grey.withOpacity(0.7),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: const [
                  Expanded(
                    child: Text('Farhan'),
                  ),
                  Expanded(
                    child: Text('3mnt yg lalu'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
