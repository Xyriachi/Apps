import 'package:flutter/material.dart';
import 'package:how_to_dywan/categories/cat_data/basic_list.dart';
import 'package:how_to_dywan/categories/cat_data/advanced_list.dart';
import 'package:how_to_dywan/categories/cat_data/tactics_list.dart';
import 'package:how_to_dywan/categories/cat_data/video_list.dart';
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
                        : VideoList().getVideoList();
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal:
                MediaQuery.of(context).orientation == Orientation.landscape
                    ? 4
                    : 0,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: ListView.builder(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).orientation ==
                            Orientation.landscape
                        ? 10
                        : 6,
                    bottom: 6),
                shrinkWrap: true,
                itemCount: subCategoryList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(6),
                    child: GestureDetector(
                      onTap: () {
                        context.read<SelectedScreenCubit>().selectSecond(
                            subCategoryList[index]['title'] as String);
                      },
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 16),
                        minLeadingWidth: 32,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        leading: Container(
                          height: 52,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(color: Colors.black87, width: 2)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset(
                                'assets/images/sub_categories/${subCategoryList[index]['img']}'),
                          ),
                        ),
                        title: Text(subCategoryList[index]['title'] as String),
                        subtitle:
                            Text(subCategoryList[index]['subtitle'] as String),
                        tileColor: Theme.of(context).cardTheme.color,
                      ),
                    ),
                  );
                }),
          ),
        );
      },
    );
  }
}
