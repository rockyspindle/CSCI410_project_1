import 'package:flutter/material.dart';
import 'construction.dart';
class Qatar extends StatelessWidget {
  const Qatar({Key?key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Qatar"),
          centerTitle: true,
        ),
        body: Center(
            child: Column(children: [
              const SizedBox(height: 30,),
              SizedBox(width: double.infinity,height: 60,
                  child: ElevatedButton(onPressed: () {Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Construction())
                  );}, child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Under Construction",
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  )
              ),
            ])
        )
    );
  }
}