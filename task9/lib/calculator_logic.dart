class CalculatorLogic {
  String _display = "";
  String _input = "";
  double _firstNum = 0;
  String _operator = "";

  String get display => _display;

  void buttonPressed(String value) {
    if (value == 'C') {
      _display = "0";
      _input = "";
      _firstNum = 0;
      _operator = "";
    } else if (value == "+" || value == "-" || value == "×" || value == "÷") {
      _firstNum = double.tryParse(_input) ?? 0;
      _operator = value;
      _input = "";
    } else if (value == "=") {
      double secondNum = double.tryParse(_input) ?? 0;
      double result = 0;
      if (_operator == "+") result = _firstNum + secondNum;
      if (_operator == "-") result = _firstNum - secondNum;
      if (_operator == "×") result = _firstNum * secondNum;
      if (_operator == "÷") {
        result = secondNum != 0 ? _firstNum / secondNum : 0;
      }
      _display = result.toString();
      _input = _display;
    } else {
      _input += value;
      _display = _input;
    }
  }
}
