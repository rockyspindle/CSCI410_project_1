import 'package:flutter/material.dart';

class Work extends StatelessWidget {
  const Work({Key?key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Job seeker visa"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: MyBullet(),
              title: Text("Two fully completed application forms. Printed and signed at the end."),
            ),
            ListTile(
              leading: MyBullet(),
              title: Text("Two passport photographs"),
            ),
            ListTile(
              leading: MyBullet(),
              title: Text("Valid national passport"),
            ),
            ListTile(
              leading: MyBullet(),
              title: Text("Your driver’s license and/or utility bill in your name as proof of residence in the territory of the consulate where you plan to apply."),
            ),
            ListTile(
              leading: MyBullet(),
              title: Text("Compulsory certificate from German employer, valid from date of employment. "),
            ),
            ListTile(
              leading: MyBullet(),
              title: Text("An employment contract / binding job offer with details of gross annual salary and a detailed description of the employment in Germany"),
            ),
            ListTile(
              leading: MyBullet(),
              title: Text("Approval by the Federal Employment Agency (If applicable)."),
            ),
            ListTile(
              leading: MyBullet(),
              title: Text("Your updated CV, which indicates your academic qualifications and your job experience."),
            ),
            ListTile(
              leading: MyBullet(),
              title: Text("Proof of Qualification. Diplomas, Certificates, Mark-sheets etc., or anything similar that proves your qualifications."),
            ),
            ListTile(
              leading: MyBullet(),
              title: Text("Personal employment visa cover letter explaining the exact purpose and duration of stay."),
            ),
            ListTile(
              leading: MyBullet(),
              title: Text("Proof of a clean criminal record."),
            ),
            ListTile(
              leading: MyBullet(),
              title: Text("Proof of paid visa fee. The visa fee for a German long-stay visa is €75."),
            ),
            ListTile(
              leading: MyBullet(),
              title: Text("Declaration of Accuracy of Information."),
            )
          ],
        ),

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