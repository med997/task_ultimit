

import 'package:flutter/material.dart';

class CardDashboardWidget extends StatelessWidget {
  final String amount;
  final String title;
  final String bottomTxt;
  final Widget icons;

  CardDashboardWidget(
      {super.key,
      required this.amount,
      required this.title,
      required this.bottomTxt,
      required this.icons});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                       title,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.black45),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      bottomTxt,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                SizedBox(
                  width: 8,
                ),
                icons
              ],
            ),
          ],
        ),
      ),
    );
  }
}
