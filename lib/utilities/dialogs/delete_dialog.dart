import 'package:flutter/material.dart';
import 'package:justnotes/utilities/dialogs/generic_dialog.dart';

Future<bool> showDeleteDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    title: 'Delete',
    content: 'Are you sure you want to delete this item?',
    optionBuilder: () => {
      'Cancel': false,
      'Yes, Delete': true,
    },
  ).then(
    (value) => value ?? false,
  );
}
