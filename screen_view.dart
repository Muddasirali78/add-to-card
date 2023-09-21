

import 'package:flutter/material.dart';

class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => screenState();
}

class screenState extends State<screen> {

TextEditingController freindlistController = TextEditingController();
  List freindlist = ["bilal","ahmted","shafi"];
  additem(){
    setState(() {
      freindlist.add("value");
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Container(margin: EdgeInsets.only(bottom: 23),
      child: Scaffold (appBar: AppBar
      
      
      (
        title: TextField(controller: freindlistController,),
    
      
        
        
        actions: [ElevatedButton(onPressed: (){
        setState(() {
          freindlist.add(freindlistController.text);
          freindlistController.clear();
        });
      }, child: Text("add item"))],),
      
      
      
      body:
        SafeArea(child: ListView.builder(
          
          itemCount: freindlist.length,
          itemBuilder: (context,index){
            return Container(margin: EdgeInsets.only(bottom: 32),
              child: ListTile(
                tileColor: Colors.black54,
                title: Text(freindlist[index]),
               trailing: IconButton(onPressed: (){
                setState(() {
                  freindlist.removeAt(index);
                });
               }, icon: Icon(Icons.delete),


              ),
            ));
          })
        ),
      ),
    )

      ;}
    
    
    
    
    
    
    
    
    
    
    
    
    }
