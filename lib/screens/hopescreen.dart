import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: Icon(Icons.search),
                      ),
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: Icon(Icons.notifications),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children:
                    ["New Requests", "Orders Pending", "Revenue"]
                        .map(
                          (e) => Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            margin: EdgeInsets.only(right: 8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border:
                                  e == "New Requests"
                                      ? null
                                      : Border.all(
                                        width: 0.25,
                                        color: Color(0xFF121212),
                                      ),
                              color:
                                  e == "New Requests"
                                      ? Colors.blueAccent
                                      : Colors.transparent,
                            ),
                            child: Text(
                              e,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color:
                                    e == "New Requests"
                                        ? Colors.white
                                        : Color(0xFF121212),
                              ),
                            ),
                          ),
                        )
                        .toList(),
              ),
              SizedBox(height: 8),
              Expanded(
                child: Container(
                  color: Colors.grey.shade200,
                  child: Column(
                    children:
                        ["New Requests", "Orders Pending", "Revenue"]
                            .map(
                              (e) => Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                  vertical: 8.0,
                                ),
                                height: 150,
                                width: double.infinity,
                                margin: EdgeInsets.only(bottom: 8.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    width: 0.25,
                                    color: Color(0xFF121212),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        padding: EdgeInsets.all(8),
                                        height: 60,
                                        width: double.infinity,
                                        color: Colors.grey.shade300,
                                        child: Row(
                                          children: [
                                            Container(
                                        height: 50,
                                        
                                        width: 50,
                                        color: Colors.grey.shade500,
                                      )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8,),
                                    Expanded(
                                      flex: 4,
                                      child: Container(
                                        height: 60,
                                        width: double.infinity,
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
