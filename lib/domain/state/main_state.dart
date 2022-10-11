import 'package:flutter/material.dart';
import 'package:lang_rules/data/database/service/database_query.dart';

class MainState extends ChangeNotifier {
  final _databaseQuery = DatabaseQuery();

  DatabaseQuery get getDatabaseQuery => _databaseQuery;

  createRule(
    String rule,
    String ruleDescription,
    String ruleTranslation,
    String example,
    String additionalComment,
  ) {
    _databaseQuery.createRule(
      rule,
      ruleDescription,
      ruleTranslation,
      example,
      additionalComment,
    );
    notifyListeners();
  }

  updateRule(
    int ruleId,
    String rule,
    String ruleDescription,
    String ruleTranslation,
    String example,
    String additionalComment,
  ) {
    _databaseQuery.updateRule(
      ruleId,
      rule,
      ruleDescription,
      ruleTranslation,
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
