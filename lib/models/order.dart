import 'package:project/models/product.dart';

class Order {
  final String id;
  final List<Product> products;
  final double totalAmount;
  final DateTime dateTime;

  Order({
    required this.id,
    required this.products,
    required this.totalAmount,
    required this.dateTime,
  });
}
