## What is this package?

This is a package for working around a problem when composing text in language that use auto-completion like Japanese or Chinese and setting `TextEditingController.text` to something that has less text length than the current text. What this package does is that if the text is composing, it reset the composing before setting the new text.

https://github.com/flutter/flutter/issues/27125

## How to use?

Just put it in `pubspec.yaml` like other package and import

```
import 'package:another_text_editing_controller/another_text_editing_controller.dart';
```

then replace any `TextEditingController` with `AnotherTextEditingController`.

or you can just copy and paste the content of the `another_text_editing_controller.dart` and use it as your own class.