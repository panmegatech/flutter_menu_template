import 'package:flutter/material.dart';
import 'package:flutter_menu/orders/orders_order.dart';

class OrdersOrderListItemPage extends StatelessWidget {
  final OrdersOrder order;

  const OrdersOrderListItemPage({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order ID: ${order.orderId}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$${order.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              order.productName,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Status: ${order.status}',
                  style: TextStyle(color: getStatusColor(order.status)),
                ),
                Icon(
                  getStatusIcon(order.status),
                  color: getStatusColor(order.status),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to get status color
  Color getStatusColor(String status) {
    switch (status) {
      case 'Shipped':
        return Colors.black;
      case 'Processing':
        return Colors.black;
      case 'Delivered':
        return Colors.green;
      case 'Cancelled':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  // Helper function to get status icon
  IconData getStatusIcon(String status) {
    switch (status) {
      case 'Shipped':
        return Icons.local_shipping;
      case 'Processing':
        return Icons.access_time;
      case 'Delivered':
        return Icons.check_circle;
      case 'Cancelled':
        return Icons.cancel;
      default:
        return Icons.info;
    }
  }
}
