import 'package:flutter/material.dart';

List<String> list = [
  'Contact Us',
  'FAQ',
  'Terms of Service',
  'Privacy Policy',
  'Advertising'
];

help(context, dim) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
      isScrollControlled: false,
      isDismissible: true,
      enableDrag: false,
      context: context,
      builder: (_) => StatefulBuilder(
          builder: (context, state) => ListView.separated(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      list[index],
                      textAlign: TextAlign.center,
                    ),
                  );
                },
                separatorBuilder: (context, index) => Divider(),
              )));
}
