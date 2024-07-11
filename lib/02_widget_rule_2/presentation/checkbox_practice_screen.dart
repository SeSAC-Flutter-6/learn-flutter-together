import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:learn_flutter_together/02_widget_rule_2/presentation/component/big_button.dart';

class CheckboxPracticeScreen extends StatefulWidget {
  const CheckboxPracticeScreen({super.key});

  @override
  State<CheckboxPracticeScreen> createState() => _CheckboxPracticeScreenState();
}

class _CheckboxPracticeScreenState extends State<CheckboxPracticeScreen> {
  final List<bool> _values = List.generate(10, (index) => false);

  bool _allSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ..._values.map((e) => CheckboxListTile(
                  value: e,
                  title: const Text('aaasdfasdfadfasd'),
                  onChanged: (bool? value) {
                    setState(() {
                      _values[0] = value!;
                    });
                  },
                )),
            BigButton(
              title: 'Button',
              onTap: () {
                setState(() {
                  _allSelected = !_allSelected;
                  _values.fillRange(
                    0,
                    _values.length,
                    _allSelected,
                  );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
