import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/all_expneses_item.dart';

class AllExpensesItemsListView extends StatelessWidget {
  const AllExpensesItemsListView({super.key});

  static const items = [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'Sept 2024',
      price: r'$20.129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'Sept 2024',
      price: r'$20.129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'Sept 2024',
      price: r'$20.129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
            child: AllExpensesItem(itemModel: item),
          ),
        );
      }).toList(),
    );
  }
}