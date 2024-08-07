import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_5/Screen/user.dart';

class HomeScreen extends StatelessWidget {
  List list=["ورد","هدايا","كروت","اكواب"];
   List list3=["هدايا","ورد","ورد","هدايا"];
  List list2=["بوكس مميز","باقة التوليب","نسق باقة ازهارك","بوكس الكتب"];
  List<Color> bgcolor=[
const Color.fromARGB(255, 252, 246, 188),
const Color.fromARGB(255, 255, 183, 207),
const Color.fromARGB(255, 181, 222, 255),
Color.fromARGB(255, 188, 255, 191),
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      
      color:Color.fromARGB(255, 255, 255, 248),
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 50,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(


            children: [
              Column( 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("الموقع",style: TextStyle(color: Colors.black,fontSize:10,fontWeight:FontWeight.bold ),),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Icon(Icons.place,color: Color.fromARGB(255, 255, 217, 101),size: 25,),
                      Text("مكة المكرمة",style: TextStyle(color: Colors.black,fontSize: 15,),),
                      Icon(Icons.arrow_drop_down,color: Color.fromARGB(255, 255, 217, 101),),],),],),
                      SizedBox(width: 340,),
                    
                        
                    
                        InkWell(
                          
                          onTap: (){

          Navigator.push(context, MaterialPageRoute(builder: (context)=> User()));
                          },child: Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage("assets/user.jpg"),
                                fit: BoxFit.contain)),
                        
                         ), ),
                         ],),),
                      
          
          SizedBox(height:20 ,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width/1.4,
                padding: EdgeInsets.symmetric(horizontal: 10,vertical:5,),
                decoration: BoxDecoration(color: Color.fromARGB(116, 252, 196, 196),borderRadius:BorderRadius.circular(12)),
                child: Center(child:TextFormField(
                  decoration: InputDecoration(
                    hintText: "البحث"
                  ),
                ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(color: Color.fromARGB(148, 255, 193, 193),borderRadius: BorderRadius.circular(12)),
                  child: Icon(Icons.list,color: Color.fromARGB(255, 248, 243, 245),size: 35,),
                ),

              ),
            ],
          ),
          SizedBox(height: 10,),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("assets/banner2.jpg",height: 150,),
              ),
            ),

        Padding(

          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("الاقسام",style: TextStyle(color: Colors.pink,fontSize: 15,fontWeight: FontWeight.bold),),
              TextButton(onPressed: (){}, child: Text("اظهار الكل",style: TextStyle(color: Colors.pink,fontSize: 15,fontWeight: FontWeight.bold),),),
            ],
          ),
          ),
          SizedBox(height: 200,
          child: ListView.builder(
            scrollDirection:Axis.horizontal ,
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder:(context, Index) {
              return Container(
                width:200,
                margin: EdgeInsets.only(left:15),
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: bgcolor[Index],
                  borderRadius: BorderRadius.circular(10),
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Image.asset("assets/${list[Index]}.jpg",width: 150,height: 150,),
                  Text(list[Index],style: TextStyle(color: Colors.black,fontSize: 12),),

                ],),
              );
            },),
          ),

          
          Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("الاكثر مبيعا",style: TextStyle(color: Colors.pink,fontSize: 15,fontWeight: FontWeight.bold),),
              TextButton(onPressed: (){}, child: Text("اظهار الكل",style: TextStyle(color: Colors.pink,fontSize: 15,fontWeight: FontWeight.bold),),),
            ],
          ),
          ),
          SizedBox(height: 220,
          child: ListView.builder(
            scrollDirection:Axis.horizontal ,
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder:(context, Index) {
              return InkWell(
                onTap:(){},
                child: Container(
                  width: MediaQuery.of (context) .size.width/1.7,
                  margin: EdgeInsets.only(left: 15,
                  top:5,
                  right: 5,
                  bottom: 5,

                  ),
                   decoration: BoxDecoration(color: Color.fromARGB(118, 255, 193, 193),borderRadius: BorderRadius.circular(10)),
                   child: Column(children: [ClipRRect(borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),

                   ),
                   child: Image.asset("assets/${list2[Index]}.jpg",height: 130,
                   width: 350,
                   fit: BoxFit.cover,
                   ),
                   ),
                   Padding(padding: EdgeInsets.only(left: 10),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column( crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(list2[Index],style: TextStyle(color:Colors.pink),),
                          SizedBox(height: 5,),
                          Text(list3[Index],style: TextStyle(color: Color.fromARGB(132, 171, 76, 114)),),
                          SizedBox(height: 3,),
                          Row(
                            children: [
                              Icon(Icons.star,size:20,color: Color.fromARGB(255, 255, 205, 5),),
                              Text("4.8",style: TextStyle(fontSize: 10,fontWeight:FontWeight.bold, ),),
                              SizedBox(width: 6,),
                              Text('تقييم25',style: TextStyle(fontSize:10 ),),

                            ],
                          ),
                        ],

                      ),
                      Column(
                        children: [

                         
                         SizedBox(height: 30,),
                         Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(color: Colors.pink.shade200,
                          borderRadius:BorderRadius.circular(12)),child:Container(child: Row(children: [
                            Text("/SAR128"),
                            SizedBox(width: 3,),
                            Icon(Icons.add_shopping_cart_sharp),


                          ],),)
                          
                          
                        
                         )

                        ],
                      ),
                    ],
                   ),
                   
                   
                   ),
                   ],
                   ),


                ),

              );
            },),

          ),

        ],),
      ),


      
      

    );
  }
}