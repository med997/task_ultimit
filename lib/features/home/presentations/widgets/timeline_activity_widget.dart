import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_ultimit/shared/colors.dart';
import 'package:task_ultimit/shared/dimension.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLineActivityWidget extends StatelessWidget {
  const TimeLineActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildSingleCard(),
        Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Acivity Timeline",
                  softWrap: true,
                  style:
                TextStyle(fontWeight: FontWeight.bold,fontSize: mdSizeFont),),
              ),
              const Divider(thickness: 1,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                child: SizedBox(
                  height: 300,

                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TimelineTile(
                          alignment: TimelineAlign.start,
                          beforeLineStyle: const LineStyle(thickness: 0.5, color: colorGray),
                          indicatorStyle: const IndicatorStyle(
                              color: colorBlue,
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              width: 10, height: 10,
                              indicatorXY: 0.150),
                          axis: TimelineAxis.vertical,
                          lineXY: 0,
                          hasIndicator: true,
                          endChild: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "8 Invoice have been joined",
                                style:
                                    TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.picture_as_pdf,
                                    size: 18,
                                    color: colorRed,
                                  ),
                                   SizedBox( width: 5,),
                                  Flexible(

                                    child: Text(
                                      maxLines: 2,
                                      "Invoice have been Paid to ddddd d d dh company",
                                    
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  _buildSingleCard(){
    return Card(
      color: Colors.deepPurple.shade300,
      child: const Padding(
        padding: EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "Impressions",
              style: TextStyle(
                color: Colors.white,
                  fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Text(
              "\$12,875",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "compared to \$21,490 last year",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.white60),
            ),
          ],
        ),
      ),
    );
  }
}
