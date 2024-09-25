import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const List<DrawerItemModel> items = [
    DrawerItemModel(
      image: Assets.imagesDashboard,
      title: 'Dashboard',
    ),
    DrawerItemModel(
      image: Assets.imagesMyTransactions,
      title: 'My Transaction',
    ),
    DrawerItemModel(
      image: Assets.imagesStatistcs,
      title: 'Statistics',
    ),
    DrawerItemModel(
      image: Assets.imagesWallet,
      title: 'Wallet Account',
    ),
    DrawerItemModel(
      image: Assets.imagesInvetments,
      title: 'My Investments',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const UserInfoListTile(
            image: Assets.imagesAvatar3svg,
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
          ),
          const SizedBox(height: 8),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: DrawerItem(drawerItemModel: items[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
