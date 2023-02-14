import 'package:bloc_starter/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    Counter myCounter = context.read<Counter>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Other Page"),
      ),
      body: Center(
        child: BlocBuilder<Counter, int>(
          bloc: myCounter,
          builder: (context, state) {
            return Text(
              "$state",
              style: const TextStyle(
                fontSize: 50,
              ),
            );
          },
        ),
      ),
    );
  }
}