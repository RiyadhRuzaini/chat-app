import 'package:chat_1/view/chat.dart';
import 'package:chat_1/view/status.dart';
import 'package:flutter/material.dart';

class Navigasi extends StatefulWidget {
  const Navigasi({Key? key}) : super(key: key);

  @override
  State<Navigasi> createState() => _NavigasiState();
}

class _NavigasiState extends State<Navigasi>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                color: Colors.teal[600],
                child: Stack(
                  children: [
                    Container(
                      height: 40,
                      padding: const EdgeInsets.all(12),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              child: const Text(
                                'Chatting',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              width: 20,
                              height: 20,
                              child: InkWell(
                                child: const Icon(Icons.more_vert),
                                onTap: () {},
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        child: TabBar(
                          indicatorColor: Colors.tealAccent,
                          controller: tabController,
                          labelColor: Colors.tealAccent,
                          unselectedLabelColor: Colors.grey,
                          labelStyle: const TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                          ),
                          tabs: const [
                            Tab(
                              text: "Chat",
                            ),
                            Tab(
                              text: "Status",
                            ),
                            Tab(
                              text: "Pemanggilan",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                ListChat(),
                StatusScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
