import 'package:flutter/material.dart';
import 'package:lang_rules/data/database/model/rules_content_arguments.dart';
import 'package:lang_rules/data/database/model/rules_model_item.dart';
import 'package:lang_rules/domain/state/rule_add_change_text_fields_state.dart';
import 'package:provider/provider.dart';

class RulesItem extends StatelessWidget {
  const RulesItem({Key? key, required this.item}) : super(key: key);

  final RulesModelItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(25),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 16,
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    item.rule,
                    style: TextStyle(
                        color: Colors.red.shade700,
                        fontSize: 30,
                        fontFamily: 'Hafs'),
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                item.ruleTranslation,
                style: const TextStyle(
                  color: Colors.teal,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                item.ruleDescription,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                item.example,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                item.additionalComment,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.of(context).pushNamed(
            'change_rule_page',
            arguments: RulesContentArguments(item),
          );
        },
        onLongPress: () {
          context.read<RuleAddChangeTextFieldsState>().deleteRule(item.id);
        },
      ),
    );
  }
}
