import 'package:flutter/material.dart';
import 'package:how_to_dywan/categories/cat_data/basic_list.dart';
import 'package:how_to_dywan/categories/cat_data/advanced_list.dart';
import 'package:how_to_dywan/categories/cat_data/tactics_list.dart';
import 'package:how_to_dywan/categories/cat_data/addons_list.dart';
import 'package:how_to_dywan/state/bottom_nav_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubCategoriesTemplate extends StatelessWidget {
  const SubCategoriesTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(
      builder: (context, state) {
        List subCategoryList = state == 0
            ? BasicList().getBasicList()
            : state == 1
                ? AdvancedList().getAdvancedList()
                : state == 2
                    ? TacticsList().getTacticsList()
                    : AddonsList().getAddonsList();
        return ListView.builder(
            itemCount: subCategoryList.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Card(
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(subCategoryList[index]),
                  ));
            });
      },
    );
  }
}
