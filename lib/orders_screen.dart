import 'package:flutter/material.dart';
import 'package:flutter_menu/orders/orders_order_list_item_page.dart';
import 'package:flutter_menu/orders/orders_order.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  final List<OrdersOrder> orders = [
    OrdersOrder(
        orderId: '12345',
        productName: 'Smartphone',
        price: 599.99,
        status: 'Shipped'),
    OrdersOrder(
        orderId: '67890',
        productName: 'Laptop',
        price: 1299.99,
        status: 'Processing'),
    OrdersOrder(
        orderId: '11223',
        productName: 'Wireless Earbuds',
        price: 99.99,
        status: 'Delivered'),
    OrdersOrder(
        orderId: '44556',
        productName: 'Smartwatch',
        price: 199.99,
        status: 'Cancelled'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders Screen'),
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          return OrdersOrderListItemPage(order: orders[index]);
        },
      ),
    );
  }
}
