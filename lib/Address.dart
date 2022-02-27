import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 40, 16, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 296,
                height: 90,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Text(
                      "Hey, nice to meet you!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff8e8e8e),
                        fontSize: 16,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.50,
                      ),
                    ),
                    SizedBox(height: 24),
                    Text(
                      "See services around",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.50,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset("assets/address.png"),
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
                        child: Text(
                          "Your current location",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),],
                ),
              ),

                    Container(
                      width: 322,
                      height: 53,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        border: Border.all(color: Color(0xffa1a4b2), width: 1, ),
                        color: Colors.white,
                      ),
                      //padding: const EdgeInsets.only(left: 63, right: 62, ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          Container(
                            width: 197,
                            height: 18.20,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                               Icon(Icons.search,color: Colors.grey,),
                                SizedBox(width: 11),
                                Text(
                                  "Some other location",
                                  style: TextStyle(
                                    color: Color(0xffa1a4b2),
                                    fontSize: 16,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.80,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )

          ),
        );
  }
}
