import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  const TextForm({super.key});

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {

  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

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
              suffixIcon: IconButton( onPressed: _clearText, icon: Icon(Icons.delete_outline),)
              ), 
              controller: _textController,
              validator: (value)=> value!.isEmpty ? "Enter your text" : null),
            ElevatedButton(
              onPressed: _display, 
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black)
              ),
              child: Text("Display text", style: TextStyle(color: Colors.white),),)
          ],
      ),)
          );
  }

  void _display() {
    if (_formKey.currentState!.validate()) {
      print("test");
    }
  }

  void _clearText() {
    _textController.clear();
  }
  }
