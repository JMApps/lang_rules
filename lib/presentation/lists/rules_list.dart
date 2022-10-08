import 'package:flutter/cupertino.dart';
import 'package:lang_rules/domain/state/rule_add_change_text_fields_state.dart';
import 'package:lang_rules/presentation/items/rules_item.dart';
import 'package:provider/provider.dart';

class RulesList extends StatelessWidget {
  const RulesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: context.watch<RuleAddChangeTextFieldsState>().getDatabaseQuery.getAllRules(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text('${snapshot.error}'),
          );
        }
        return snapshot.hasData
            ? CupertinoScrollbar(
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return RulesItem(item: snapshot.data[index]);
                  },
                ),
              )
            : const Center(
                child: Text('Добавьте первое правило'),
              );
      },
    );
  }
}
