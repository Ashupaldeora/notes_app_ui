import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';
import 'all_view.dart';
import 'folder_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              actions: [
                TextButton(
                  child: Text(
                    'Edit',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: AppColors.lightTextColor),
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.search),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.ellipsis_circle),
                )
              ],
              leadingWidth: 0,
              leading: const SizedBox.shrink(),
              title: const Text('Notes'),
              bottom: const TabBar(
                tabs: [
                  Tab(
                    text: 'All',
                  ),
                  Tab(
                    text: 'Folder',
                  ),
                ],
              )),
          body: TabBarView(
            children: [AllView(), FolderView()],
          ),
        ));
  }
}
