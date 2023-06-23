import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quikies/Colors/app_colors.dart';
import 'package:quikies/login/sign_up.dart';
import 'package:quikies/login/sign_up.dart';
import 'package:quikies/Password/forgot_password_page.dart';
import 'package:quikies/home_screen/home_screen.dart';
import 'package:quikies/widgets/app_buttons.dart';
import 'package:quikies/widgets/app_large_text.dart';






class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 90,
              width: 100,
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  'assets/images/Logo.png', // Replace with your image path
                  width: 168,
                  height: 44,
                ),
              ),
            ),
SizedBox(height: 52,),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
               'Log In',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    color: MyAppColor.headingColor,
                    fontWeight: FontWeight.bold,
                  ),


              ),
            ),
            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow:  [
                        BoxShadow(
                          color: MyAppColor.white,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,

                      decoration: InputDecoration(

                        labelText: 'Email',

                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
            Container(height: 20),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: const [
                        BoxShadow(
                          color: MyAppColor.white,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        suffixIcon: GestureDetector(
                          onTap: _togglePasswordVisibility,
                          child: Icon(
                            _obscureText ? Icons.visibility_off_outlined : Icons.visibility,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1),
    Align(
    alignment: Alignment.center,
    child: Padding(
        padding: const EdgeInsets.all(25.0),
          child:AppButtons(textColor: Colors.white,borderColor:MyAppColor.buttonColor ,height:56 ,text:'Login',onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            ); // Handle arrow button tap
          } ,width:222, backgroundColor: Colors.blueAccent ,)
    ),
    )
          /*
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xffCFEAFF)),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      const EdgeInsets.symmetric(vertical: 16.0, horizontal: 70.0),
                      // Adjust the padding value as needed
                    ),
                    textStyle: MaterialStateProperty.all<TextStyle>(
                      Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 18.0),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28.0),
                      ),
                    ),
                  ),
                  child: AppText(text: "Login", color: Color(0xff3327C1)),
                ),
              ),
            ),
            */
            ,Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  // Perform the action when the text is clicked
                  // For example, show a password recovery dialog or navigate to a password recovery screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                  );
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            Container(height: 40),
            Align(
              alignment: Alignment.center,
              child: AppText(text: "Or continue with ", color: Colors.black38),
            ),
            Container(
              height: 30,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 85.0),
                //  Icon(Icons.g,color: Colors.blue,size:36),


                  SvgPicture.asset("assets/images/Google1.svg",  ),
          SizedBox(width: 50.0),
                  SvgPicture.asset("assets/images/Facebook1.svg",  ),
                //  Image.asset('assets/images/g10.png'),
                  SizedBox(width: 50.0),
                  //Icon(Icons.facebook_outlined,color: Colors.blue,size:36),
                  SvgPicture.asset("assets/images/white_background.svg",  ),
                ],
              ),
                /*
                const BottomNavigationBarItem(
                  label: 'Home',
                  icon: LocalImageViewer(
                    image: 'assets/nav_icons/home.svg',
                    color: AppColor.colorWhite,
                    margin: 2,
                  ),
                  activeIcon: LocalImageViewer(
                    image: 'assets/nav_icons/home.svg',
                    color: AppColor.colorGreen,
                    margin: 2,
                  ),
                )
              */

            ),
            Container(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child:
            Container(height: 1,color:Colors.grey,width: 320,),


            ),
            Container(height:15 ,),
            Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(text: "Are you here for the first time? ", color: Colors.black87),
                        GestureDetector(
                          onTap: () {
                            // Perform the action when the text is clicked
                            // For example, show a password recovery dialog or navigate to a password recovery screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
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