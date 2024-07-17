import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../component/big_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BigButton(
          title: 'Button',
          onTap: () {
            const person = Person(name: 'name', age: 10);
            
            context.push(Uri(
              path: '/',
              queryParameters: { 'person': jsonEncode(person.toJson())}
            ).toString());
          },
        ),
      ),
    );
  }
}

class Person {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': this.name,
      'age': this.age,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      name: map['name'] as String,
      age: map['age'] as int,
    );
  }
}