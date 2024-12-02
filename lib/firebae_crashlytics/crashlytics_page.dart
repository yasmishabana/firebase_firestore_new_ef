import 'package:firebase_firestore_new_ef/res.dart';
import 'package:flutter/material.dart';

class CrashlyticsPage1 extends StatelessWidget {
  const CrashlyticsPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: [
          // Image.asset(
          //   'assets/firebase_logo.png',
          //   height: 20,
          // ),
          // SizedBox(width: 8),
          Text(
            'Firebase',
            style: TextStyle(
              color: CustomColors.firebaseYellow,
              fontSize: 18,
            ),
          ),
          Text(
            ' Crashlytics',
            style: TextStyle(
              color: CustomColors.firebaseOrange,
              fontSize: 18,
            ),
          ),
        ],
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    CustomColors.firebaseOrange,
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {
                  throw Exception();
                },
                child: Text(
                  "Exception button",
                  style: TextStyle(color: Colors.black),
                )),
            ElevatedButton(
                onPressed: () {
                  throw FormatException('Format Exception');
                },
                child: Text("Format Exception button")),
          ],
        ),
      ),
    );
  }
}
