import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/views/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice_header.dart';
import 'package:responsive_dashboard/views/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        QuickInvoiceHeader(),
        SizedBox(height: 12),
        LatestTransaction(),
        Divider(
          height: 48,
        ),
        TitleTextField(
          title: 'Customer Name',
          hint: 'Type Customer Name',
        ),
      ],
    ));
  }
}
