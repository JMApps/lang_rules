import 'package:flutter/material.dart';
import 'package:lang_rules/domain/state/add_rule_state.dart';
import 'package:lang_rules/presentation/widgets/add_rule_container.dart';
import 'package:provider/provider.dart';

class AddRulePage extends StatelessWidget {
  const AddRulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AddRuleState>(
          create: (_) => AddRuleState(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text('Добавить правило'),
        ),
        body: const AddRuleContainer(),
      ),
    );
  }
}
