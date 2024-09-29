import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = [
    const DrawerItemModel(
      image: Assets.imagesDashboard,
      title: 'Dashboard',
    ),
    const DrawerItemModel(
      image: Assets.imagesMyTransactions,
      title: 'My Transaction',
    ),
    const DrawerItemModel(
      image: Assets.imagesStatistcs,
      title: 'Statistics',
    ),
    const DrawerItemModel(
      image: Assets.imagesWallet,
      title: 'Wallet Account',
    ),
    const DrawerItemModel(
      image: Assets.imagesInvetments,
      title: 'My Investments',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
