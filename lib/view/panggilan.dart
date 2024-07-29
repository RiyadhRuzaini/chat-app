import 'package:flutter/material.dart';

class PanggilanPage extends StatefulWidget {
  const PanggilanPage({super.key});

  @override
  State<PanggilanPage> createState() => _PanggilanPageState();
}

class _PanggilanPageState extends State<PanggilanPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      itemBuilder: (context, index) {
        return Container();
      },
    );
  }
}
