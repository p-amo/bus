import 'package:bus/widgets/post_app_bar.dart';
import 'package:bus/widgets/post_bottom_bar.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('images/city10.jpeg'),
        fit: BoxFit.cover,
        opacity: 0.7,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: PostAppBar(),
        ),
        bottomNavigationBar: PostBottomBar(),
      ),
    );
  }
}
