import 'package:flutter/material.dart';
import 'package:isslami/home/bottom_sheets/theme_bottom_sheet.dart';
import 'package:isslami/my_theme_data.dart';

import '../bottom_sheets/language_bottom_sheet.dart';

class SettingTub extends StatelessWidget {
  const SettingTub({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 120,
          ),
          Text("Theme"),
          SizedBox(
            height: 12,
          ),
          InkWell(onTap: () {

            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return ThemeBottomSheet(
                );
              },
            );
          },
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: primaryColor)),
              child: Text("Light"),
            ),
          ),
          SizedBox(
            height: 44,
          ),
          Text("Language"),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {

              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return LanguageBottomSheet(
                  );
                },
              );
            },
            child: Container(

              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: primaryColor)),
              child: Text("Arbic"),
            ),
          )
        ],
      ),
    );
  }
}
