import 'package:flutter/material.dart';
import 'package:lang_rules/presentation/buttons/add_rule_button.dart';
import 'package:lang_rules/presentation/lists/rules_list.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Правила языка'),
      ),
      body: const RulesList(),
      floatingActionButton: const AddRuleButton(),
    );
  }
}
