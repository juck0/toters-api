import 'dart:convert';

import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:http/http.dart';
import 'package:toters_app/ui/profile.dart';
import 'package:toters_app/ui/search.dart';
import '/ui/detiles.dart';
import 'order.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> listImages = [
    'images/50%.jpg',
    'images/discount.jpg',
    'images/pizza.jpg',
    'images/school.jpg',
    'images/point.jpg',
  ];
  List listMain = [ ];
  List categoryList = [ ];
  List nearbyList = [];
  Future getData() async{
    var url=Uri.parse("http://localhost:4000/HomePage");
    Response response= await get(url);

    String body =response.body;

    List<dynamic> list1=json.decode(body);
    print(list1);

    for (int i=0; i<list1.length; i++){
      setState(() {
        listMain.add(list1[i]);
      });
    }

  }
  Future category_getData() async{
    var url=Uri.parse("http://localhost:4000/CategoryHomePage");
    Response response= await get(url);
    String body =response.body;
    List<dynamic> list1=json.decode(body);
    for (int i=0; i<list1.length; i++){
      setState(() {
        categoryList.add(list1[i]);
      });
    }

  }
  Future Nearby_getData() async{
    var url=Uri.parse("http://localhost:4000/NearbyHomePage");
    Response response= await get(url);

    String body =response.body;

    List<dynamic> list1=json.decode(body);
    print(list1);

    for (int i=0; i<list1.length; i++){
      setState(() {
        nearbyList.add(list1[i]);
      });
    }

  }
  @override
  void initState() {
    super.initState();
    getData();
    category_getData();
    Nearby_getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      leadingWidth: 300,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Row(
            children: [
            Image(image: AssetImage("images/setting_icon.png"),
                        width: 15,
                        height: 15),
              SizedBox(
                width: 20,
              ),
              Icon(
                  (Icons.notifications_none), color: Colors.grey, size: 15)

            ],
          ),
        )
      ],
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 10),
              child: GestureDetector(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivering To",
                      style: TextStyle(color: Colors.black),
                    ),
                    Row(
                      children: [
                        Text("Baghdad, Iraq",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        )
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0.5,
    ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Green",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.info_outline,
                                color: Colors.green,
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "10 more orders by Semptember 30 to reach Gold",
                            style: TextStyle(color: Colors.grey,fontSize: 10),
                          ),

                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            Text(
                              "0",
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text("Pts",
                                    style:
                                    TextStyle(fontWeight: FontWeight.w900)),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                )
                              ],
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                  CarouselImages(
                    scaleFactor: 0.9,
                    listImages: listImages,
                    height: 200.0,
                    borderRadius: 20.0,
                    cachedNetworkImage: true,
                    verticalAlignment: Alignment.bottomCenter,
                    onTap: (index) {
                      print('Tapped on page $index');
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.iconfinder.com/icons/701177/1123546/256/raster.png?token=1663571781-U%2BTJ%2Bm5P5dat4%2BOzBgmmOXD9fSvREDweo474sXLmouo%3D"
                                  ,scale: 6),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 80, left: 60),
                            child: Text("Food",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                )),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.iconfinder.com/icons/6795599/7273782/512/raster.png?token=1663571853-USOleyYBODABLag5m%2F5xe%2Bu5IpqNvvF3dKh3P3E6%2FX8%3D",
                                  scale: 11),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 80, left: 55),
                            child: Text("Market",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                )),
                          )),


                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 99,
                          width: 99,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn4.iconfinder.com/data/icons/Gifts/128/box2.png",
                                  scale: 3),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 75, left: 25),
                            child: Text("Rewards",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                )),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 99,
                          width: 99,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn2.iconfinder.com/data/icons/smooth-3d-finance/256/Wallet.png",
                                  scale: 6),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 75, left: 20),
                            child: Text("Add Funds",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                )),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 99,
                          width: 99,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.iconfinder.com/icons/8020609/8590278/512/raster.png?token=1663572687-IeTmd8jY7ACsGyFRHB4%2B8RrKWx4a0E6YD7bk5AR1W3w%3D",
                                  scale: 10),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 77, left: 29),
                            child: Text("Butler",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                )),
                          )),



                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ]),
              ),
              Container(
                width: 600,
                height: 10,
                color: Colors.black12,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Weekly Discounts 🗓",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Get up to 50% OFF on these selected restaurants this week!",
                          style: TextStyle(color: Colors.grey,fontSize: 10),
                        )
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20, top: 20),
                child: Container(
                    height: 280,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: ListView.builder(scrollDirection: Axis.horizontal,
                        itemCount: listMain.length,
                        itemBuilder: (BuildContext , int index){
                          return weekColumn(
                              (listMain[index]['restrant_name']),
                              (listMain[index]['restrant_image']),
                              (listMain[index]['restrant_rate']),
                              (listMain[index]['startTime']),
                              (listMain[index]['endTime']),
                              (listMain[index]['category']),
                            (listMain[index]['decription']),
                            (listMain[index]['comment']),
                            (listMain[index]['commmenter']),
                              );
                        })
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 600,
                height: 10,
                color: Colors.black12,
              ),
              Padding(
                  padding: EdgeInsets.only(right: 20, left: 20, top: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child:
                    ListView.builder(scrollDirection: Axis.horizontal,
                        itemCount: categoryList.length,
                        itemBuilder: (BuildContext , int index){
                          return category(
                            (categoryList[index]['category_url']),
                            (categoryList[index]['category_name']),
                          );
                        })

                  )),
              Container(
                width: 600,
                height: 10,
                color: Colors.black12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Nearby",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Container(width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                    child: ListView.builder(scrollDirection: Axis.horizontal,
                        itemCount: nearbyList.length,
                        itemBuilder: (BuildContext , int index){
                          return closeColumn(
                            (nearbyList[index]['restrant_name']),
                            (nearbyList[index]['restrant_image']),
                            (nearbyList[index]['restrant_rate']),
                            (nearbyList[index]['startTime']),
                            (nearbyList[index]['endTime']),
                            (nearbyList[index]['category']),

                          );
                        }),),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ],
          )),

    );
  }

  Column category(String category_url,category_name){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
            image: NetworkImage(category_url)),
            SizedBox(height: 10,),
        Text(
          category_name,
          style: TextStyle(
              fontWeight: FontWeight.w900, fontSize: 15),
        )
      ],
    );
  }
  Column weekColumn(String name, String url, String rate,String startTime,String endTime,String category,
      String decription,String commment,String commmenter) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Detiles(name: name,
                        endTime: endTime,startTime:startTime,comment: commment,commmenter: commmenter,decription: decription,
                        url: url, rate: rate,)));
                },
                child: Container(
                    width: MediaQuery.of(context).size.width - 100,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: NetworkImage(
                            url,
                          ),
                          fit: BoxFit.cover),
                    )),
              ),
              Positioned(
                child: Container(
                  width: 70,
                  height: 40,
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
                          "20 - 30",
                          style: TextStyle( fontSize: 15,fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "mins",
                          style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 10,color: Colors.grey),
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
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 5,),
            Text(
              "\$\$ . ${category}",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                                fontSize: 10,
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.w900)),

                      ]),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black12),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(rate),
                        Icon(
                          Icons.star_rate_rounded,
                          color: Colors.green,
                        )
                      ]),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Column closeColumn(String name, String url, String rate,String startTime,String endTime,String category) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                          url,
                        ),
                        fit: BoxFit.cover),
                  )),
              Positioned(
                child: Container(
                  width: 70,
                  height: 40,
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
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Text(
                      "${startTime} - ${endTime}",
                      style: TextStyle( fontSize: 15,fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "mins",
                      style:
                      TextStyle(fontWeight: FontWeight.w900, fontSize: 10,color: Colors.grey),
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
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),

            Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 10,),
            Text(
              " \$\$ . ${category}",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      children: [Icon(
                        Icons.add_circle_outline,
                        color: Colors.blueAccent,
                      ),
                        Text("Earn Point",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.w900)),

                      ]),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black12),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(rate),
                        Icon(
                          Icons.star_rate_rounded,
                          color: Colors.green,
                        )
                      ]),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

}























