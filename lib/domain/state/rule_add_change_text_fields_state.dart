import 'package:flutter/cupertino.dart';
import 'package:lang_rules/data/database/model/rules_model_item.dart';
import 'package:lang_rules/data/database/service/database_query.dart';

class RuleAddChangeTextFieldsState extends ChangeNotifier {
  final _databaseQuery = DatabaseQuery();

  DatabaseQuery get getDatabaseQuery => _databaseQuery;

  final _ruleController = TextEditingController();

  TextEditingController get getRuleController => _ruleController;

  final _ruleTranslationController = TextEditingController();

  TextEditingController get getRuleTranslationController =>
      _ruleTranslationController;

  final _ruleDescription = TextEditingController();

  TextEditingController get getRuleDescription => _ruleDescription;

  final _ruleExample = TextEditingController();

  TextEditingController get getRuleExample => _ruleExample;

  final _additionalComment = TextEditingController();

  TextEditingController get getAdditionalComment => _additionalComment;

  addRule() {
    _databaseQuery.createRule(
      _ruleController.text,
      _ruleTranslationController.text,
      _ruleDescription.text,
      _ruleExample.text,
      _additionalComment.text,
    );
    clearControllers();
    notifyListeners();
  }

  getValues(RulesModelItem item) {
    _ruleController.text = item.rule;
    _ruleTranslationController.text = item.ruleTranslation;
    _ruleDescription.text = item.ruleDescription;
    _ruleExample.text = item.example;
    _additionalComment.text = item.additionalComment;
    notifyListeners();
  }

  changeRule(int ruleId) {
    _databaseQuery.updateRule(
      ruleId,
      _ruleController.text,
      _ruleTranslationController.text,
      _ruleDescription.text,
      _ruleExample.text,
      _additionalComment.text,
    );
    clearControllers();
    notifyListeners();
  }

  clearControllers() {
    _ruleController.clear();
    _ruleTranslationController.clear();
    _ruleDescription.clear();
    _ruleExample.clear();
    _additionalComment.clear();
  }

  deleteRule(int ruleId) {
    _databaseQuery.deleteRule(ruleId);
    notifyListeners();
  }

  @override
  void dispose() {
    _databaseQuery.databaseService.closeDB();
    super.dispose();
  }
}
