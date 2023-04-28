# Json-Auto-Multiple-Translator-Dart

Json dosyasindaki girilen verileri çoklu olarak farklı dillere çevirmeye yarayan script.

## Json Örneği

İsterseniz tek json objesi içerisinde

```json
{
  "send_sms_with_whatsapp_dialog_hint": "Mesaj...",
  "send_sms_with_whatsapp_dialog_title": "Göndereceğiniz Mesaj",
  "send_sms_with_whatsapp_dialog_button_title": "Gönder"
}
```

İsterseniz farklı objeler içerisinde kullanabilirsiniz

```json
{
  "send_sms": {
    "with_whatsapp_dialog_hint": "Mesaj...",
    "with_whatsapp_dialog_title": "Göndereceğiniz Mesaj",
    "with_whatsapp_dialog_button_title": "Gönder"
  }
}
```

## Run

Kullanmak için aşağıdaki kodu çalıştırmanız yeterli

```dart
dart run translate.dart
```

## Projeyi oluşturanlar

- [@smhoz](https://www.github.com/smhoz)
- [@ketvolkan](https://www.github.com/ketvolkan)
