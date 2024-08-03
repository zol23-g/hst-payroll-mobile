import 'package:flutter/material.dart';
import 'package:hst_payroll/investment/investmentPage.dart';
import 'package:hst_payroll/medical_loan/medicalLoanPage.dart';
import 'package:hst_payroll/payslip/payslip.dart';
import 'package:hst_payroll/reimbursements/reimbursement.dart';

class IntroductoryPage extends StatefulWidget {
  @override
  _IntroductoryPageState createState() => _IntroductoryPageState();
}

class _IntroductoryPageState extends State<IntroductoryPage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('XYZ Corp',
          // style:TextStyle(fontFamily: 'BodoniModa'),
        ),
        centerTitle: true,
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 30.0), // Add left margin
        //   child: IconButton(
        //     icon: Icon(Icons.notifications_outlined),
        //     onPressed: () {
        //       // Handle notification icon press
        //     },
        //   ),
        // ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 30.0), // Add right margin
            child: IconButton(
              icon: Icon(Icons.settings_outlined),
              onPressed: () {
                // Handle settings icon press
              },
            ),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff0D47A1),
                  Color(0xff212121),
                ]
                ),
              ),
              child: Image(image: AssetImage("assets/images/hst_logo_solid.png"))
              // Text(
              //   'HST Payroll',
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 24,
              //   ),
              // ),
            ),
            ListTile(
              leading: Icon(Icons.find_in_page_outlined),
              title: Text('Reimbursements'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ReimbursementPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.signal_cellular_alt_outlined),
              title: Text('Investments'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>InvestmentScreen()));
              }
            ),
            ListTile(
              leading: Icon(Icons.medical_services_outlined),
              title: Text('Medical Loan'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicalLoanScreen()));
              }
            ),
            ListTile(
              leading: Icon(Icons.article_outlined),
              title: Text('Payslip'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PayslipScreen()));
              }
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.privacy_tip_outlined),
              title: Text('Privacy'),
              onTap: () {
                // Handle item 3 tap
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text('Settings'),
              onTap: () {
                // Handle item 3 tap
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Container(

            margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
            // color: Colors.lightBlueAccent,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xff0D47A1),
                    Color(0xff212121),
                  ]
              ),
              // color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
            ),
            height: MediaQuery.of(context).size.height * 0.5, // Set the height to 80% of the screen height
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: <Widget>[
                // Define your intro pages here
                _buildIntroPage(
                  image: 'assets/images/Animation3.gif',
                  title: 'HST Payroll',
                  description: 'Access all your payroll related information like payslips, investments and more!',
                ),
                _buildIntroPage(
                  image: 'assets/images/Animation5.gif',
                  title: 'Explore Features',
                  description: 'Discover all the cool features!',
                ),
                _buildIntroPage(
                  image: 'assets/images/Animation6.gif',
                  title: 'Get Started',
                  description: 'Start using the app now!',
                ),
              ],
            ),

          ),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
Column(
  crossAxisAlignment: CrossAxisAlignment.end,

  children: [

    Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.fromLTRB(30.0, 20.0, 0,0 ),
      child: Text(
          'Quick Actions',
        style:
        TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),

      ),
    ),
    Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
      ),

      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
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
    Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
          ),

          padding: EdgeInsets.all(15.0),
          margin: EdgeInsets.fromLTRB(30, 1, 10, 1),
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
        GestureDetector(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ReimbursementPage()));},
          child: Row(
            children: [
              Icon(Icons.find_in_page_outlined),
              SizedBox(width: 5,),
              Text('Reimbursements')
            ],
          ),
        ),
                ],
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
          ),

          padding: EdgeInsets.all(15.0),
          margin: EdgeInsets.fromLTRB(0, 1, 30, 1),
          child: Column(
            children: [

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>InvestmentScreen()));
                },

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.signal_cellular_alt_outlined),
                        SizedBox(width: 5,),
                        Text('Investments')
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ],
),

        ],
      ),


    );

  }

  Widget _buildIntroPage({required String image,required String title, required String description}) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage(image))
          ,
          SizedBox(height: 32.0),
          Text(
            title,
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          SizedBox(height: 16.0),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Montserrat',
               color: Colors.white
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++) {
      indicators.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return indicators;
  }

  Widget _indicator(bool isActive) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      height: 8.0,
      width: isActive ? 24.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xff0D47A1) : Colors.grey,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}
