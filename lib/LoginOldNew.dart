import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:oyelabs/OtpPage.dart';

class LoginOldNew extends StatefulWidget {
  const LoginOldNew({Key? key}) : super(key: key);

  @override
  _LoginOldNewState createState() => _LoginOldNewState();
}

class _LoginOldNewState extends State<LoginOldNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Icon(Icons.arrow_back,color: Colors.black,),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Welcome Back!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontFamily: "Inter",
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              width: 322,
              height: 63,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Container(
                    width: 322,
                    height: 63,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38),
                      color: Color(0xff7583ca),
                    ),
                    padding: const EdgeInsets.only(left: 35, right: 40, ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                         Image.asset("assets/fbb.png",height: 48,),

                        SizedBox(width: 26.77),
                        Text(
                          "CONTINUE WITH FACEBOOK",
                          style: TextStyle(
                            color: Color(0xfff6f1fa),
                            fontSize: 14,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 322,
              height: 63,
              child: Stack(
                children:[Container(
                  width: 322,
                  height: 63,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        width: 322,
                        height: 63,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(38),
                          border: Border.all(color: Color(0xffebeaec), width: 1, ),
                        ),
                        padding: const EdgeInsets.only(left: 74, right: 57, top: 25, bottom: 24, ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Text(
                              "CONTINUE WITH GOOGLE",
                              style: TextStyle(
                                color: Color(0xff3f414e),
                                fontSize: 14,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                  Positioned(
                    left: 29.07,
                    top: 19.47,
                    child: Container(
                      width: 23.58,
                      height: 24.06,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset("assets/google.png"),
                    ),
                  ),],
              ),
            ),
            SizedBox(
              width: 277,
              height: 14,
              child: Text(
                "OR CONTINUE WITH PHONE NUMBER",
                style: TextStyle(
                  color: Color(0xffa1a4b2),
                  fontSize: 14,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.70,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),

              child: Container(

                width: MediaQuery.of(context).size.width,
                height: 63,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xfff2f2f7),
                ),
                child:  Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: IntlPhoneField(
                    decoration: InputDecoration(
                      labelText: 'Enter Mobile Number',
                      border: InputBorder.none,
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(15)),
                      //   borderSide: BorderSide(),
                      // ),
                    ),
                    initialCountryCode: 'IN',

                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },

                  ),
                ),

              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OTP()),
                );
              },
              child: Container(
                width: 322,
                height: 63,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Container(
                      width: 322,
                      height: 63,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(38),
                        color: Color(0xff171616),
                      ),
                      padding: const EdgeInsets.only(left: 130, right: 131, top: 23, bottom: 22, ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          Text(
                            "LOG IN",
                            style: TextStyle(
                              color: Color(0xfff6f1fa),
                              fontSize: 17,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.85,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 134.54,
              height: 14,
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.70,
                ),
              ),
            ),
            SizedBox(
              width: 293.10,
              height: 14,
              child: Text(
                "DON’T HAVE AN ACCOUNT? SIGN UP",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "HelveticaNeue",
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.70,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
