import 'package:flutter/material.dart';
import 'package:instagram_clone_flutter/widgets/Avatars.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(),
      body: Container(
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return MyCard();
          },
        ),
      ),
    );
  }

  AppBar topBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.add_box_outlined, color: Colors.black),
      ),
      title: Text(
        "Instagram",
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chat,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Custom post card"),
          Avatars(),
        ],
      ),
    );
  }
}
