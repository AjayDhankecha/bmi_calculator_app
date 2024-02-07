import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomWidgets {
  static customTextFormField(TextEditingController controller, String hintext,
      String labletex, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
              hintText: hintext,
              label: Text(
                labletex,
                style: TextStyle(color: Colors.black),
              ),
              prefixIcon: Icon(icon),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.redAccent.shade700),
                  borderRadius: BorderRadius.circular(20)))),
    );
  }

  static customButton(VoidCallback onpressed, String text) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
          width: double.maxFinite,
          height: 50,
          child: ElevatedButton(
            onPressed: onpressed,
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.redAccent.shade700),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)))),
          )),
    );
  }
}
