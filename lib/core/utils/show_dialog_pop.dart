import 'package:flutter/material.dart';

import '../constants/text_constants.dart';

Future<void> showDialogPop(BuildContext context, Function function) {
  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text(ALERT_MESSAGE),
      content: const Text(
        DELETE_CONFIRMATION_TEXT,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, CANCEL_TEXT),
          child: const Text(CANCEL_TEXT),
        ),
        TextButton(
          onPressed: () {
            function();
            Navigator.pop(context);
          },
          child: const Text(OK_TEXT),
        ),
      ],
    ),
  );
}
