import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Avatars extends StatefulWidget {
  const Avatars({
    Key? key,
  }) : super(key: key);

  @override
  State<Avatars> createState() => _AvatarsState();
}

class _AvatarsState extends State<Avatars> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          yourstory(),
          for (var i = 0; i < 9; i++) avatar(number: i),
        ],
      ),
    );
  }

  GestureDetector yourstory() {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.blue,
                  backgroundImage: NetworkImage(
                      'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 10,
                    child: Icon(Icons.add_circle_outline_rounded),
                  ),
                )
              ],
            ),
            Text("your story")
          ],
        ),
      ),
    );
  }
}

Padding avatar({int? number = 0}) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.blue,
          backgroundImage: NetworkImage(
              'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
        ),
        Text("username $number")
      ],
    ),
  );
}
