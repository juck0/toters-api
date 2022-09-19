import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title : Text("Aymn Saad", style: TextStyle(color: Colors.black)),
      ),      backgroundColor: Color(0xFFF3F3F3),

        body: ListView(children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 15),child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Container(width: 180,height: 50,decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),color: Colors.white,boxShadow: [
              BoxShadow(
              color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(1,1), // changes position of shadow
              ),
            ],
              ),child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(Icons.card_giftcard,color: Color(0xFF02B793),),
                      SizedBox(width: 10),
                      Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text("Green",style: TextStyle(fontWeight: FontWeight.w500)),
                        Text("0 pts",style: TextStyle(color: Colors.grey),)
                      ],)
                    ],),Icon(Icons.arrow_forward_ios,color: Color(0xFF02B793),),],)),
              ),
              SizedBox(height: 20,),

Stack(children: [
  Container(width: 400,height: 100,decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.white,boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.3),
      spreadRadius: 1,
      blurRadius: 5,
      offset: Offset(1,1), // changes position of shadow
    ),
  ],
  ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 50,height: 50,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),child: Icon(Icons.person_outline_rounded,color: Colors.grey),),
                SizedBox(height: 10),
                Text("Profile",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500)),]),
          SizedBox(width: 30,),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 50,height: 50,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),child: Icon(Icons.headset_mic_outlined,color: Colors.grey),),
                SizedBox(height: 10),
                Text("Support",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500)),]),
          SizedBox(width: 30,),
          Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 50,height: 50,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),child: Icon(Icons.payment,color: Colors.grey),),
                SizedBox(height: 10),
                Text("Payment",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500)),]),
          SizedBox(width: 30,),
          Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 50,height: 50,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),child: Icon(Icons.language,color: Colors.grey),),
                SizedBox(height: 10),
                Text("Language",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500)),]),
        ],)),
  Positioned(right: 22,top: 5,child: Container(height: 25,width: 25,decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),color: Color(0xFF02B793),
  ),child: Center(child: Text("En",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),))
],),

              SizedBox(height: 20),
              Container(width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.width-224,
                  decoration: BoxDecoration(
                      color: Colors.white,borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(1,1), // changes position of shadow
                      ),
                    ],),



                  child: Padding(padding:EdgeInsets.symmetric(horizontal: 20,vertical: 10),child: Column(children: [
                    Row(children: [
                      Text("Toters Cash",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17)),
                      SizedBox(width: 10,),
                      Icon(Icons.info_outline,color: Color(0xFF02B793),),
                    ],),
                    SizedBox(height: 10,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Icon(Icons.wallet,color: Colors.grey,),
                          SizedBox(width: 10,),
                          Text("Wallet",style: TextStyle(fontWeight: FontWeight.w500),
                          )],
                        ),Text("IQD 0",style: TextStyle(color: Color(0xFF02B793),fontWeight: FontWeight.w900),)
                      ],),SizedBox(height: 10,),
                    Container(width: 350,height: 1,color: Colors.black12,),
                    SizedBox(height: 10,),
                    Row(children: [
                      Icon(Icons.add,color: Colors.grey,),
                      SizedBox(width: 10,),
                      Text("Add Funds",style: TextStyle(fontWeight: FontWeight.w500),),

                    ],),SizedBox(height: 10,),
                    Container(width: 350,height: 1,color: Colors.black12,),
                    SizedBox(height: 10,),
                    Row(children: [
                      Icon(Icons.compare_arrows,color: Colors.grey,),
                      SizedBox(width: 10,),
                      Text("Send Funds",style: TextStyle(fontWeight: FontWeight.w500),)
                    ],)
                  ]),
                  )
              ),
              SizedBox(height: 20,),

              Container(width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.width-263,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15),boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(1,1), // changes position of shadow
                    ),
                  ],),
                  child: Padding(padding:EdgeInsets.symmetric(horizontal: 20,vertical: 10),child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),

                        Text("Promotioms",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17)),


                        SizedBox(height: 10,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              Image(image: AssetImage("images/divide_icon.png"),width: 21,height: 21),
                              SizedBox(width: 10,),
                              Text("Credits",style: TextStyle(fontWeight: FontWeight.w500),),
                            ],
                            ),Text("IQD 0",style: TextStyle(color: Color(0xFF02B793),fontWeight: FontWeight.w900),)
                          ],),SizedBox(height: 10,),
                        Container(width: 350,height: 1,color: Colors.black12,),
                        SizedBox(height: 10,),
                        Row(children: [
                          Image(image: AssetImage("images/save_label_icon.png"),width: 20,height: 20),
                          SizedBox(width: 10,),
                          Text("Add Promo Code",style: TextStyle(fontWeight: FontWeight.w500),),

                        ],),
                      ])



                  )),
              SizedBox(height: 20,),

              Container(width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.width-138,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(1,1), // changes position of shadow
                      ),
                    ],),
                  child: Padding(padding:EdgeInsets.symmetric(horizontal: 20,vertical: 10),child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                      Text("Account Details",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17)),
                    SizedBox(height: 10,),
                    Row(
                      children: [

                          Icon(Icons.notifications_none,color: Colors.grey,),
                          SizedBox(width: 10,),
                          Text("Notifications",style: TextStyle(fontWeight: FontWeight.w500),),

                      ],),SizedBox(height: 10,),
                    Container(width: 350,height: 1,color: Colors.black12,),
                    SizedBox(height: 10,),
                    Row(children: [
                      Icon(Icons.location_on_outlined,color: Colors.grey,),
                      SizedBox(width: 10,),
                      Text("Addresses",style: TextStyle(fontWeight: FontWeight.w500),),

                    ],),SizedBox(height: 10,),
                    Container(width: 350,height: 1,color: Colors.black12,),
                    SizedBox(height: 10,),
                    Row(children: [
                      Icon(Icons.favorite_border,color: Colors.grey,),
                      SizedBox(width: 10,),
                      Text("Favorites",style: TextStyle(fontWeight: FontWeight.w500),)
                    ],),
                    SizedBox(height: 10,),
                    Container(width: 350,height: 1,color: Colors.black12,),
                    SizedBox(height: 10,),
                    Row(children: [
                      Icon(Icons.list_alt_sharp,color: Colors.grey,),
                      SizedBox(width: 10,),
                      Text("Preferences",style: TextStyle(fontWeight: FontWeight.w500),)
                    ],),
                    SizedBox(height: 10,),
                    Container(width: 350,height: 1,color: Colors.black12,),
                    SizedBox(height: 10,),
                    Row(children: [
Image(image: AssetImage("images/refer_frind_icon.png"),height: 24.7,width: 24.7,color: Colors.grey)           ,
                      SizedBox(width: 10,),
                      Text("Refer a friend",style: TextStyle(fontWeight: FontWeight.w500),)
                    ],),
                  ]),
                  )
              ),
              SizedBox(height: 20,),
              Container(width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.width-183,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(1,1), // changes position of shadow
                      ),
                    ],),
                  child: Padding(padding:EdgeInsets.symmetric(horizontal: 20,vertical: 10),child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text("Help Center",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17)),
                        SizedBox(height: 10,),
                        Row(
                          children: [

                            Icon(Icons.headset_mic_outlined,color: Colors.grey,),
                            SizedBox(width: 10,),
                            Text("Get Support",style: TextStyle(fontWeight: FontWeight.w500),),

                          ],),SizedBox(height: 10,),
                        Container(width: 350,height: 1,color: Colors.black12,),
                        SizedBox(height: 10,),
                        Row(children: [
                          Icon(Icons.message_rounded,color: Colors.grey,),
                          SizedBox(width: 10,),
                          Text("Support Tickets",style: TextStyle(fontWeight: FontWeight.w500),),

                        ],),SizedBox(height: 10,),
                        Container(width: 350,height: 1,color: Colors.black12,),
                        SizedBox(height: 10,),
                        Row(children: [
                          Image(image: AssetImage("images/hummer_icon.png"),height: 24.7,width: 24.7,color: Colors.grey)           ,
                          SizedBox(width: 10,),
                          Text("Legal",style: TextStyle(fontWeight: FontWeight.w500),)
                        ],),
                        SizedBox(height: 10,),
                        Container(width: 350,height: 1,color: Colors.black12,),
                        SizedBox(height: 10,),
                        Row(children: [
                          Image(image: AssetImage("images/faq_icon.png"),height: 24,width:24,color: Colors.grey)           ,
                          SizedBox(width: 10,),
                          Text("Faq",style: TextStyle(fontWeight: FontWeight.w500),)
                        ],),
                      ]),
                  )
              ),
              SizedBox(height: 20,),
              Container(width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.width-350,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(1,1), // changes position of shadow
                      ),
                    ],),
                  child: Padding(padding:EdgeInsets.symmetric(horizontal: 20,),child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.exit_to_app,color: Colors.red,),
                        SizedBox(width: 10,),
                        Text("Sign out",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.red)),
                      ])
                  )),
              SizedBox(height: 20,)
            ]))

      ],)
      );
  }
}
