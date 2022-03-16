import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            // controller: _controller.email = _emailController.text,
            decoration: const InputDecoration(
                floatingLabelBehavior:
                FloatingLabelBehavior.never,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none),
                contentPadding: EdgeInsets.only(left: 10),
                hintText: 'Enter Email'),
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            // controller: _controller.email = _emailController.text,
            decoration: const InputDecoration(
                floatingLabelBehavior:
                FloatingLabelBehavior.never,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none),
                contentPadding: EdgeInsets.only(left: 10),
                hintText: 'Enter Email'),
          ),
          GestureDetector(
              onTap: () {
              },
              child: GestureDetector(
                  onTap: () {
                  },
                  child: Text('LOG IN', ))),
        ],
      ),
    );
  }
}
