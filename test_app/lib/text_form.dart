import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  const TextForm({super.key});

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {

  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();
  String textResult = "";

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
        title: const Text("Test", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextFormField(decoration: InputDecoration(
              labelText: "Your text",
              suffixIcon: IconButton( onPressed: _clearText, icon: Icon(Icons.delete_sharp),)
              ), 
              controller: _textController,
              validator: (value)=> value!.isEmpty ? "Enter your text" : null),
              const SizedBox(height: 30,),
            ElevatedButton(
              onPressed: _display, 
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black)
              ),
              child: const Text("Display text", style: TextStyle(color: Colors.white),),),
              const SizedBox(height: 30,),
              Text(textResult, style: TextStyle(fontSize: 20),)
          ],
      ),)
          );
  }

  void _display() {
    if (_formKey.currentState!.validate()) {
      textResult = _textController.text;
      setState(() {});
    }
  }

  void _clearText() {
    _textController.clear();
  }
  }
