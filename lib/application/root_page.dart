import 'package:flutter/material.dart';
import 'package:lang_rules/domain/route/app_route.dart';
import 'package:lang_rules/domain/state/main_state.dart';
import 'package:lang_rules/presentation/pages/main_page.dart';
import 'package:provider/provider.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MainState>(
          create: (_) => MainState(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Правила языка',
        onGenerateRoute: AppRoute.onGeneratorRoute,
        theme: ThemeData(
          fontFamily: 'Calibri',
          primarySwatch: Colors.indigo,
        ),
        home: const MainPage(),
      ),
    );
  }
}
