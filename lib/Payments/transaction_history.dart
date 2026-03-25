import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spree/Payments/transaction_card.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> transactions = [
      {
        "vendorName": "Food Stall A",
        "date": "25 Mar",
        "time": "7:45 PM",
        "amount": "120",
      },
      {
        "vendorName": "Coffee Corner",
        "date": "25 Mar",
        "time": "6:10 PM",
        "amount": "80",
      },
      {
        "vendorName": "Merch Booth",
        "date": "24 Mar",
        "time": "5:30 PM",
        "amount": "350",
      },
      {
        "vendorName": "Top-Up",
        "date": "24 Mar",
        "time": "3:00 PM",
        "amount": "1000",
      },
      {
        "vendorName": "Ice Cream Truck",
        "date": "23 Mar",
        "time": "9:15 PM",
        "amount": "60",
      },
      {
        "vendorName": "Game Zone",
        "date": "23 Mar",
        "time": "8:00 PM",
        "amount": "200",
      },
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'AVAILABLE BALANCE',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  fontSize: 14.h,
                  color: const Color.fromARGB(255, 130, 128, 128),
                ),
              ),
              Text(
                '₹4500',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 36.h,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30.h),
              Expanded(
                child: ListView.builder(
                  itemCount: transactions.length,
                  itemBuilder: (context, index) {
                    final tx = transactions[index];
                
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: TransactionCard(
                        vendorName: tx["vendorName"]!,
                        date: tx["date"]!,
                        time: tx["time"]!,
                        amount: tx["amount"]!,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
