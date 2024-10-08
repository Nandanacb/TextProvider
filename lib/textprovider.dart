import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:textscreen/textinputprovider.dart';

class TextScreen extends StatefulWidget{
  @override
  State<TextScreen> createState()=> _TextScreenState();
}
class _TextScreenState extends State<TextScreen>{

  @override
  Widget build(BuildContext context){
    final textinputprovider=Provider.of<TextInputprovider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Text input with provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: textinputprovider.ChangeText,
              decoration: InputDecoration(border: OutlineInputBorder()),
            
            ),
            SizedBox(height: 15),
            Text("You typed:${textinputprovider.text}"),
          ],
        ),
      ),
    );
  }
}