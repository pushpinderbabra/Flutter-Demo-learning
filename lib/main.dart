import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "MY APP",
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.indigo
    ),

  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.grey[200],
     appBar: AppBar(
       title: Text("My First Application"),
     ),
     body: Padding(
       padding: const EdgeInsets.all(8.16),
       child: SingleChildScrollView(
         child: Card(
         child: Column(
           children: [
             Image.network("https://images.unsplash.com/photo-1481833761820-0509d3217039?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
             fit: BoxFit.cover),
             Text("My Application",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
             Padding(padding: const EdgeInsets.all(16.0),
             child: TextField(
               decoration:
               InputDecoration(border: OutlineInputBorder(),hintText: "Enter Your Name",labelText: "Name"),
             ),
             ),

           ],
         ),
     ),
       ),
     ),
     drawer: Drawer(
       child: ListView(
         padding: EdgeInsets.zero,
         children: [
           UserAccountsDrawerHeader(
               accountName: Text("Pushpinder Babra"),
               accountEmail: Text("pushpinderbabra@gmail.com"),
           currentAccountPicture: CircleAvatar(
             backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/79337614?v=4"),
           )
           ),
           ListTile(
             leading: Icon(Icons.person),
             title: Text("Account"),
             subtitle: Text("Saving Account"),
             trailing: Icon(Icons.edit),
           ),
           ListTile(
             leading: Icon(Icons.email),
             title: Text("Email"),
             subtitle: Text("pushpinderbabra@gmail.com"),
             trailing: Icon(Icons.send),
           )
         ],
       ),
     ),
     floatingActionButton: FloatingActionButton(
       onPressed: () {},
     child: Icon(Icons.edit),
     ),
   );
  }
}
