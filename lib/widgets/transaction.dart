import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  final bool isActive;
  const Transaction({Key key, this.isActive = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade200,
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Starbucks",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "1hr ago.",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          Text(
            "- GHS45.0",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: this.isActive ? Colors.grey.shade800 : Color(0xff7fb0c7),
            ),
          ),
        ],
      ),
    );
  }
}
