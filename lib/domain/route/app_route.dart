import 'package:flutter/material.dart';
import 'package:lang_rules/data/database/model/rules_content_arguments.dart';
import 'package:lang_rules/presentation/pages/add_rule_page.dart';
import 'package:lang_rules/presentation/pages/change_rule_page.dart';

class AppRoute {
  static Route onGeneratorRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case 'add_rule_page':
        return MaterialPageRoute(
          builder: (_) => const AddRulePage(),
          settings: routeSettings,
        );
      case 'change_rule_page':
        final RulesContentArguments rulesContentArguments = routeSettings.arguments as RulesContentArguments;
        return MaterialPageRoute(
          builder: (_) => ChangeRulePage(item: rulesContentArguments.item,),
          settings: routeSettings,
        );
      default:
        throw Exception('Invalid route $routeSettings');
    }
  }
}
