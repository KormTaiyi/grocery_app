import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_store/pages/login_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final String accountImg = "assets/images/order_failed_image.png";
  final String logoutImg = "assets/icons/logout_icon.svg";
  final String myprofileImg = "assets/images/myprofile.jpg";
  List<Map<String, String>> accountItems = [
    {'imageSvg': "assets/icons/orders_icon.svg", 'title': "Orders"},
    {'imageSvg': "assets/icons/details_icon.svg", 'title': "My Details"},
    {'imageSvg': "assets/icons/delivery_icon.svg", 'title': "Delivery Address"},
    {'imageSvg': "assets/icons/payment_icon.svg", 'title': "Payment Methods"},
    {'imageSvg': "assets/icons/promo_icon.svg", 'title': "Promotion Card"},
    {'imageSvg': "assets/icons/notification_icon.svg", 'title': "Notification"},
    {'imageSvg': "assets/icons/help_icon.svg", 'title': "Help"},
    {'imageSvg': "assets/icons/about_icon.svg", 'title': "About"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: ListTile(
              leading: SizedBox(
                width: 65,
                height: 65,
                child: CircleAvatar(
                  backgroundImage: AssetImage(myprofileImg),
                  // radius: 5.0,
                ),
              ),
              title: Row(
                spacing: 10,
                children: [
                  Text(
                    "Taiyi Korm",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.edit, color: Colors.green),
                ],
              ),
              subtitle: Text(
                "korm.taiyi289@gmail.com",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Divider(),
          ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return SizedBox(
                height: 50,
                child: ListTile(
                  leading: SvgPicture.asset(
                    accountItems[index]['imageSvg']!,
                    width: 25,
                  ),
                  title: Text(
                    accountItems[index]['title']!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, size: 20),
                  onTap: () => {},
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: accountItems.length,
          ),
          Divider(),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 60),
                backgroundColor: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(logoutImg, width: 24),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Log Out",
                        style: TextStyle(fontSize: 22, color: Colors.green),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
