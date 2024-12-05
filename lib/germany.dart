import 'package:flutter/material.dart';
import 'germany_jobseeker.dart';
import 'germany_work.dart';

class Germany extends StatelessWidget {
  const Germany({Key?key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Germany"),
        centerTitle: true,
      ),
      body: Center(
    child: Column(children: [
      const SizedBox(height: 30,),
      SizedBox(width: double.infinity,height: 60,
        child: ElevatedButton(onPressed: () {Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const JobSeeker())
          );}, child: const Align(
            alignment: Alignment.centerLeft,
            child: Text("Job seeker visa",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.left,
              ),
            ),
          )
        ),
      const SizedBox(height: 5,),
      SizedBox(width: double.infinity,height: 60,
          child: ElevatedButton(onPressed: () {Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const Work())
          );}, child: const Align(
            alignment: Alignment.centerLeft,
            child: Text("Work visa",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.left,
            ),
          ),
          )
      ),
      const SizedBox(height: 5,),
      ])
      )
    );
  }
}