import 'package:flutter/material.dart';
import 'package:task9/calculator_button.dart';
import 'package:task9/calculator_logic.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final CalculatorLogic _logic = CalculatorLogic();

  void _onButtonClick(String value) {
    setState(() {
      _logic.buttonPressed(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simple Calculator")),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(20),
              child: Text(
                _logic.display,
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  CalculatorButton(
                    text: "7",
                    onPressed: () => _onButtonClick("7"),
                  ),
                  CalculatorButton(
                    text: "8",
                    onPressed: () => _onButtonClick("8"),
                  ),
                  CalculatorButton(
                    text: "9",
                    onPressed: () => _onButtonClick("9"),
                  ),
                  CalculatorButton(
                    text: "÷",
                    color: Colors.orange,
                    onPressed: () => _onButtonClick("÷"),
                  ),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(
                    text: "4",
                    onPressed: () => _onButtonClick("4"),
                  ),
                  CalculatorButton(
                    text: "5",
                    onPressed: () => _onButtonClick("5"),
                  ),
                  CalculatorButton(
                    text: "6",
                    onPressed: () => _onButtonClick("6"),
                  ),
                  CalculatorButton(
                    text: "×",
                    color: Colors.orange,
                    onPressed: () => _onButtonClick("×"),
                  ),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(
                    text: "1",
                    onPressed: () => _onButtonClick("1"),
                  ),
                  CalculatorButton(
                    text: "2",
                    onPressed: () => _onButtonClick("2"),
                  ),
                  CalculatorButton(
                    text: "3",
                    onPressed: () => _onButtonClick("3"),
                  ),
                  CalculatorButton(
                    text: "-",
                    color: Colors.orange,
                    onPressed: () => _onButtonClick("-"),
                  ),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(
                    text: "0",
                    onPressed: () => _onButtonClick("0"),
                  ),
                  CalculatorButton(
                    text: "C",
                    color: Colors.red,
                    onPressed: () => _onButtonClick("C"),
                  ),
                  CalculatorButton(
                    text: "=",
                    color: Colors.green,
                    onPressed: () => _onButtonClick("="),
                  ),
                  CalculatorButton(
                    text: "+",
                    color: Colors.orange,
                    onPressed: () => _onButtonClick("+"),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
