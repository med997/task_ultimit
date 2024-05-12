import 'package:task_ultimit/features/home/presentations/models/product_model.dart';

class OrderModel{
  final String orderId;
  final ProductModel product;
  final String cstName;
  final double price;

  OrderModel({required this.orderId, required this.product,
    required this.cstName, required this.price});

}