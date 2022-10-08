class RulesModelItem {
  final int id;
  final String rule;
  final String ruleTranslation;
  final String ruleDescription;
  final String example;
  final String additionalComment;

  RulesModelItem({
    required this.id,
    required this.rule,
    required this.ruleTranslation,
    required this.ruleDescription,
    required this.example,
    required this.additionalComment,
  });

  RulesModelItem.fromMap(dynamic object)
      : id = object['id'],
        rule = object['rule'],
        ruleTranslation = object['rule_translation'],
        ruleDescription = object['rule_description'],
        example = object['example'],
        additionalComment = object['additional_comment'];
}
