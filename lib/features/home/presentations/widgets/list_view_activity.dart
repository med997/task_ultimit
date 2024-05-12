import 'package:flutter/material.dart';
import 'package:task_ultimit/shared/colors.dart';

class ListViewActivityWidget extends StatelessWidget {
  ListViewActivityWidget({super.key});

  List<_ActivityItem> activityItm = <_ActivityItem>[
    _ActivityItem(
        title: "Successful Purched",
        subTitle: "product id :18222",
        icon: Icon(Icons.shopping_cart_outlined,color: Colors.white,),
      color: colorGreen
    ),
    _ActivityItem(
        title: "Successful Purched",
        subTitle: "product id :18222",
      icon: Icon(Icons.shopping_cart_outlined,color: Colors.white,),
        color: colorBlue
    ),
    _ActivityItem(
        title: "Successful Purched",
        subTitle: "product id :18222",
        icon: Icon(Icons.shopping_cart_outlined,color: Colors.white,),
        color: colorPrup
    ),
    _ActivityItem(
        title: "Successful Purched",
        subTitle: "product id :18222",
        icon: Icon(Icons.shopping_cart_outlined,color: Colors.white,),
    color: colorRed),
    _ActivityItem(
        title: "Successful Purched",
        subTitle: "product id :18222",
        icon: Icon(Icons.shopping_cart_outlined,color: Colors.white,),

      color: colorDarkOrange
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          _ActivityItem item = activityItm[index];
          return ListTile(
            title: Text(item.title, style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text(item.subTitle),
            leading: CircleAvatar(
              backgroundColor:item.color,
              child: item.icon,
            ) ,

          );
        },
        itemCount: activityItm.length,
      ),
    );
  }
}

class _ActivityItem {
  final String title;
  final String subTitle;
  final Widget icon;
  final Color color;

  _ActivityItem(
      {required this.title, required this.subTitle, required this.icon, required this.color});
}
