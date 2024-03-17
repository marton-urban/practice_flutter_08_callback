import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EditingPage extends StatefulWidget {
  EditingPage(this.callback, {super.key});

  void Function(String) callback;

  @override
  State<EditingPage> createState() => _EditingPageState();
}

class _EditingPageState extends State<EditingPage> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Communication"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50,
            margin: const EdgeInsets.all(8),
            child: TextFormField(
              onTap: () {},
              controller: textController,
              maxLines: 1,
              maxLength: 20,
              decoration: const InputDecoration(
                hintText: "Enter Some Text Here",
                contentPadding: EdgeInsets.all(8),
              ),
            ),
          ),
          ElevatedButton(
              child: const Text("Submit"),
              onPressed: () {
                widget.callback(textController.text);
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
