import 'package:flutter/material.dart';
import 'package:isslami/my_theme_data.dart';
import 'package:isslami/provider/my_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              pro.changeTheme(ThemeMode.light);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Light",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: primaryColor),
                ),
                Icon(
                  Icons.done,
                  size: 30,
                  color: primaryColor,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          InkWell(
            onTap: () {

              pro.changeTheme(ThemeMode.dark);

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dark"),
                Icon(Icons.done),
              ],
            ),
          )
        ],
      ),
    );
  }
}
