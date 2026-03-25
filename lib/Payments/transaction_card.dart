import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransactionCard extends StatelessWidget {
  final String time;
  final String date;
  final String amount;
  final String vendorName;

  const TransactionCard({
    super.key,
    required this.time,
    required this.date,
    required this.amount,
    required this.vendorName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w),
      child: Container(
        height: 82.h,
        width: 348.w,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: Color(0xFF1E1E1E),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            // 🔹 Left side (Vendor + Date/Time)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  vendorName,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16.h,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  '$date • $time',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 12.h,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

            Spacer(),

            // 🔹 Right side (Amount)
            Text(
              "₹ $amount",
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 16.h,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
