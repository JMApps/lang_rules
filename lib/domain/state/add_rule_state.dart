import 'package:flutter/material.dart';

class AddRuleState extends ChangeNotifier {
  final _ruleController = TextEditingController();

  TextEditingController get getRuleController => _ruleController;

  final _ruleDescription = TextEditingController();

  TextEditingController get getRuleDescription => _ruleDescription;

  final _ruleTranslationController = TextEditingController();

  TextEditingController get getRuleTranslationController => _ruleTranslationController;

  final _ruleExample = TextEditingController();

  TextEditingController get getRuleExample => _ruleExample;

  final _additionalComment = TextEditingController();

  TextEditingController get getAdditionalComment => _additionalComment;

  @override
  void dispose() {
    _ruleController.dispose();
    _ruleDescription.dispose();
    _ruleTranslationController.dispose();
    _ruleExample.dispose();
    _additionalComment.dispose();
    super.dispose();
  }
}