// Column weekColumn(String url, String name, String rate,String startTime,String endTime,
//     String decription,String commmenter,String comment) {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.start,
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Padding(
//         padding: EdgeInsets.only(bottom: 10),
//         child: Stack(
//           clipBehavior: Clip.none,
//           children: [
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Detiles(name: name,
//                       endTime: endTime,startTime:startTime,comment: comment,commmenter: commmenter,decription: decription,
//                       url: url, rate: rate,)));
//               },
//               child: Container(
//                   width: MediaQuery.of(context).size.width - 100,
//                   height: 170,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     image: DecorationImage(
//                         image: NetworkImage(
//                           url,
//                         ),
//                         fit: BoxFit.cover),
//                   )),
//             ),
//             Positioned(
//               child: Container(
//                 width: 70,
//                 height: 40,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(7),
//                   color: Colors.white,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 5,
//                       offset: Offset(0, 3), // changes position of shadow
//                     ),
//                   ],
//                 ),
//                 child: Column(mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                   Text(
//                     "20 - 30",
//                     style: TextStyle( fontSize: 15,fontWeight: FontWeight.w400),
//                   ),
//                   Text(
//                     "mins",
//                     style:
//                     TextStyle(fontWeight: FontWeight.w900, fontSize: 10,color: Colors.grey),
//                   )
//                 ]),
//               ),
//               bottom: -10,
//               left: 10,
//             ),
//             Positioned(
//               child: Icon(
//                 Icons.favorite_border,
//                 color: Colors.white,
//               ),
//               left: 20,
//               top: 10,
//             )
//           ],
//         ),
//       ),
//       Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 10,),
//           Text(
//             name,
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
//           ),
//           SizedBox(height: 5,),
//           Text(
//             "\$\$ . Fast",
//             style: TextStyle(
//                 color: Colors.grey,
//                 fontSize: 15,
//                 fontWeight: FontWeight.w900),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Container(
//                 height: 30,
//                 width: 100,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                   color: Color(0x649CBBFF),
//                 ),
//                 child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         Icons.add_circle_outline,
//                         color: Colors.blueAccent,
//                       ),
//                       SizedBox(width: 5,),
//                       Text("Earn Point",
//                           style: TextStyle(
//                               fontSize: 10,
//                               color: Colors.blueAccent,
//                               fontWeight: FontWeight.w900)),
//
//                     ]),
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//               Container(
//                 height: 30,
//                 width: 70,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(5),
//                     color: Colors.black12),
//                 child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(rate),
//                       Icon(
//                         Icons.star_rate_rounded,
//                         color: Colors.green,
//                       )
//                     ]),
//               ),
//             ],
//           ),
//         ],
//       ),
//     ],
//   );
// }