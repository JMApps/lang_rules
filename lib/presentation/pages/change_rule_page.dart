import 'package:flutter/material.dart';
import 'package:lang_rules/data/database/model/rules_model_item.dart';
import 'package:lang_rules/presentation/widgets/change_rule_container.dart';

class ChangeRulePage extends StatelessWidget {
  const ChangeRulePage({Key? key, required this.item}) : super(key: key);

  final RulesModelItem item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Изменить правило'),
      ),
      body: ChangeRuleContainer(item: item),
    );
  }
}
