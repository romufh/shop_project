import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_5/Screen/home.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color:Color.fromRGBO(255, 253, 249, 1),
      child: Column(mainAxisAlignment: MainAxisAlignment.end,children: [
        Expanded(child: Center(child : Image.asset("assets/open.jpg",fit: BoxFit.contain,)
        
      ),
      ),
      SizedBox(height: 10,),
      Text("مرحبا بك!",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.pink,fontStyle: FontStyle.italic
      ),
      ),
      Padding(padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5
      ),
      child:Text("هنا تجد كل ماتفكر به",style: TextStyle(fontSize: 15,color:Color.fromARGB(140, 240, 76, 130),),textAlign: TextAlign.center,),


      ),
      SizedBox(height: 50,),
      InkWell(
        onTap:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
        },
        child: Container(margin: EdgeInsets.symmetric(horizontal:50,vertical: 30 ),
        padding: EdgeInsets.symmetric(vertical: 75),
        decoration: BoxDecoration(shape:BoxShape.circle ,color:Colors.pink,),
        child: Row(mainAxisAlignment:MainAxisAlignment.center,children: [Text("انقر هنا",style: TextStyle(fontSize: 20,color:Colors.white,),),
        SizedBox(width: 10,),
        Icon(Icons.arrow_forward_ios,color: Colors.white,)
        ],
        ),
        ),
        
      ),
      ],
      ),
       
    );


  }
}