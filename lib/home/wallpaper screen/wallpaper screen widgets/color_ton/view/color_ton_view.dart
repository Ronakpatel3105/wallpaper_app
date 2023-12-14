import 'package:flutter/material.dart';

import '../../../../home.dart';

class ColorTonView extends StatefulWidget {
  const ColorTonView({super.key});

  @override
  State<ColorTonView> createState() => _ColorTonViewState();
}

class _ColorTonViewState extends State<ColorTonView> {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ListColors.listColor.length,
        itemBuilder: (context, index) {
          return InkWell(
            hoverColor: AppColors.TRANSPARANT,
            highlightColor: AppColors.TRANSPARANT,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WallpaperListView(
                    mQuery: searchController.text.isNotEmpty
                        ? searchController.text.toString()
                        : "car",
                    mColor: ListColors.listColor[index]['code'],
                  ),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: ListColors.listColor[index]['color'] as Color,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          );
        },
      ),
    );
  }
}
