import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lang_rules/domain/state/rule_add_change_text_fields_state.dart';
import 'package:provider/provider.dart';

class AddRuleContainer extends StatefulWidget {
  const AddRuleContainer({Key? key}) : super(key: key);

  @override
  State<AddRuleContainer> createState() => _AddRuleContainerState();
}

class _AddRuleContainerState extends State<AddRuleContainer> {
  @override
  Widget build(BuildContext context) {
    final watchRuleState = context.watch<RuleAddChangeTextFieldsState>();
    final readRuleState = context.read<RuleAddChangeTextFieldsState>();
    return Container(
      padding: const EdgeInsets.all(16),
      child: CupertinoScrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: watchRuleState.getRuleController,
                autofocus: true,
                autocorrect: false,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                maxLines: 1,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Hafs',
                  fontSize: 25,
                  color: Colors.red,
                ),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  hintText: 'Введите название правила*',
                  hintStyle: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Calibri',
                    color: Colors.grey,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 1.5,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onChanged: (String? value) {},
              ),
              const SizedBox(height: 16),
              TextField(
                controller: watchRuleState.getRuleTranslationController,
                autofocus: false,
                autocorrect: false,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                maxLines: 1,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 18,
                  color: Colors.teal,
                ),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  hintText: 'Введите перевод названия*',
                  hintStyle: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Calibri',
                    color: Colors.grey,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 1.5,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onChanged: (String? value) {},
              ),
              const SizedBox(height: 16),
              TextField(
                controller: watchRuleState.getRuleDescription,
                autofocus: false,
                autocorrect: false,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                maxLines: 10,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 18,
                  color: Colors.teal,
                ),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  hintText: 'Введите описание правила*',
                  hintStyle: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Calibri',
                    color: Colors.grey,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 1.5,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onChanged: (String? value) {},
              ),
              const SizedBox(height: 16),
              TextField(
                controller: watchRuleState.getRuleExample,
                autofocus: false,
                autocorrect: false,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                maxLines: 5,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 18,
                  color: Colors.teal,
                ),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  hintText: 'Введите пример правила',
                  hintStyle: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Calibri',
                    color: Colors.grey,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 1.5,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onChanged: (String? value) {},
              ),
              const SizedBox(height: 16),
              TextField(
                controller: watchRuleState.getAdditionalComment,
                autofocus: false,
                autocorrect: false,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                maxLines: 3,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 18,
                  color: Colors.teal,
                ),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  hintText: 'Введите дополнительный комментарий',
                  hintStyle: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Calibri',
                    color: Colors.grey,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 1.5,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onChanged: (String? value) {},
              ),
              const SizedBox(height: 16),
              MaterialButton(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  'Добавить',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  readRuleState.addRule();
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
