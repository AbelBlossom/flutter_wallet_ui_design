import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_ui_design/pages/topup.dart';
import 'package:wallet_ui_design/widgets/profile.dart';
import 'package:wallet_ui_design/widgets/transaction.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              height: 200,
              // padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xfffecaba),
              ),
              child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      ...List.generate(
                        6,
                        (index) => ProfileIcon(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned.fill(
              top: 170,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      top: 5,
                      child: ListView(
                        padding: EdgeInsets.only(top: 250),
                        physics: BouncingScrollPhysics(),
                        children: [
                          ...List.generate(
                            50,
                            (index) => Transaction(
                              isActive: index % 3 != 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25),
                        ),
                        color: Colors.white,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 0,
                            left: 0,
                            top: 2,
                            child: Icon(
                              Icons.keyboard_arrow_up_sharp,
                              color: Colors.grey,
                            ),
                          ),
                          Positioned(
                            left: 30,
                            top: 30,
                            child: Container(
                              padding: EdgeInsets.all(7),
                              child: Icon(Icons.notifications, size: 17),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 80,
                            left: 30,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Balance",
                                  style: TextStyle(fontSize: 17),
                                ),
                                Text(
                                  "GHS 1,045.00",
                                  style: TextStyle(fontSize: 35),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            top: 170,
                            left: 30,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (_) => TopUp(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 85,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Text(
                                    "Top Up",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
