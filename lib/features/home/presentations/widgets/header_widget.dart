import 'dart:js_interop';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_ultimit/core/widgets/responsive.dart';
import 'package:task_ultimit/features/home/presentations/widgets/text_feild_widget.dart';
import 'package:task_ultimit/shared/colors.dart';

import '../bloc/navigations/navigation_drawer_bloc.dart';

class HeaderWidget extends StatelessWidget {
   GlobalKey<ScaffoldState>? scaffoldKey;
  HeaderWidget(  {super.key,  this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white38,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.start,
            runAlignment: WrapAlignment.start,
            spacing: 8,
            children: [
              BlocBuilder<NavigationDrawerBloc, NavigationDrawerState>(
                builder: (context, state) {
                  return InkWell(
                    child: const Icon(
                      Icons.menu,
                      color: colorGreen,
                    ),
                    onTap: () {
                      if(Responsive.isDesktop(context)){
                        var isOpen =  context.read<NavigationDrawerBloc>().state.isOpen;
                        context
                            .read<NavigationDrawerBloc>()
                            .add(ChangeDrawerView(isOpen: !isOpen));
                      }
                      else{
                        scaffoldKey?.currentState?.openDrawer();
                      }
                  });
                },
              ),
              
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(colorGray),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))))),
                  onPressed: () {},
                  child:  Row(
                    children: [
                      if(Responsive.isDesktop(context))
                      const Text(
                        'Create',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 14,
                      ),
                    ],
                  )),
            ],
          ),

          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            spacing:12,
            children: [
              if(Responsive.isDesktop(context))
              TextFieldWidget(),
              /* */
              const Badge(
                label: Text("10"),
                child: Icon(
                  Icons.notifications,
                ),
              ),
              const Badge(
                label: Text("10"),
                child: Icon(
                  Icons.mail,
                ),
              ),
              ClipOval(
                child: Image.asset("img/profile.png",
                  width: 35, height: 35, fit: BoxFit.cover,),
              )
            ],
          ),
        ],
      ),
    );
  }
}
