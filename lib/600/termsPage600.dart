// ignore_for_file: non_constant_identifier_names, unused_label

import 'package:flutter/material.dart';
import 'package:writers/600/logInPage600.dart';

void main() {
  runApp(const termsPage600());
}

class termsPage600 extends StatefulWidget {
  const termsPage600({super.key});

  @override
  State<termsPage600> createState() => _termsPage600();
}

class _termsPage600 extends State<termsPage600>{

  @override
  Widget build(BuildContext context) {

      /* Them Section Start */
          bool DarkThem = true;
      /* Them Section Start */

      const String termsText = """
1. Acceptance of Terms
By accessing or using the Writers application, you agree to be bound by these Terms & Conditions. If you do not agree, please do not use the app.

2. Description of Service
Writers is a social networking platform designed for writers, allowing users to:
• Publish written content (stories, articles, thoughts)
• Interact with other users (likes, comments, follows)
• Build and engage in a writing community

3. User Accounts
• You must provide accurate and up-to-date information
• You are responsible for maintaining the confidentiality of your account credentials
• You may not create fake accounts or impersonate others

4. User Content
• You retain ownership of any content you post
• By posting content, you grant Writers a non-exclusive, worldwide license to use, display, and distribute your content within the platform
• You agree not to post:
  - Illegal, harmful, or offensive content
  - Content that promotes hate, violence, or discrimination
  - Content that infringes on intellectual property rights

5. Acceptable Use
You agree to:
• Respect other users
• Avoid harassment, abuse, or harmful behavior
• Not post spam or unauthorized advertisements

6. Suspension and Termination
We reserve the right to:
• Suspend or terminate accounts that violate these Terms
• Remove any content at our discretion without prior notice

7. Privacy
• Your privacy is important to us
• Data is collected and used according to our Privacy Policy
• We do not sell your personal data without your consent

8. Disclaimer of Liability
• Writers is not responsible for user-generated content
• Your use of the app is at your own risk

9. Changes to Terms
• We may update these Terms at any time
• Continued use of the app means you accept any changes

10. Contact
For questions or support, please contact us via the app's official email.
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
                    child: Text("TERMS",
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