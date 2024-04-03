import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  const TextForm({super.key});

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("TextField", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextFormField(decoration: InputDecoration(
              labelText: "Your text",
              suffixIcon: Icon(Icons.delete_forever)
              ), 
              validator: (value)=> value!.isEmpty ? "Enter your text" : null),
            ElevatedButton(
              onPressed: (){}, 
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black)
              ),
              child: Text("Display text", style: TextStyle(color: Colors.white),),)
          ],
      ),)
          );
  }
  }