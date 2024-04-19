import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class EquatibleTestingWidget extends StatefulWidget {
  const EquatibleTestingWidget({super.key});

  @override
  State<EquatibleTestingWidget> createState() => _EquatibleTestingWidgetState();
}

class _EquatibleTestingWidgetState extends State<EquatibleTestingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FloatingActionButton(
        onPressed: () {
          Person person = const Person(name: "Asher", age: 24);
          Person person1 = const Person(name: "Asher", age: 24);

          if (kDebugMode) {
            print(person);
            print(person1);
          }
        },
      ),
    );
  }
}

class Person extends Equatable {
  final String name;
  final int age;

  const Person({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];
}
