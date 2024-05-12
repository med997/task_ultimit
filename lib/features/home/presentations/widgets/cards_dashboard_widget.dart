import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_ultimit/shared/colors.dart';

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
    return Flexible(
      flex: 1,
      child: Card(
        child: Padding(
          padding:   const EdgeInsets.all(10.0),
          child: Row(
             crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Wrap(
                direction: Axis.vertical,
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  Text(
                    amount,
                    softWrap: true,
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    title,
                    softWrap: true,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black45),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    bottomTxt,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w100),
                  ),
                ],
              ),
             Container(
                    height: 40,
                  padding:EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                   borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: colorCrdIcon.withOpacity(0.1)
                  ),
                  child: icons )]),

        ),
      ),
    );
  }
}
