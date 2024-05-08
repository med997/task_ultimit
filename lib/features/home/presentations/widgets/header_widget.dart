import 'package:flutter/material.dart';
import 'package:task_ultimit/features/home/presentations/widgets/text_feild_widget.dart';
import 'package:task_ultimit/shared/colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white38,
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.menu,
            color: colorGreen,
          ),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(colorGray),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    'Create',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ],
              )),
          SizedBox(
            width: 10,
          ),
          TextFieldWidget(),
          /* */
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.notifications,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.mail,
          ),
          CircleAvatar(
            radius: 20,
            child: Image.asset("img/onyx_ix_logo.png"),
          )
        ],
      ),
    );
  }
}
