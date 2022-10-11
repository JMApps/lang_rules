import 'package:flutter/material.dart';
import 'package:lang_rules/data/database/model/rules_model_item.dart';
import 'package:lang_rules/domain/state/update_rule_state.dart';
import 'package:lang_rules/presentation/widgets/change_rule_container.dart';
import 'package:provider/provider.dart';

class ChangeRulePage extends StatelessWidget {
  const ChangeRulePage({Key? key, required this.item}) : super(key: key);

  final RulesModelItem item;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UpdateRuleState>(
          create: (_) => UpdateRuleState(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text('Изменить правило'),
        ),
        body: ChangeRuleContainer(item: item),
      ),
    );
  }
}
