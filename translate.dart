import 'dart:convert';
import 'dart:io';
import 'package:translator/translator.dart';

void main() async {
  File willTranslateFile = File('will_translate.json');
  Map<String, File> translatedFiles = {
    'tr': File('locales/tr_TR.json'),
    'en': File('locales/en_US.json'),
    'ar': File('locales/ar_AE.json'),
    'nl': File('locales/nl_NL.json'),
    'ru': File('locales/ru_RU.json'),
  };
  final willTranslateString = await willTranslateFile.readAsString();
  final Map<String, dynamic> willTranslateJson = jsonDecode(willTranslateString);
  for (var lang in translatedFiles.keys) {
    final translatedJson = await translate(lang, willTranslateJson);
    translatedFiles[lang].writeAsString(translatedJson);
  }
  processPrint("Complated");
}

Future<String> translate(String lang, Map<String, dynamic> willTranslateJson) async {
  final translator = GoogleTranslator();
  Map<String, dynamic> newJson = {};
  int count = 1;
  processPrint(lang);
  for (var element in willTranslateJson.entries) {
    try {
      var translation = await translator.translate(element.value, from: 'tr', to: lang);
      newJson.addAll({element.key: translation.text});
      print('$count : $translation');
    } catch (e) {
      print(e.toString());
    }
    count++;
  }
  return jsonEncode(newJson);
}

void processPrint(String str) {
  print("******* ${str.toUpperCase()} *******");
}
