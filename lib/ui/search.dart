import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List listSearch = [ ];
  Future Search_getData() async{
    var url=Uri.parse("http://localhost:4000/SearchPage");
    Response response= await get(url);
    String body =response.body;
    List<dynamic> list1=json.decode(body);
    for (int i=0; i<list1.length; i++){
      setState(() {
        listSearch.add(list1[i]);
      });
    }

  }
  @override
  void initState() {
    super.initState();
    Search_getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(left: 15,right:15,top: 50, ),
            child:Container(width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width-340,
            decoration: BoxDecoration(
                color: Colors.black12,borderRadius: BorderRadius.circular(10)
            ),child: Padding(padding: EdgeInsets.only(left: 10),
                child: Row(children: [
                  Icon(Icons.search,color: Colors.grey),
                  Text("Search for store or item",style: TextStyle(color: Colors.grey),)
                ],),)),
            ),
          Container(width: MediaQuery.of(context).size.width,
          height:  MediaQuery.of(context).size.height-167,
          child:

          ListView(children: [
            Container(width: MediaQuery.of(context).size.width,
              height: 100,color: Color(0xFF02AD8B),
              child:Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(image: NetworkImage("https://cdn.iconfinder.com/icons/6712700/7190883/256/raster.png?token=1663578304-S4qI%2Fv43Nnf6ksFUCEjYhsxkEcyRug0%2FmGsp9Ro%2FNyE%3D",scale: 3)),
                    SizedBox(width: 20,),
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text("Order Anything!",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500)),
                        SizedBox(height: 10,),
                        Text("new on Toters! If it fits on",style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.w500)),
                        Text("motorbike we can deliver it.",style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.w500)),
                      ],),
                    Spacer(),

                    Icon(Icons.arrow_forward_ios,color: Colors.white,size: 15,)
                  ],
                ),),),SizedBox(height: 10,),


            Container(width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(scrollDirection: Axis.vertical,
                  itemCount: listSearch.length,
                  itemBuilder: (BuildContext , int index){
                    return card(
                      (listSearch[index]['title']),
                      (listSearch[index]['url']),
                      (listSearch[index]['des1']),
                      (listSearch[index]['des2']),
                      (listSearch[index]['storsNumber']),
                    );
                  }),),



          ]) ,)


        ],
      ),

    );
  }
  Padding card(String url,String title,String des1,String des2,int storsNumber){
    return Padding(padding: EdgeInsets.only(bottom: 30),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [Container(width: 150,height: 100,decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image:  DecorationImage(
            image: AssetImage(url),fit: BoxFit.cover
        ),
      ),),

        SizedBox(width: 10,),
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
            SizedBox(height: 10,),
            Text(des1,style: TextStyle(color: Colors.grey)),
            Text(des1,style: TextStyle(color: Colors.grey)),
            SizedBox(height: 10,),
            Text("$storsNumber stors",style: TextStyle(color: Colors.green),)

          ],),

      ],
    ));

  }
}
