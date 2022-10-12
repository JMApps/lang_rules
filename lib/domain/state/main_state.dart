import 'package:flutter/material.dart';
import 'package:lang_rules/data/database/service/database_query.dart';

class MainState extends ChangeNotifier {
  final _databaseQuery = DatabaseQuery();

  DatabaseQuery get getDatabaseQuery => _databaseQuery;

  createRule(
    String rule,
    String ruleTranslation,
    String ruleDescription,
    String ruleDescriptionTranslation,
    String example,
    String additionalComment,
  ) {
    _databaseQuery.createRule(
      rule,
      ruleTranslation,
      ruleDescription,
      ruleDescriptionTranslation,
      example,
      additionalComment,
    );
    notifyListeners();
  }

  updateRule(
    int ruleId,
    String rule,
    String ruleTranslation,
    String ruleDescription,
    String ruleDescriptionTranslation,
    String example,
    String additionalComment,
  ) {
    _databaseQuery.updateRule(
      ruleId,
      rule,
      ruleTranslation,
      ruleDescription,
      ruleDescriptionTranslation,
      example,
      additionalComment,
    );
    notifyListeners();
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
