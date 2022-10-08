import 'package:flutter/material.dart';

class AddRuleButton extends StatelessWidget {
  const AddRuleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.indigo,
      elevation: 0,
      child: const Icon(Icons.add),
      onPressed: () {
        Navigator.of(context).pushNamed('add_rule_page');
      },
    );
  }
}
