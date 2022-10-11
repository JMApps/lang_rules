import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lang_rules/domain/state/add_rule_state.dart';
import 'package:lang_rules/domain/state/main_state.dart';
import 'package:provider/provider.dart';

class AddRuleContainer extends StatefulWidget {
  const AddRuleContainer({Key? key}) : super(key: key);

  @override
  State<AddRuleContainer> createState() => _AddRuleContainerState();
}

class _AddRuleContainerState extends State<AddRuleContainer> {
  @override
  Widget build(BuildContext context) {
    final readRuleState = context.watch<AddRuleState>();
    return CupertinoScrollbar(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: readRuleState.getRuleController,
              autofocus: true,
              autocorrect: false,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Hafs',
                fontSize: 25,
                color: Colors.teal,
              ),
              decoration: InputDecoration(
                alignLabelWithHint: true,
                floatingLabelAlignment: FloatingLabelAlignment.center,
                hintText: 'Введите название правила*',
                hintStyle: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Calibri',
                  color: Colors.grey,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.indigoAccent,
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
              controller: readRuleState.getRuleDescription,
              autofocus: false,
              autocorrect: false,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              maxLines: 7,
              minLines: 5,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Calibri',
                fontSize: 16,
                color: Colors.red,
              ),
              decoration: InputDecoration(
                alignLabelWithHint: true,
                floatingLabelAlignment: FloatingLabelAlignment.center,
                hintText: 'Введите описание правила*',
                hintStyle: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Calibri',
                  color: Colors.grey,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.indigoAccent,
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
              controller: readRuleState.getRuleTranslationController,
              textCapitalization: TextCapitalization.sentences,
              autofocus: false,
              autocorrect: false,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Calibri',
                fontSize: 16,
                color: Colors.teal,
              ),
              decoration: InputDecoration(
                alignLabelWithHint: true,
                floatingLabelAlignment: FloatingLabelAlignment.center,
                hintText: 'Введите перевод названия*',
                hintStyle: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Calibri',
                  color: Colors.grey,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.indigoAccent,
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
              controller: readRuleState.getRuleExample,
              autofocus: false,
              autocorrect: false,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              maxLines: 7,
              minLines: 5,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Calibri',
                fontSize: 16,
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                alignLabelWithHint: true,
                floatingLabelAlignment: FloatingLabelAlignment.center,
                hintText: 'Введите пример правила',
                hintStyle: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Calibri',
                  color: Colors.grey,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.indigoAccent,
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
              controller: readRuleState.getAdditionalComment,
              textCapitalization: TextCapitalization.sentences,
              autofocus: false,
              autocorrect: false,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              maxLines: 5,
              minLines: 3,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Calibri',
                fontSize: 16,
                color: Colors.black54,
              ),
              decoration: InputDecoration(
                alignLabelWithHint: true,
                floatingLabelAlignment: FloatingLabelAlignment.center,
                hintText: 'Введите дополнительный комментарий',
                hintStyle: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Calibri',
                  color: Colors.grey,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.indigoAccent,
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
              color: Colors.indigo,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                'Добавить',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                context.read<MainState>().createRule(
                      readRuleState.getRuleController.text,
                      readRuleState.getRuleDescription.text,
                      readRuleState.getRuleTranslationController.text,
                      readRuleState.getRuleExample.text,
                      readRuleState.getAdditionalComment.text,
                    );
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
