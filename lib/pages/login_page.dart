import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store/pages/signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  final String loginImage = "assets/images/login-slide.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(loginImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get your groceries",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Text(
                  "with nectar",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: CountryCodePicker(
                      onChanged: (value) {},
                      showCountryOnly: true,
                      textStyle: TextStyle(fontSize: 22),
                    ),
                    contentPadding: EdgeInsets.only(top: 16),
                  ),
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(height: 30),
                Center(
                  child: Text(
                    "Or connect with social media",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
                SizedBox(height: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: Size(double.infinity, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.g_mobiledata_sharp, size: 55),
                          SizedBox(width: 20),
                          Text(
                            "Continue with Google",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        iconColor: Colors.white,
                        minimumSize: Size(double.infinity, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.facebook_outlined, size: 45),
                          SizedBox(width: 27),
                          Text(
                            "Continue with Facebook",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(color: Colors.green, fontSize: 16),
                ),
              ),
            ],
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
