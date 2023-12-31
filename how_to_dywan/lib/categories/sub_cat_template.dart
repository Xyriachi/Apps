import 'package:flutter/material.dart';
import 'package:how_to_dywan/categories/cat_data/basic_list.dart';
import 'package:how_to_dywan/categories/cat_data/advanced_list.dart';
import 'package:how_to_dywan/categories/cat_data/tactics_list.dart';
import 'package:how_to_dywan/categories/cat_data/addons_list.dart';
import 'package:how_to_dywan/state/selected_screen_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubCategoriesTemplate extends StatelessWidget {
  const SubCategoriesTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedScreenCubit, SelectedScreenState>(
      builder: (context, state) {
        List<Map<String, String>> subCategoryList =
            state.selectedScreen.first == 'basic'
                ? BasicList().getBasicList()
                : state.selectedScreen.first == 'advanced'
                    ? AdvancedList().getAdvancedList()
                    : state.selectedScreen.first == 'tactics'
                        ? TacticsList().getTacticsList()
                        : AddonsList().getAddonsList();
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: subCategoryList.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: GestureDetector(
                    onTap: () {
                      context.read<SelectedScreenCubit>().selectSecond(
                          subCategoryList[index]['title'] as String);
                    },
                    child: ListTile(
                      minLeadingWidth: 32,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      // TODO different icons for different subcategories
                      leading: const SizedBox(
                          height: double.infinity,
                          child: Icon(Icons.anchor_sharp)),
                      title: Text(subCategoryList[index]['title'] as String),
                      // TODO subtitles
                      subtitle:
                          Text(subCategoryList[index]['subtitle'] as String),
                      tileColor: Theme.of(context).cardTheme.color,
                    ),
                  ),
                );
              }),
        );
      },
    );
  }
}
