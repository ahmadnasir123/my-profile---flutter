// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ChatForm extends StatefulWidget {
  const ChatForm({super.key});

  @override
  State<ChatForm> createState() => _ChatFormState();
}

class _ChatFormState extends State<ChatForm> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Chat'),
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: myController,
                decoration: InputDecoration(hintText: 'Ketikan Nama Anda'),
                autofocus: true,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 68, 255, 74),
                    ),
                    child: Text('Kirim'),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Text(
                                  '${myController.text.toUpperCase()}, Pesan anda berhasil dikirim'),
                            );
                          });
                    },
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: Text('Clear'),
                    onPressed: () {
                      myController.clear();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
