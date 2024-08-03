import 'package:flutter/material.dart';
class ReimbursementPage extends StatelessWidget {
  const ReimbursementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff0D47A1),
                  Color(0xff212121),
                ])
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 50, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_outlined),
                        color: Colors.white,
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        iconSize: 25,


                      ),
                      SizedBox(width: 10,),
                      Text('Reimbursement',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                        ),
                      ),
                    ],
                  ),
                  // Text('2023-03',
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontSize: 20,
                  //   ),
                  // ),
                ],

              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300]
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                    ),

                    padding: EdgeInsets.all(20.0),
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(

                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.fromLTRB(0, 0, 0,20.0 ),
                          child: Text(
                            'Salary Details',
                            style:
                            TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                            ),

                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.paid_outlined),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Salary',)
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.request_page_outlined,

                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Pay Slip',)
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.currency_exchange_outlined),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Earnings',)
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.redeem_outlined),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Benefits',)
                              ],
                            )

                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(30.0, 30.0, 0,10 ),
                    child: Text(
                      'Processed Claims (5)',
                      style:
                      TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                    ),

                    padding: EdgeInsets.all(20.0),
                    margin: EdgeInsets.fromLTRB(10,2,10,5),
                    child: Column(
                      children: [
                        Container(

                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.fromLTRB(0, 0, 0,20.0 ),
                          child: Text(
                            'Salary Details',
                            style:
                            TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                            ),

                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.paid_outlined),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Salary',)
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.request_page_outlined,

                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Pay Slip',)
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.currency_exchange_outlined),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Earnings',)
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.redeem_outlined),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Benefits',)
                              ],
                            )

                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                    ),

                    padding: EdgeInsets.all(20.0),
                    margin: EdgeInsets.fromLTRB(10, 2, 10, 5),
                    child: Column(
                      children: [
                        Container(

                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.fromLTRB(0, 0, 0,20.0 ),
                          child: Text(
                            'Salary Details',
                            style:
                            TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                            ),

                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.paid_outlined),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Salary',)
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.request_page_outlined,

                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Pay Slip',)
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.currency_exchange_outlined),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Earnings',)
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.redeem_outlined),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Benefits',)
                              ],
                            )

                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                    ),

                    padding: EdgeInsets.all(20.0),
                    margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                    child: Column(
                      children: [
                        Container(

                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.fromLTRB(0, 0, 0,20.0 ),
                          child: Text(
                            'Salary Details',
                            style:
                            TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                            ),

                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.paid_outlined),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Salary',)
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.request_page_outlined,

                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Pay Slip',)
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.currency_exchange_outlined),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Earnings',)
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.redeem_outlined),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Benefits',)
                              ],
                            )

                          ],
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),

        ],
      )
    );
  }
}
