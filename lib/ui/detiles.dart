import 'package:flutter/material.dart';

class Detiles extends StatefulWidget {
  final String url;
  final String name;
  final String rate;
  final String startTime;
  final String endTime;
  final String decription;
  final String commmenter;
  final String comment;
  Detiles({
    required this.name,
    required this.url,
    required this.rate,
    required this.startTime,
    required this.endTime,
    required this.decription,
    required this.commmenter,
    required this.comment,
  });

  @override
  State<Detiles> createState() => _DetilesState();
}

class _DetilesState extends State<Detiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  widget.url,
                                ),
                                fit: BoxFit.cover),
                          )),
                      Positioned(
                        child: Container(
                          width: 100,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                            Text(
                              "${widget.endTime}-${widget.startTime}",
                              style: TextStyle(fontSize: 30),
                            ),
                            Text(
                              "min",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                  color: Colors.grey),
                            )
                          ]),
                        ),
                        bottom: -10,
                        left: 10,
                      ),
                      Positioned(
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                        left: 20,
                        top: 10,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text(
                        widget.name,
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        widget.decription,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0x649CBBFF),
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add_circle_outline,
                                    color: Colors.blueAccent,
                                  ),
                                  SizedBox(width: 5,),
                                  Text("Earn Point",
                                      style: TextStyle(

                                          color: Colors.blueAccent,
                                          )),

                                ]),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 30,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0x4FFFA600),
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.monetization_on_outlined,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(width: 5,),
                                  Text("30% Cashback",
                                      style: TextStyle(color: Colors.orange)),

                                ]),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0x4FFFA600),
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.discount_outlined,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(width: 5,),
                                  Text("50% off",
                                      style: TextStyle(
                                          color: Colors.orange,
                                          )),

                                ]),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "${widget.rate}",
                            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 50),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [

                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              Text("Based on 934 ratings")
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              height: 1,
              color: Colors.black12,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [Text(
                        widget.commmenter,
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),SizedBox(
                        width: 10,
                      ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Icon(
                              Icons.star_rounded,
                              color: Color(0xFFF5F35E),
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Color(0xFFF5F35E),
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Color(0xFFF5F35E),
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.grey,
                            ),
                          ],
                        ),

                      ]),
                  SizedBox(height: 5,),

                  Text(
                    '${widget.comment}',
                    style:
                    TextStyle(fontWeight: FontWeight.w900, color: Colors.grey, ),
                  ),
                  SizedBox(height: 5,),

                      Text(
                        "Read more",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, color: Colors.green),
                      ),



                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    height: 1,
                    color: Colors.black12,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [Row(
                      children: [ Image(
                        image: AssetImage("images/write_icon.png"),
                        color: Colors.green,
                        width: 20,
                        height: 20,
                      ),SizedBox(width: 5),
                        Text(
                          "Write a review",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, color: Colors.green),
                        ),


                      ],
                    ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.star_rounded,
                            color: Colors.black12,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Colors.black12,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Colors.black12,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Colors.black12,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Colors.black12,
                          ),
                        ],
                      ),

                    ],
                  )
                ],
              ),
            )
          ]),
    );
  }

}
