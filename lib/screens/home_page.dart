import 'package:bmi_calculator_app/custom_widgets/custom_widget.dart';
import 'package:bmi_calculator_app/logic_code/app_logic.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  TextEditingController wt = TextEditingController();
  TextEditingController ft = TextEditingController();
  TextEditingController inc = TextEditingController();

  BmiAppLogic lg = BmiAppLogic();
  var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lg.clr,
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade700,
        centerTitle: true,
        title: Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 25),
                Text(
                  'Calculate Your BMI',
                  style: TextStyle(
                      fontSize: 25, decoration: TextDecoration.underline),
                ),
                SizedBox(
                  height: 40,
                ),
                CustomWidgets.customTextFormField(
                    wt, 'Enter Your Weight in KG', 'Weight', Icons.line_weight),
                CustomWidgets.customTextFormField(
                    ft, 'Enter Your Height in Feet', 'Height', Icons.height),
                CustomWidgets.customTextFormField(
                    inc, 'Enter Your Height in Inch', 'Inch', Icons.height),
                CustomWidgets.customButton(() {
                  lg.getResult(wt.text.toString(), ft.text.toString(),
                      inc.text.toString());
                  setState(() {});
                }, 'GET BMI'),
                Text(
                  'Your BMI is : ${lg.result}',
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
