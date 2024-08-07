import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
       home: const MyHomePage()
    );
  }
}
Map<String,User>users={
};
bool isSecured=true;
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // This widget is the home page of your application. It is stateful, meaning
  TextEditingController emailcont=TextEditingController();
   TextEditingController Passwordcont=TextEditingController();
  
  @override
  Widget build(BuildContext context) {










    return Scaffold(
            appBar:AppBar(
        backgroundColor: Color.fromARGB(255, 255, 202, 220),
        centerTitle: true,
        title:Text(
          "welcome",
          style: TextStyle(fontSize:20,color:Colors.white,),
        ),
        leading:  Icon(Icons.list,color:Colors.white,size: 20,),
      ),
      body: SingleChildScrollView(child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        
       
          SizedBox(
            
          height:150,
        ),
         Padding(
          padding:EdgeInsets.all(20) ,
          child: Column(
            children: [
               TextFormField(
                controller: emailcont,
                decoration: InputDecoration(
                  label: Text('Enter Email',style:TextStyle(color: Color.fromARGB(255, 245, 138, 188)),),
                  prefixIcon: Icon(Icons.person,color: Color.fromARGB(182, 246, 160, 190),),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                    ),
                 ),
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: Passwordcont,
                obscureText:isSecured ,
                decoration: InputDecoration(
                  label: Text('Enter Password',style:TextStyle(color: Color.fromARGB(255, 251, 190, 219)),),
                  prefixIcon: Icon(Icons.lock,color: Color.fromARGB(182, 246, 160, 190),),
                  suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        isSecured=!isSecured;
                      });
                    },
                    icon:Icon(Icons.remove_red_eye),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              InkWell(
                onTap:(){
                  String email=emailcont.text;
                  String Password=Passwordcont.text;
                  print(email);
                  print(Password);
                },
                child:Container(
                  padding:EdgeInsets.all(50
                  ),
                  decoration: BoxDecoration(shape:BoxShape.circle,
              
                  color: Color.fromARGB(255, 255, 189, 211),),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Text('Loding',style: TextStyle(color: Colors.white),),
                      SizedBox(width:5,),
                      Icon(Icons.login,color: Colors.white,)
                    ],
                   
                  ),
                  ),
              ),
               SizedBox(height:30,),
               

            ],
          ),
          ),
          
      
      ]
      ),
    ),






    );
  }
}