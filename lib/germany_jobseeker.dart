import 'package:flutter/material.dart';

class JobSeeker extends StatelessWidget {
  const JobSeeker({Key?key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Job seeker visa"),
        centerTitle: true,
      ),
      body:  SingleChildScrollView(
        child: Column(
        children: [
           ListTile(
             leading: MyBullet() ,
            title: Text("submit a filled-out and signed application form for your job seeker visa from VFS global."),),
          ListTile(
            leading: MyBullet() ,
            title: Text("provide a valid passport issued during the last ten years with two blank pages and a minimum of three months validity after leaving Germany."),
          ),
          ListTile(
            leading: MyBullet() ,
            title: Text("Provide passport-sized photographs"),
          ),
          ListTile(
            leading: MyBullet() ,
            title: Text("include proof of accommodation during your stay in Germany, such as hotel reservations, rental agreements, or an invitation letter in case you are staying with a friend or family member."),
          ),
          ListTile(
            leading: MyBullet(),
            title: Text("Proof of blocked account (Sperrkonto) in your name showing a minimum of €947 that can cover your expenses per month."),
          ),
          ListTile(
            leading: MyBullet(),
            title: Text("Or a declaration of commitment (Verpflichtungserklärung) written by your inviter stating that they will cover all of your expenses."),
          ),
          ListTile(
            leading: MyBullet(),
            title: Text("submit proof of valid travel health insurance meeting the insurance requirements with a minimum of €30,000 for medical coverage."),
          ),
          ListTile(
            leading: MyBullet(),
            title: Text("submit proof of academic and professional qualifications, including your university degree, transcripts, vocational training certificates recognized by the Central Office for Foreign Education."),
          ),
          ListTile(
            leading: MyBullet(),
            title: Text("Submit a copy of your detailed CV with your personal information, including your academic and professional qualifications."),
          ),
          ListTile(
            leading: MyBullet(),
            title: Text("Provide a cover letter or motivational letter stating your reasons for applying for a job seeker visa in Germany and what you plan to do if your visa is granted."),
          )
        ],
      )
    ),
    );

  }
}

class MyBullet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.0,
      width: 5.0,
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}