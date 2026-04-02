// ignore_for_file: unused_local_variable, prefer_const_constructors_in_immutables, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:writers/360/logInPage.dart';

void main(){
  runApp(signUpPage900());
}

class signUpPage900 extends StatefulWidget{

  @override
  signUpPage900({super.key});

  @override
  State<signUpPage900> createState() => _signUpPage900();
}

class _signUpPage900 extends State<signUpPage900> {

  /* Them Section Start */
          bool DarkThem = true;
          /* Them Section End */

          /* Var For BTN Start */
          bool vsibilityBtn = true;
          bool isAgree = false;
          TextEditingController passwordsec = TextEditingController();
          TextEditingController compasswordsec = TextEditingController();
          GlobalKey<FormState> singupState = GlobalKey();
          bool isActivebtn = false;
  /* Var For BTN End */
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: DarkThem == true ? Color(0xff404040) : Color(0xfff2f2f2),
        body: LayoutBuilder(
          builder: (context, constraints){
            double devicewidthPage = constraints.maxWidth;
            /* Text Font Size Section Start*/
            double head1 = devicewidthPage * 0.03;
            double head2 = devicewidthPage * 0.02;
            double normalText = devicewidthPage * 0.012;
            double smallText = devicewidthPage * 0.01;
            /* Text Font Size Section End*/
            return Column(
              children: [
                /* Back Button Section Start */
                Container(
                  margin: EdgeInsets.only(top: 8, left: 4),
                  alignment: Alignment.topLeft,
                  child: IconButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute
                      (builder: (context) => logInPage())
                      );
                  }, icon: Icon(Icons.arrow_back,
                            color: DarkThem == true? Color(0xfff2f2f2) : Color(0xff404040),
                            size: devicewidthPage * 0.02,
                          )
                        ),
                ),
                /* Back Button Section End */

                /* Logo Section Start */
                Container(
                margin: EdgeInsets.only(top: 12),
                child: Image.asset("lib/icons/writerappicon.png"),
                ),
                /* Logo Section End */

                /* Main Text And Div Section Start */
                Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Text(" START YOUR JOURNEY WITH US",
                  style: TextStyle(
                    fontSize: head2,
                    fontFamily: 'Rublik',
                    fontWeight: FontWeight.w700,
                    color: DarkThem == true? Color(0xfff2f2f2) : Color(0xff404040)
                  ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 6),
                  width: devicewidthPage *0.8,
                  child: Divider(
                  color: DarkThem == true? Color(0xfff2f2f2) : Color(0xff404040),
                  ),
                ),
                /* Main Text And Div Section End */

                /* Form Section Start */
                Container(
                  margin: EdgeInsets.only(top: 16),
                  width: 320,
                  child: Form(
                    key: singupState,
                    child: Column(
                    children: [
                      /* Name Section Field Start */
                      TextFormField(
                      
                      /* On Save Start */
                      onSaved: (uservalue) {
                        
                      },
                      /* On Save End */
                      
                      /* Porprties Start */
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
                        labelText: "NAME",  
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
                          return "Your (Name) Section is Empty";
                        }else if (uservalue.length <= 6){
                          return "Your (Name) Must be at lest 6 charchter";
                        }
                        return null;
                      },
                      
                      /* Validator End */
                  
                    ),
                      /* Name Section Field End */

                      SizedBox(height: 12,),

                      /* UserName Section Start */
                       TextFormField(
                      
                      /* On Save Start */
                      onSaved: (uservalue) {
                        
                      },
                      /* On Save End */
                      
                      /* Porprties Start */
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
                        }else if (uservalue.length <= 6){
                          return "Your (username) Must be at lest 6 charchter";
                        }
                        return null;
                      },
                      
                      /* Validator End */
                  
                    ),
                    /* UserName Section Start */

                    SizedBox(height: 12,),

                    /* Password Section Start */
                    TextFormField(

                    /* On Save Start */
                    onSaved: (uservalue) {
                      
                    },
                    /* On Save End */
                    
                    /* Porprties Start */
                    controller: passwordsec,
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
                    /* Password Section Start */

                    SizedBox(height: 12,),

                    /* Comfrirm Password Section Start */
                    TextFormField(

                    /* On Save Start */
                    onSaved: (uservalue) {
                      
                    },
                    /* On Save End */
                    
                    /* Porprties Start */
                    controller: compasswordsec,
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
                      labelText: "  confirm PASSWORD",
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
                      if (uservalue != passwordsec.text){
                        return "Your Passowrd is not same";
                      }
                      return null;
                    },
                    
                    /* Validator End */

                  ),
                    /* Comfrirm Password Section End */
                    ],
                  )
                  ),
                ),
                /* Form Section End */

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
                            fontSize: smallText,
                            fontFamily: 'Rublik',
                            fontWeight: FontWeight.w700,
                            color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040)
                          ),
                          )
                          ),


                          Container(
                            margin: EdgeInsets.only(top: 6),
                            child: GestureDetector(
                              child: Text(" terms",
                              style: TextStyle(
                              fontSize: smallText,
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
                            fontSize: smallText,
                            fontFamily: 'Rublik',
                            fontWeight: FontWeight.w700,
                            color: DarkThem == true ? Color(0xfff2f2f2) : Color(0xff404040)
                          ),
                          )
                          ),


                          Container(
                          margin: EdgeInsets.only(top: 6),
                          child: Text(" Privicy Policy",
                          style: TextStyle(
                            fontSize: smallText,
                            fontFamily: 'Rublik',
                            fontWeight: FontWeight.w700,
                            color: DarkThem == true ? Color(0xff8c8c8c) : Color(0xff404040),
                          ),
                          )
                          ),
                      ],
                    ),
                  ],
                ),
                /* Agree Checkbox End */

                /* Button Section Start */
                Container(
                  margin: EdgeInsets.only(top: 16),
                  width: devicewidthPage * .2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: MaterialButton(onPressed: (){
                    if(singupState.currentState!.validate()){
                      Navigator.pushReplacement(context, MaterialPageRoute
                      (builder: (context) => logInPage()));
                    }
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
            /* Agree + Button + New Acooun Section End */

              ],
            );
          }
          ),
      ),
      );
  }
}