import 'package:flutter/material.dart';
import 'package:hst_payroll/loginPage/login.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xff0D47A1),
        Color(0xff212121),
        ]
        ),
      ),
        child: Column(
          children: [
         Padding(
           padding: const EdgeInsets.only(top: 200.0),
           child: Image(image: AssetImage('assets/images/hst_logo_solid.png')),
         ),
            SizedBox(
              height: 100,
            ),
            Text('Welcome Back',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
                fontSize: 30,
                color: Colors.white,

            ),),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));},
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),

                  border: Border.all(color: Colors.white),
                ),
                child: Center(
                  child: Text('SIGN IN',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white

                // border: Border.all(color: Colors.white),
              ),
              child: Center(
                child: Text('SIGN UP',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),),
              ),
            ),
          ],
        ),
    ),
    )
    ;
  }
}
