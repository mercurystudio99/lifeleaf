import 'package:fitness/common/colo_extension.dart';
import 'package:flutter/material.dart';

import '../../common/common.dart';
import '../../common/globals.dart' as global;

class MealFoodScheduleRow extends StatelessWidget {
  final Map mObj;
  final int index;
  final String category;
  final VoidCallback callback;
  const MealFoodScheduleRow(
      {super.key,
      required this.mObj,
      required this.index,
      required this.category,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> list = getIndexArr(category);
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                    color: index % 2 == 0
                        ? TColor.primaryColor2.withOpacity(0.4)
                        : TColor.secondaryColor2.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10)),
                alignment: Alignment.center,
                child: Image.asset(
                  mObj["image"].toString(),
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mObj["name"].toString(),
                    style: TextStyle(
                        color: TColor.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    mObj["time"].toString(),
                    style: TextStyle(
                      color: TColor.gray,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                list.removeAt(index);
                setIndexArr(category, list);
                callback();
              },
              icon: Icon(Icons.remove_circle_outline, color: TColor.gray),
            )
          ],
        ));
  }
}
