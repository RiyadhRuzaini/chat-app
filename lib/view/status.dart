import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 20,
      ),
      itemCount: 10,
      itemBuilder: (context, index) => Container(
        height: 50,
        color: Colors.white54,
        child: Expanded(
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
      ),
    );
  }
}
