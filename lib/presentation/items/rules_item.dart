import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:lang_rules/data/database/model/rules_model_item.dart';
import 'package:lang_rules/presentation/widgets/card_foot_note.dart';
import 'package:lang_rules/presentation/widgets/item_menu.dart';

class RulesItem extends StatelessWidget {
  const RulesItem({Key? key, required this.item}) : super(key: key);

  final RulesModelItem item;

  @override
  Widget build(BuildContext context) {
    bool isComment = item.additionalComment.length != 0;
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
              const Text(
                'Правило',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              Html(
                data: '${item.rule}<a href="${item.ruleTranslation}">[*]</a>',
                style: {
                  '#': Style(
                    color: Colors.teal.shade700,
                    fontSize: const FontSize(30),
                    fontFamily: 'Hafs',
                    textAlign: TextAlign.center,
                    direction: TextDirection.rtl,
                  ),
                  'a': Style(
                    color: Colors.indigo,
                    fontSize: const FontSize(14),
                  ),
                },
                onLinkTap: (String? url, RenderContext rendContext,
                    Map<String, String> attributes, element) {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (_) => CardFootNote(footNoteContent: url!),
                  );
                },
              ),
              const Text(
                'Перевод правила',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                item.ruleTranslation,
                style: const TextStyle(
                  color: Colors.teal,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Описание правила',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              Html(
                data:
                    '${item.ruleDescription}<a href="${item.ruleDescriptionTranslation}">[*]</a>',
                style: {
                  '#': Style(
                    fontSize: const FontSize(18),
                    fontFamily: 'Hafs',
                    color: Colors.red,
                    direction: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  ),
                  'a': Style(
                    color: Colors.indigo,
                    fontSize: const FontSize(14),
                  ),
                },
                onLinkTap: (String? url, RenderContext rendContext,
                    Map<String, String> attributes, element) {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (_) => CardFootNote(footNoteContent: url!),
                  );
                },
              ),
              const Text(
                'Перевод описания правила',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                item.ruleDescriptionTranslation,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Пример',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              Html(
                data: item.example,
                style: {
                  '#': Style(
                    fontSize: const FontSize(18),
                    color: Colors.black87,
                    textAlign: TextAlign.center,
                  ),
                },
              ),
              isComment ? const Text(
                'Дополнительный комментарий',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ) : const SizedBox(),
              isComment ? Text(
                item.additionalComment,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ) : const SizedBox(),
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
