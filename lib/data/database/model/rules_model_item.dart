class RulesModelItem {
  final int id;
  final String rule;
  final String ruleDescription;
  final String ruleTranslation;
  final String example;
  final String additionalComment;

  RulesModelItem({
    required this.id,
    required this.rule,
    required this.ruleDescription,
    required this.ruleTranslation,
    required this.example,
    required this.additionalComment,
  });

  RulesModelItem.fromMap(dynamic object)
      : id = object['id'],
        rule = object['rule'],
        ruleDescription = object['rule_description'],
        ruleTranslation = object['rule_translation'],
        example = object['example'],
        additionalComment = object['additional_comment'];
}
