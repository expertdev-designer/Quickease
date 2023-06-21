import 'package:flutter/material.dart';
import 'package:quikies/change_password.dart';
import 'package:quikies/privacy.dart';
import 'package:quikies/terms.dart';
import 'package:quikies/login_page.dart';
import 'package:quikies/wash_my_car.dart';
import 'package:quikies/widgets/app_large_text.dart';

void main() {
  runApp(const ProfilePage());
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white, // Set the background color here
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0), // Add padding here
              child: ListView(
                shrinkWrap: true,
                children: [
                  const SizedBox(height: 30.0),

                  Text(
                    'Profile page',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(height: 100,),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Name',
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ChangePassword()),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Icon(Icons.arrow_forward_ios_rounded),
                            ),
                          ),
                        ),
                        hintText: 'Change Password',
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                        ),
                        alignLabelWithHint: true,
                        contentPadding: EdgeInsets.all(10.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ChangePassword()),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Icon(Icons.arrow_forward_ios_rounded),
                            ),
                          ),
                        ),
                        hintText: 'Payment Info',
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                        ),
                        alignLabelWithHint: true,
                        contentPadding: EdgeInsets.all(10.0),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xff277FC1)),
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 70.0),
                          ),
                          textStyle: MaterialStateProperty.all<TextStyle>(
                            Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 18.0),
                          ),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        child: AppText(text: "Log Out", color: Color(0xffFFFFFF)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Terms()),
                        );
                      },
                      child: Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          color: Color(0xff277FC1),
                          fontSize: 14,
                          decorationThickness: 1.5,
                          decorationStyle: TextDecorationStyle.solid,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Privacy()),
                        );
                      },
                      child: Text(
                        'Privacy Policy',
                        style: TextStyle(
                          color: Color(0xff277FC1),
                          fontSize: 14,
                          decorationThickness: 1.5,
                          decorationStyle: TextDecorationStyle.solid,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 125.0),
                ],
              ),
            ),
            Positioned(

              left: 0,
              right: 0,
              bottom: 0,
              child: BottomNavigationBar(
                items: [

                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/Frame_1.png',
                      width: 50,
                      height: 50,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/Booking.png',
                      width: 50,
                      height: 50,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: GestureDetector(
                      onTap: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProfilePage()),
                        );
                      },
                      child: Image.asset(
                        'assets/images/Profile.png',
                        color: Colors.blue,
                        width: 30,
                        height: 30,
                      ),
                    ),
                    label: '',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
