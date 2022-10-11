import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:lang_rules/data/database/model/rules_model_item.dart';
import 'package:lang_rules/presentation/widgets/item_menu.dart';

class RulesItem extends StatelessWidget {
  const RulesItem({Key? key, required this.item}) : super(key: key);

  final RulesModelItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(25),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  'Название на арабском',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  item.rule,
                  style: TextStyle(
                    color: Colors.teal.shade700,
                    fontSize: 22,
                    fontFamily: 'Hafs',
                  ),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  'Описание правила',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  item.ruleDescription,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.red,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  'Перевод правила',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  item.ruleTranslation,
                  style: const TextStyle(
                    color: Colors.teal,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  'Пример',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                subtitle: Html(
                  data: item.example,
                  style: {
                    '#': Style(
                      fontSize: const FontSize(18),
                      color: Colors.black87,
                      textAlign: TextAlign.center,
                    ),
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  'Дополнительный комментарий',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  item.additionalComment,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          showModalBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            builder: (BuildContext context) {
              return ItemMenu(item: item);
            },
          );
        },
      ),
    );
  }
}
