import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_store/pages/login_page.dart';
import 'package:grocery_store/pages/main_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});
  final String signupImage = "assets/icons/app_icon_color.svg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(child: SvgPicture.asset(signupImage, width: 65)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "Enter yur credentials to continue",
                  style: TextStyle(fontSize: 20, color: Colors.black45),
                ),
                SizedBox(height: 30),
                Text("Username", style: TextStyle(fontSize: 22)),
                TextField(
                  decoration: InputDecoration(hintText: "Enter your name"),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                Text("Email", style: TextStyle(fontSize: 22)),
                TextField(
                  decoration: InputDecoration(hintText: "Enter your email"),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                Text("Password", style: TextStyle(fontSize: 22)),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  ),
                  obscureText: true,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                Text.rich(
                  TextSpan(
                    text: "By continuing you agree to our ",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Terms of Service ",
                        style: TextStyle(color: Colors.green),
                      ),
                      TextSpan(text: "and "),
                      TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 70),
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
