// ignore_for_file: non_constant_identifier_names, camel_case_types, unused_label

import 'package:flutter/material.dart';
import 'package:writers/returns/privityPolicyRetun.dart';
import 'package:writers/returns/singUpPageReturn.dart';
import 'package:writers/returns/termsReturn.dart';

void main() {
  runApp(const logInPage900());
}

class logInPage900 extends StatefulWidget {
  const logInPage900({super.key});

  @override
  State<logInPage900> createState() => _logInPage900();
}

class _logInPage900 extends State<logInPage900>{
          /* Them Section Start */
          bool DarkThem = true;
          /* Them Section End */

          /* Var For BTN Start */
          bool vsibilityBtn = true;
          bool isAgree = false;
          TextEditingController usernamefield = TextEditingController();
          TextEditingController passwordfield = TextEditingController();
          GlobalKey<FormState> loginState = GlobalKey();
          bool isActivebtn = false;
          /* Var For BTN End */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
        builder: (context, constraints){
          double devicewidthPage = constraints.maxWidth;
          /* Text Font Size Section Start*/
          double head1 = devicewidthPage * 0.03;
          double head2 = devicewidthPage * 0.02;
          double normalText = devicewidthPage * 0.012;
          double smallText = devicewidthPage * 0.01;
          /* Text Font Size Section End*/

        return Scaffold(
        backgroundColor: DarkThem == true ? Color(0xff404040) : Color(0xfff2f2f2),
        body: Column(
          children: [
            /* Icon Section Start */
            Container(
              margin: EdgeInsets.only(top: 32),
              alignment: Alignment.center,
              child: Image.asset("lib/icons/writerappicon.png")
              ),
            /* Icon Section end */

            /* Main Text Start */
            Container(
              margin: EdgeInsets.only(top: 32),
              child: Text("WELCOME TO WRITER APP",
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: head1,
                fontWeight: FontWeight.w700,
                color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040)
              ),
              ),
            ),
            /* Main Text End */

            /* Login or Sing Up and DIV Section Start */
            Container(
              margin: EdgeInsets.only(top: 24),
              child: Text("LOGIN OR SING UP",
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: head2,
                color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040),
                fontWeight: FontWeight.w700,
              ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 6),
              width: 320,
              child: Divider(
                radius: BorderRadius.circular(12),
                color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040),
              ),
            ),
            /* Login or Sing Up and DIV Section End */

