import 'package:flutter/material.dart';

class AddRuleState extends ChangeNotifier {

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
