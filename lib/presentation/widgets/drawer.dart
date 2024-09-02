import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/routes.dart';
import '../../core/constants/text_constants.dart';
import '../cubits/current_user/current_user_cubit.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {}

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 260,
      backgroundColor: Theme.of(context).colorScheme.background,
      child: ListView(
        children: [
          DrawerHeader(
            child: Center(
              child: Icon(
                Icons.warehouse,
                color: Theme.of(context).colorScheme.primary,
                size: 40,
              ),
            ),
          ),
          BlocBuilder<CurrentUserCubit, CurrentUserState>(
            builder: (context, state) {
              return NavMenuItem(
                  title: HOME,
                  icon: const Icon(Icons.home),
                  screenRoute: () {
                    context.goNamed(MAIN_SCREEN);
                  });
            },
          ),
        ],
      ),
    );
  }
}

class NavMenuItem extends StatelessWidget {
  String title;
  Widget icon;
  VoidCallback screenRoute;

  NavMenuItem({
    super.key,
    required this.title,
    required this.icon,
    required this.screenRoute,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, bottom: 10),
      child: ListTile(
        title: Text(title),
        leading: icon,
        onTap: screenRoute,
      ),
    );
  }
}
