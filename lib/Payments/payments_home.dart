import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentsHome extends StatefulWidget {
  const PaymentsHome({super.key});

  @override
  State<PaymentsHome> createState() => _PaymentsHomeState();
}

class _PaymentsHomeState extends State<PaymentsHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              Container(
                height: 175.h,
                width: 324.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    colors: [Color(0xFF642878), Colors.black],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 24.h,
                    horizontal: 24.w,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Current Fest Balance',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14.h,
                                  color: const Color.fromARGB(
                                    255,
                                    130,
                                    128,
                                    128,
                                  ),
                                ),
                              ),
                              Text(
                                '₹2450',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 30.h,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.account_balance_wallet_outlined,
                            size: 60.h,
                            color: const Color.fromARGB(
                              255,
                              97,
                              96,
                              96,
                            ).withOpacity(0.5),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: 40.h,
                        width: 292.w,
                        decoration: BoxDecoration(
                          color: Color(0xFF1E828E),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_circle_outline,
                                size: 15.h,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                'Add Money',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14.h,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              GestureDetector(
                onTap: () {
                  print('Scanned');
                },
                child: Container(
                  height: 175.h,
                  width: 324.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      colors: [Color(0xFFFF781E), Color(0xFFA01414)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.qr_code_scanner,
                        size: 40.h,
                        color: Colors.white,
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Scan QR Code',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20.h,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Pay vendors & food stalls',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 10.h,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 23.h),
              Container(
                height: 84.h,
                width: 324.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFF1E1E1E),
                  border: Border.all(color: Color(0xFF1E293B)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.history_outlined,
                      color: const Color.fromARGB(255, 70, 114, 93),
                      size: 30.h,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Transaction History',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16.h,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'View all past spends',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12.h,
                            color: const Color.fromARGB(255, 103, 103, 103),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromARGB(255, 94, 94, 94),
                      size: 20.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
