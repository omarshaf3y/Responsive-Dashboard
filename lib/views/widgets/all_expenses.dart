import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/views/widgets/all_expneses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          AllExpensesItem(
            itemModel: AllExpensesItemModel(
              image: Assets.imagesIncome,
              title: 'Income',
              date: 'Sept 2024',
              price: r'$20,129',
            ),
          ),
        ],
      ),
    );
  }
}
