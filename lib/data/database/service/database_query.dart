import 'package:lang_rules/data/database/model/rules_model_item.dart';
import 'package:lang_rules/data/database/service/database_service.dart';
import 'package:sqflite/sqflite.dart' as sql;

class DatabaseQuery {
  DatabaseService databaseService = DatabaseService();

  Future<List<RulesModelItem>> getAllRules() async {
    var dbClient = await databaseService.db;
    var res = await dbClient.query('Table_of_rules');
    List<RulesModelItem>? allRiles = res.isNotEmpty ? res.map((c) => RulesModelItem.fromMap(c)).toList() : [];
    return allRiles;
  }

  Future<int> createRule(String rule, String ruleTranslation, String ruleDescription, String example, String additionalComment) async {
    var dbClient = await databaseService.db;
    final ruleData = {'rule': rule, 'rule_translation': ruleTranslation, 'rule_description': ruleDescription, 'example': example, 'additional_comment': additionalComment};
    return await dbClient.insert('Table_of_rules', ruleData, conflictAlgorithm: sql.ConflictAlgorithm.replace);
  }

  Future<int> updateRule(int ruleId, String rule, String ruleTranslation, String ruleDescription, String example, String additionalComment) async {
    var dbClient = await databaseService.db;
    final ruleNewData = {'rule': rule, 'rule_translation': ruleTranslation, 'rule_description': ruleDescription, 'example': example, 'additional_comment': additionalComment};
    return await dbClient.update('Table_of_rules', ruleNewData, conflictAlgorithm: sql.ConflictAlgorithm.replace, where: 'id == $ruleId');
  }

  Future<int> deleteRule(int ruleId) async {
    var dbClient = await databaseService.db;
    var res = await dbClient.delete('Table_of_rules', where: 'id == $ruleId');
    return res;
  }
}