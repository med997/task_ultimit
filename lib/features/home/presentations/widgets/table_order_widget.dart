import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task_ultimit/features/home/presentations/models/product_model.dart';
import 'package:task_ultimit/shared/colors.dart';

import '../models/order_model.dart';

class TableOrderWidget extends StatelessWidget {
  TableOrderWidget({super.key});

  List<OrderModel> orderList = [
    OrderModel(
        cstName: "customer 1",
        orderId: "23331",
        price: 350,
        product: ProductModel(
            name: "product 1", imgUrl: "img/product/product1.png")),
    OrderModel(
        cstName: "customer 2",
        orderId: "23332",
        price: 2010,
        product: ProductModel(
            name: "product 2", imgUrl: "img/product/product2.png")),
    OrderModel(
        cstName: "customer 3",
        orderId: "23333",
        price: 521,
        product: ProductModel(
            name: "product 3", imgUrl: "img/product/product3.png")),
    OrderModel(
        cstName: "customer 4",
        orderId: "23334",
        price: 5231,
        product: ProductModel(
            name: "product 4", imgUrl: "img/product/product4.png")),
    OrderModel(
        cstName: "customer 5",
        orderId: "23335",
        price: 5121,
        product: ProductModel(
            name: "product 5", imgUrl: "img/product/product5.png")),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Table(

          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            const TableRow(

                decoration: BoxDecoration(color: colorTblHdr,
                    border: Border(right: BorderSide(width: 1,color: colorBg2)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    shape: BoxShape.rectangle),
                children: [

              TableCell(child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                child: Text("orderId"),
              ),),
              TableCell(child: Text("Product")),
              TableCell(child: Text("Customer")),
              TableCell(child: Text("Price")),
            ]),
            ...orderList.map((e) => TableRow(children: [
                  TableCell(child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(e.orderId),
                  )),
                  TableCell(
                      child: ListTile(

                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        e.product.imgUrl,
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    title: Text(e.product.name),
                  )),
                  TableCell(child: Text(e.cstName)),
                  TableCell(child: Text("\$ ${e.price}")),
                ]))
          ],
        ),
      ),
    );
  }
}
