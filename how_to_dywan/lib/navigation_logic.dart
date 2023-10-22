import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_to_dywan/state/bottom_nav_cubit.dart';

class NavigationLogic extends StatelessWidget {
  const NavigationLogic({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(
      builder: (context, state) {
        return Column(
          children: [
            Text('$state'),
            Text('$state' == '0'
                ? 'Basic'
                : '$state' == '1'
                    ? 'Advanced'
                    : '$state' == '2'
                        ? 'Tactics'
                        : 'Addons')
          ],
        );
      },
    );
  }
}
