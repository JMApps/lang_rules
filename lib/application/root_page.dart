import 'package:flutter/material.dart';
import 'package:lang_rules/domain/route/app_route.dart';
import 'package:lang_rules/domain/state/rule_add_change_text_fields_state.dart';
import 'package:lang_rules/presentation/pages/main_page.dart';
import 'package:provider/provider.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RuleAddChangeTextFieldsState>(
          create: (_) => RuleAddChangeTextFieldsState(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Правила языка',
        onGenerateRoute: AppRoute.onGeneratorRoute,
        theme: ThemeData(
          fontFamily: 'Calibri',
          primarySwatch: Colors.teal,
        ),
        home: const MainPage(),
      ),
    );
  }
}
