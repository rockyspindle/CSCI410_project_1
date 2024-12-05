import 'package:flutter/material.dart';

class Construction extends StatelessWidget {
  const Construction({Key?key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coming Soon"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("This page is still in the works!",),
      )
    );

  }
}