

import 'package:flutter/material.dart';
import 'package:ji/screen_view.dart';

void main(){
runApp (myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: screen(),);
  }
}