            /* TextFieldForm Section Start */
            Container(
              margin: EdgeInsets.only(top: 18),
              width: 320,
              child: Form(
                key: loginState,
                child: Column(
                  children: [
                  /* Log in Section Start */
                  /* Username Section Start */
                  TextFormField(
                    
                    /* On Save Start */
                    onSaved: (uservalue) {
                      
                    },
                    /* On Save End */
                    
                    /* Porprties Start */
                    controller: usernamefield,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    maxLines: 1,
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040)
                    ),
                    textAlign: TextAlign.left,
                    /* Porprties  End*/

                    /* Decoration Start*/
                    decoration: InputDecoration(

                      /* Porprties Start */
                      labelText: "USERNAME",  
                      suffixText: "auth.com",
                      suffixStyle: TextStyle(
                        fontFamily: 'Rubik',
                        color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040),
                        fontWeight: FontWeight.w700,
                      ),
                      fillColor: DarkThem == true ? Color(0xff404040) : Color(0xfff2f2f2),
                      filled: true,
                      labelStyle: TextStyle(
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w700,
                        color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040)
                      ),
                      /* Porprties End */

                      /* Border Start */
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040),
                          width: 2
                          )
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040),
                          width: 2
                          )
                      ),

                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: DarkThem == true ? Color(0xff9E9E9E) : Colors.red,
                          width: 2
                          )
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040),
                          width: 2
                          )
                      ),

                      errorStyle: TextStyle(
                        fontFamily: 'Rubik',
                        color: DarkThem == true ? Color(0xff9E9E9E) : Colors.red
                      )
                      /* Border End */

                    ),
                    /* Decoration End*/

                    /* Validator Start */
                    validator: (uservalue) {
                      if(uservalue!.isEmpty){
                        return "Your (username) Section is Empty";
                      }else if (uservalue.contains("@")){
                        return "Your (username) Contains '@' Remove it";
                      }
                      return null;
                    },
                    
                    /* Validator End */

                  ),
                  /* Username Section End */
                  
                  SizedBox(height: 12,),

                  /* Password Section Start */
                  TextFormField(

                    /* On Save Start */
                    onSaved: (uservalue) {
                      
                    },
                    /* On Save End */
                    
                    /* Porprties Start */
                    controller: passwordfield,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    obscureText: vsibilityBtn,
                    maxLines: 1,
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040)
                    ),
                    textAlign: TextAlign.left,
                    /* Porprties  End*/

                    /* Decoration Start*/
                    decoration: InputDecoration(

                      /* Porprties Start */
                      labelText: "PASSWORD",
                      suffixIcon: IconButton(icon:
                       Icon( vsibilityBtn ? Icons.visibility_off: Icons.visibility, 
                       color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040),),
                       onPressed: (){
                         setState(() {
                          vsibilityBtn = !vsibilityBtn;
                        });
                      }, 
                      ),
                      fillColor: DarkThem == true ? Color(0xff404040) : Color(0xfff2f2f2),
                      filled: true,
                      labelStyle: TextStyle(
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w700,
                        color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040)
                      ),
                      /* Porprties End */

                      /* Border Start */
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040),
                          width: 2
                          )
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040),
                          width: 2
                          )
                      ),

                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: DarkThem == true ? Color(0xff9E9E9E) : Colors.red,
                          width: 2
                          )
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040),
                          width: 2
                          )
                      ),

                      errorStyle: TextStyle(
                        fontFamily: 'Rubik',
                        color: DarkThem == true ? Color(0xff9E9E9E) : Colors.red
                      )
                      /* Border End */

                    ),
                    /* Decoration End*/

                    /* Validator Start */
                    validator: (uservalue) {
                      if(uservalue!.isEmpty){
                        return "Your (password) Section is Empty";
                      }else if (uservalue.length < 8 ){
                        return "Your (password) must be at least 8 charecter";
                      }
                      return null;
                    },
                    
                    /* Validator End */

                  ),
                  /* Password Section End */

                  /* Forrget Password Section Start */
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 8 , left: Checkbox.width),
                    child: GestureDetector(
                      child: Text("FORRGET PASSWORD?",
                      style: TextStyle(
                        fontSize: smallText,
                        fontFamily: 'Rublik',
                        fontWeight: FontWeight.bold,
                        color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040)
                      ),
                      ),
                    ),
                  )
                  /* Forrget Password Section End */

                  /* Log in Section End */
                  ],
                )
                )
            ),
            /* TextFieldForm Section End */

            /* Agree + Button + New Acooun Section Start */

            /* Agree Checkbox Start */
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /* Checkbox Start */
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 8,),
                  child: Checkbox(value: isAgree, onChanged: (val){
                    setState(() {
                      isAgree = val!;
                    }); 
                  },
                  activeColor: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040),
                  checkColor: DarkThem == true ? Color(0xff404040) : Color(0xfff2f2f2),
                  focusColor: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040),
                  side: BorderSide(
                    color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040),
                    width: 2
                  ),
                  ),
                ),
                /* Checkbox End */
                Row(
                  children: [

                    Container(
                      margin: EdgeInsets.only(top: 6, 
                      ),
                      child: Text("You aree to our",
                      style: TextStyle(
                        fontSize: normalText,
                        fontFamily: 'Rublik',
                        fontWeight: FontWeight.w700,
                        color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040)
                      ),
                      )
                      ),


                      Container(
                        margin: EdgeInsets.only(top: 6),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => termsRuturn(),)
                                    );
                          },
                          child: Text(" terms",
                          style: TextStyle(
                          fontSize: normalText,
                          fontFamily: 'Rublik',
                          fontWeight: FontWeight.w700,
                          color: DarkThem == true ? Color(0xff8c8c8c) : Color(0xff404040),
                      ),
                        ),
                        ),
                      ),


                      Container(
                      margin: EdgeInsets.only(top: 6),
                      child: Text(" and",
                      style: TextStyle(
                        fontSize: normalText,
                        fontFamily: 'Rublik',
                        fontWeight: FontWeight.w700,
                        color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040)
                      ),
                      )
                      ),


                      Container(
                      margin: EdgeInsets.only(top: 6),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => privicyPolicyRutern(),)
                                    );
                          },
                          child: Text(" Privicy Policy",
                          style: TextStyle(
                          fontSize: normalText,
                          fontFamily: 'Rublik',
                          fontWeight: FontWeight.w700,
                          color: DarkThem == true ? Color(0xff8c8c8c) : Color(0xff404040),
                      ),
                        ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
            /* Agree Checkbox End */

            /* Button Section Start */
            Container(
              margin: EdgeInsets.only(top: 18),
              width: devicewidthPage * .2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40)
              ),
              child: MaterialButton(onPressed: (){
                if(loginState.currentState!.validate()){

                }
                if(usernamefield.text == "adminad" && passwordfield.text == "adminadmin"){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => termsRuturn(),)
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: DarkThem == true ? Color(0xff404040) : Color(0xfff2f2f2),
                          title: Text("Wrong!!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040),
                            fontSize: head1,
                            fontWeight: FontWeight.w700
                          ),
                          ),
                          content: Text("Your (username) or (password) is not correct",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040),
                            fontSize: normalText,
                            fontWeight: FontWeight.w700
                            ),
                          )
                        );
                      }
                      );
                  }
                setState(() {
                  
                });
              },
              color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040),
              focusElevation: 1,
              
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(24),
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("LOGIN",
                  style: TextStyle(
                    color: DarkThem == true ? Color(0xff404040) : Color(0xfff2f2f2),
                    fontFamily: 'Rublik',
                    fontSize: devicewidthPage * 0.018,
                    fontWeight: FontWeight.w700
                  ),
                  ),
                  SizedBox(width: 8,),
                  Icon(
                    Icons.login,
                    color: DarkThem == true ? Color(0xff404040) : Color(0xfff2f2f2),
                    size: devicewidthPage * 0.02,
                  )
                ],
              ),
              ),
            ),
            /* Button Section End */

            /* New Acxoount Section Start */
            Container(
              margin: EdgeInsets.only(top: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have account? ",
                  style: TextStyle(
                    color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040),
                    fontFamily: 'Rublik',
                    fontSize: normalText,
                    fontWeight: FontWeight.w700
                  )
                  ),
                  GestureDetector(
                    onTap: (){ 
                      Navigator.push(
                      context, MaterialPageRoute(builder: (context) => singUpPageReturn(),)
                    );
                    },
                    child: Text("Create one.",
                    style: TextStyle(
                    color: DarkThem == true ? Color(0xff8c8c8c) : Color(0xff404040),
                    fontFamily: 'Rublik',
                    fontSize: normalText,
                    fontWeight: FontWeight.w700
                    )
                  ),
                  )
                ],
              ),
            )
            /* New Acxoount Section End */

            /* Agree + Button + New Acooun Section End */
          ],
        ),
      );
      })
    );
  }
}