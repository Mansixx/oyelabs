import 'package:flutter/material.dart';
import 'package:oyelabs/Address.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Icon(Icons.arrow_back,color: Colors.black,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset("assets/otp.png",height: 200,),
          Text(
            "OTP Verification",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontFamily: "Raleway",
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Enter the OTP sent to +1 9879878975",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              letterSpacing: 0.50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: PinCodeTextField(
              appContext: context,
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,
              animationDuration: Duration(milliseconds: 300),
             // errorAnimationController: errorController, // Pass it here
              onChanged: (value) {
                setState(() {
                 // currentText = value;
                });
              },
            ),
          ),
          Text(
            "OTP not recived?  RESEND OTP",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              letterSpacing: 0.50,
            ),
          ),

          Container(
            width: 322,
            height: 63,
            child: Stack(
              children:[Container(
                width: 322,
                height: 63,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      blurRadius: 4,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Container(
                      width: 322,
                      height: 63,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                        color: Color(0xff171717),
                      ),
                    ),
                  ],
                ),
              ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Address()),
                        );
                      },
                      child: Text(
                        "VERIFY & PROCEED",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),],
            ),
          )

        ],
      ),
    );
  }
}
