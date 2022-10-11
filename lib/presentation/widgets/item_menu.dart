import 'package:flutter/material.dart';
import 'package:lang_rules/data/database/model/rules_content_arguments.dart';
import 'package:lang_rules/data/database/model/rules_model_item.dart';
import 'package:lang_rules/domain/state/main_state.dart';
import 'package:provider/provider.dart';

class ItemMenu extends StatelessWidget {
  const ItemMenu({
    Key? key,
    required this.item,
  }) : super(key: key);

  final RulesModelItem item;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Card(
          elevation: 2,
          margin: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                MaterialButton(
                  color: Colors.teal.shade300,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Изменить',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed(
                      'change_rule_page',
                      arguments: RulesContentArguments(item),
                    );
                  },
                ),
                MaterialButton(
                  color: Colors.red.shade300,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Удалить',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (BuildContext context) {
                        return Wrap(
                          children: [
                            Card(
                              elevation: 2,
                              margin: const EdgeInsets.all(16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'Подтвердите удаление',
                                        style: TextStyle(fontSize: 16),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    MaterialButton(
                                      color: Colors.red.shade300,
                                      textColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: const SizedBox(
                                        width: double.infinity,
                                        child: Text(
                                          'Удалить',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                        context.read<MainState>().deleteRule(item.id);
                                      },
                                    ),
                                    MaterialButton(
                                      color: Colors.teal.shade300,
                                      textColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: const SizedBox(
                                        width: double.infinity,
                                        child: Text(
                                          'Отмена',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
