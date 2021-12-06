import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:shared_task1/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: IconButton(
                onPressed: () {},
                icon: Icon(MaterialCommunityIcons
                    .arrow_left), //Icons.arrow_back_outlined
              ),
            ),

            SizedBox(height: 30),
            Center(
              child: Container(
                child: Text(
                  "Let`s Get Started",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "Create an account to Q Allure to get all features",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 40),
            // #User
            Container(
              padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(171, 171, 171, 0.7),
                      blurRadius: 60,
                      offset: Offset(0, 10)),
                ],
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "User",
                    hintStyle: TextStyle(color: Colors.blue, fontSize: 18),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Feather.user,
                      color: Colors.blue,
                      size: 22,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            // #Email
            Container(
              padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(171, 171, 171, 0.7),
                    blurRadius: 60,
                    offset: Offset(0, 10),
                  ),
                ],
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                    ),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.blue,
                      size: 22,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            // #Phone
            Container(
              padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(171, 171, 171, 0.7),
                      blurRadius: 60,
                      offset: Offset(0, 10)),
                ],
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Phone",
                    hintStyle: TextStyle(color: Colors.blue, fontSize: 18),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Feather.smartphone,
                      color: Colors.blue,
                      size: 22,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            // #Password

            Container(
              padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(171, 171, 171, 0.7),
                      blurRadius: 60,
                      offset: Offset(0, 10)),
                ],
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.blue, fontSize: 18),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Feather.lock,
                      color: Colors.blue,
                      size: 22,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            // #Password
            Container(
              padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(171, 171, 171, 0.7),
                      blurRadius: 60,
                      offset: Offset(0, 10)),
                ],
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(color: Colors.blue, fontSize: 18),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Feather.lock,
                      color: Colors.blue,
                      size: 22,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 80),
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromRGBO(21, 81, 207, 1),
              ),
              child: Center(
                child: Text(
                  "CREATE",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Login here",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
