import 'package:flutter/material.dart';
import 'package:lang_rules/presentation/widgets/add_rule_container.dart';

class AddRulePage extends StatelessWidget {
  const AddRulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Добавить правило'),
      ),
      body: const AddRuleContainer(),
    );
  }
}
