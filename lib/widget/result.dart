import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key, required double result, required String name})
      : _kelvin = result,
        _name = name,
        super(key: key);

  final double _kelvin;
  final String _name;

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10),
          padding: const EdgeInsets.fromLTRB(5, 30, 5, 30),
          decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(_name),
              const Padding(padding: EdgeInsets.only(bottom: 20)),
              Text(
                _kelvin.toStringAsFixed(2),
                style: const TextStyle(fontSize: 36),
              )
            ],
          ),
        ),
      ],
    );
  }
}
