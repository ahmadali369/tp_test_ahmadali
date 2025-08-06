import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildHeader() {
  return Container(
    padding: const EdgeInsets.all(16),
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.menu, size: 28),

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text(
              'OnlineShop',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'ECOMMERCE APPLICATION',
              style: TextStyle(
                fontSize: 10,
                color: Colors.red,
              ),
            ),
          ],
        ),
        const Icon(Icons.search, size: 28),
      ],
    ),
  );
}