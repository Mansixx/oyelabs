import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:oyelabs/LoginOldNew.dart';
import 'package:oyelabs/OtpPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/login.png",width:MediaQuery.of(context).size.width,fit: BoxFit.fill,height: 390,),
            Text(
              "Your Home services Expert",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: "Raleway",
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "Continue with Phone Number",
              style: TextStyle(
                color: Color(0xff9c9c9c),
                fontSize: 15,
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                letterSpacing: 0.75,
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
                      padding: const EdgeInsets.only(left: 125, right: 124, top: 23, bottom: 22, ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          Text(
                            "SIGN UP",
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
            Text(
              "VIEW OTHER OPTION",
              style: TextStyle(
                color: Color(0xff5a77ff),
                fontSize: 13,
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                letterSpacing: 0.65,
              ),
            ),
            SizedBox(
              width: 293.10,
              height: 14,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginOldNew()),
                  );
                },
                child: Text(
                  "ALREADY HAVE AN ACCOUNT? LOG IN",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "HelveticaNeue",
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.70,
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
