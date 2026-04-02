// ignore_for_file: non_constant_identifier_names, unused_label

import 'package:flutter/material.dart';
import 'package:writers/600/logInPage600.dart';

void main() {
  runApp(const privityPolicyPage600());
}

class privityPolicyPage600 extends StatefulWidget {
  const privityPolicyPage600({super.key});

  @override
  State<privityPolicyPage600> createState() => _privityPolicyPage600();
}

class _privityPolicyPage600 extends State<privityPolicyPage600>{

  @override
  Widget build(BuildContext context) {

      /* Them Section Start */
          bool DarkThem = true;
      /* Them Section Start */

      const String termsText = """
1. Introduction

Welcome to Writers. Your privacy is important to us. This Privacy Policy explains how we collect, use, and protect your information when you use our application.

2. Information We Collect
a. Information You Provide

We may collect:

Name or username
Email address (if applicable)
Profile information (bio, profile picture)
Content you create (posts, comments, messages)
b. Automatically Collected Information

We may collect:

Device information (model, OS version)
Log data (IP address, app usage, crash logs)
App interaction data
c. Authentication Data

If you use authentication services (e.g., Firebase), we may collect:

Email or phone number
Authentication tokens (securely handled)
3. How We Use Your Information

We use your data to:

Provide and improve the app
Personalize user experience
Enable social features (posting, commenting, following)
Maintain security and prevent abuse
Communicate updates or important notices
4. Sharing of Information

We do not sell your personal data.
We may share data with:

Service providers (e.g., cloud hosting like Firebase)
Legal authorities if required by law
To protect the rights and safety of users
5. Data Storage and Security
Your data is stored securely using industry-standard practices
We take reasonable measures to protect against unauthorized access
However, no system is 100% secure
6. Your Rights

Depending on your location, you may have the right to:

Access your data
Request correction or deletion
Withdraw consent

You can request this by contacting us.

7. Data Retention

We retain your data:

As long as your account is active
Or as necessary to provide services and comply with legal obligations
8. Children’s Privacy

Writers is not intended for users under the age of 13 (or applicable age in your country).
We do not knowingly collect data from children.

9. Third-Party Services

The app may use third-party services such as:

Firebase (authentication, database, analytics)

These services may collect data according to their own privacy policies.

10. Changes to This Policy

We may update this Privacy Policy from time to time.
Users will be notified of significant changes.

11. Contact Us

If you have any questions about this Privacy Policy, please contact us via:

Official app email:
""";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
        builder: (context, constraints){
            double devicewidth = constraints.maxWidth;
            return Scaffold(
              backgroundColor: DarkThem == true ? Color(0xff404040) : Color(0xfff2f2f2),
              body: Column(
                children: [
                  /* Back Button Section Start */
                Container(
                  margin: EdgeInsets.only(top: 8, left: 4),
                  alignment: Alignment.topLeft,
                  child: IconButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute
                      (builder: (context) => logInPage600())
                      );
                  }, icon: Icon(Icons.arrow_back,
                            color: DarkThem == true? Color(0xfff2f2f2) : Color(0xff404040),
                            size: devicewidth * 0.04,
                          )
                        ),
                ),
                /* Back Button Section End */

                  /* Terms Title and Div Section Start */
                  Container(
                    margin: EdgeInsets.only(top: 12, left: 24),
                    alignment: Alignment.topLeft,
                    child: Text("PRIVICY POLICY",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Rublik',
                      fontSize: devicewidth * 0.05,
                      color: DarkThem == true? Color(0xfff2f2f2) : Color(0xff404040)
                    ),
                    )
                  ),
                  Container(
                    // margin: EdgeInsets.only(left: 24),
                    alignment: Alignment.topLeft,
                    width: devicewidth * 0.9,
                    child: Divider(
                      thickness: 2,
                      radius: BorderRadius.circular(12),
                      color: DarkThem == true? Color(0xfff2f2f2) : Color(0xff404040),
                    ),
                  ),
                  /* Terms Title and Div Section End */

                  /* Terms condtion Section Start */
                  Container(
                    margin: EdgeInsets.all(devicewidth * 0.05),
                    height: devicewidth >= 847 ? 400 : 450,
                    child: SingleChildScrollView(
                      child: Text(termsText,
                      style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Rublik',
                      fontSize: devicewidth * 0.02,
                      color: DarkThem == true? Color(0xfff2f2f2) : Color(0xff404040)
                    ),
                      ),
                    )
                  ),
                  /* Terms condtion Section End */
                ],
              ),
              );
        }
        )
    );
  }
}