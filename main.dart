

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyHome(),));
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  bool _cheakbox =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      body:   Padding(
        padding: const EdgeInsets.only(left: 8,right: 8,top: 10),
        child: Column(
          children: [

            Image(image: NetworkImage("https://static.xx.fbcdn.net/rsrc.php/v3/y2/r/yvbOx5two0W.png")),
          //  SizedBox(height: 5,),
            Text("Messenger",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 30),),
            SizedBox(height: 8,),
            Text("Sign in with Facebook to started"),
            SizedBox(height: 14,),
            TextField(
              decoration: InputDecoration(
                  hintText: "Email address or phone number",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
              ),
            ),
            SizedBox(height: 5,),
            TextField(
              decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
              ),
            ),
            SizedBox(height: 7,),
            Container(
              height: 30,
              width: 280,
              color: Colors.brown,
              child: ElevatedButton(onPressed: (){},
                child: Text("Login"),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: ListTile(
                leading:  Checkbox(value: _cheakbox,
                    onChanged: (value){
                      setState(() {
                        _cheakbox = !_cheakbox;
                      });
                    }),
                title: Text("Keep me sign in",style: TextStyle(fontSize: 12),),
              ),
            ),

            SizedBox(height: 20,),

            Row(
              children: [
                Text("Get the app on"),
                TextButton(onPressed: (){},
                    child: Text("iOS")),
                TextButton(onPressed: (){},
                    child: Text("Desktop")),
                TextButton(onPressed: (){},
                    child: Text("Phone")),
                TextButton(onPressed: (){},
                    child: Text("Linux")),
              ],
            )

          ],
        ),
      ),
    );
  }
}