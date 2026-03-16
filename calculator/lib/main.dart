import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _display = '0';
  String _operator = '';
  double _firstNumber = 0;
  bool _isOperatorPressed = false;

  void _onButtonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        _display = '0';
        _operator = '';
        _firstNumber = 0;
        _isOperatorPressed = false;
      } else if (buttonText == '+' ||
          buttonText == '-' ||
          buttonText == '*' ||
          buttonText == '/') {
        _operator = buttonText;
        _firstNumber = double.parse(_display);
        _isOperatorPressed = true;
      } else if (buttonText == '=') {
        double secondNumber = double.parse(_display);
        double result = 0;
        switch (_operator) {
          case '+':
            result = _firstNumber + secondNumber;
            break;
          case '-':
            result = _firstNumber - secondNumber;
            break;
          case '*':
            result = _firstNumber * secondNumber;
            break;
          case '/':
            result = _firstNumber / secondNumber;
            break;
        }
        _display = result.toString();
        _operator = '';
        _isOperatorPressed = false;
      } else {
        if (_isOperatorPressed) {
          _display = buttonText;
          _isOperatorPressed = false;
        } else {
          _display = _display == '0' ? buttonText : _display + buttonText;
        }
      }
    });
  }

  Widget _buildButton(String buttonText) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => _onButtonPressed(buttonText),
        child: Text(buttonText, style: const TextStyle(fontSize: 24)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator')),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(24),
              child: Text(
                _display,
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            children: [
              _buildButton('7'),
              _buildButton('8'),
              _buildButton('9'),
              _buildButton('/'),
            ],
          ),
          Row(
            children: [
              _buildButton('4'),
              _buildButton('5'),
              _buildButton('6'),
              _buildButton('*'),
            ],
          ),
          Row(
            children: [
              _buildButton('1'),
              _buildButton('2'),
              _buildButton('3'),
              _buildButton('-'),
            ],
          ),
          Row(
            children: [
              _buildButton('0'),
              _buildButton('C'),
              _buildButton('='),
              _buildButton('+'),
            ],
          ),
        ],
      ),
    );
  }
}
