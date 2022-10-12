import 'package:flutter/material.dart';
import 'package:lang_rules/data/database/model/rules_model_item.dart';

class UpdateRuleState extends ChangeNotifier {
  final _ruleController = TextEditingController();

  TextEditingController get getRuleController => _ruleController;

  final _ruleTranslationController = TextEditingController();

  TextEditingController get getRuleTranslationController => _ruleTranslationController;

  final _ruleDescriptionController = TextEditingController();

  TextEditingController get getRuleDescriptionController => _ruleDescriptionController;

  final _ruleDescriptionTranslationController = TextEditingController();

  TextEditingController get getRuleDescriptionTranslationController => _ruleDescriptionTranslationController;

  final _ruleExampleController = TextEditingController();

  TextEditingController get getRuleExampleController => _ruleExampleController;

  final _additionalCommentController = TextEditingController();

  TextEditingController get getAdditionalCommentController => _additionalCommentController;

  getValues(RulesModelItem item) {
    _ruleController.text = item.rule;
    _ruleTranslationController.text = item.ruleTranslation;
    _ruleDescriptionController.text = item.ruleDescription;
    _ruleDescriptionTranslationController.text = item.ruleDescriptionTranslation;
    _ruleExampleController.text = item.example;
    _additionalCommentController.text = item.additionalComment;
    notifyListeners();
  }

  @override
  void dispose() {
    _ruleController.dispose();
    _ruleTranslationController.dispose();
    _ruleDescriptionController.dispose();
    _ruleDescriptionTranslationController.dispose();
    _ruleExampleController.dispose();
    _additionalCommentController.dispose();
    super.dispose();
  }
}
