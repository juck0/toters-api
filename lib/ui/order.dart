import 'package:flutter/material.dart';
class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length:2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(backgroundColor: Colors.white,
            elevation: 0.5,
            title:TabBar(labelColor:Color(0xFF02B793),
              indicatorColor: Color(0xFF02B793),
              labelStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.w700,),
              tabs: [
                Tab(text: 'Past Orders',),
                Tab(text: 'Upcoming',),
              ],
            ),
          ),
          body:  TabBarView(
            children: [
              Center(child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Image(image: NetworkImage("https://cdn.iconfinder.com/icons/7824895/8378738/256/raster.png?token=1663580005-Eo%2BNCyzfxacWL%2FcX1v17NXcnJm183G4Vv49RRsIrNiw%3D")),
                Text("you don't have any past orders!",
                  style: TextStyle(fontSize: 20,color: Color(0xFF02B793),fontWeight: FontWeight.w700),)
              ]),),
              Center(child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: NetworkImage("https://cdn.iconfinder.com/icons/7824895/8378738/256/raster.png?token=1663580005-Eo%2BNCyzfxacWL%2FcX1v17NXcnJm183G4Vv49RRsIrNiw%3D")),
                    Text("No upcoming orders",
                      style: TextStyle(fontSize: 20,color: Color(0xFF02B793),fontWeight: FontWeight.w700),)
                  ]),),            ],
          ),
        ),
      ),
    );
  }
}