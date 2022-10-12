import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lang_rules/data/database/model/rules_model_item.dart';
import 'package:lang_rules/domain/state/main_state.dart';
import 'package:lang_rules/domain/state/update_rule_state.dart';
import 'package:provider/provider.dart';

class ChangeRuleContainer extends StatefulWidget {
  const ChangeRuleContainer({Key? key, required this.item}) : super(key: key);

  final RulesModelItem item;

  @override
  State<ChangeRuleContainer> createState() => _ChangeRuleContainerState();
}

class _ChangeRuleContainerState extends State<ChangeRuleContainer> {
  @override
  Widget build(BuildContext context) {
    final readRuleState = context.read<UpdateRuleState>();
    readRuleState.getValues(widget.item);
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
              textDirection: TextDirection.rtl,
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
                hintText: 'Новое название правила*',
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
                hintText: 'Новый перевод названия*',
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
              controller: readRuleState.getRuleDescriptionController,
              autofocus: false,
              autocorrect: false,
              keyboardType: TextInputType.multiline,
              textDirection: TextDirection.rtl,
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
                hintText: 'Новое описание правила*',
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
              controller: readRuleState.getRuleDescriptionTranslationController,
              autofocus: false,
              autocorrect: false,
              keyboardType: TextInputType.multiline,
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
                hintText: 'Новый перевод описания правила*',
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
            ),
            const SizedBox(height: 16),
            TextField(
              controller: readRuleState.getRuleExampleController,
              autofocus: false,
              autocorrect: false,
              keyboardType: TextInputType.multiline,
              textDirection: TextDirection.rtl,
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
                hintText: 'Новый пример правила',
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
              controller: readRuleState.getAdditionalCommentController,
              textCapitalization: TextCapitalization.sentences,
              autofocus: false,
              autocorrect: false,
              keyboardType: TextInputType.multiline,
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
                hintText: 'Новый комментарий',
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
                'Изменить',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                context.read<MainState>().updateRule(
                      widget.item.id,
                      readRuleState.getRuleController.text,
                      readRuleState.getRuleTranslationController.text,
                      readRuleState.getRuleDescriptionController.text,
                      readRuleState.getRuleDescriptionTranslationController.text,
                      readRuleState.getRuleExampleController.text,
                      readRuleState.getAdditionalCommentController.text,
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
