import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel});
  final AllExpensesItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: const Color(0xffF1F1F1),
        ),
      ),
      child: Column(
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
          ),
        ],
      ),
    );
  }
}
