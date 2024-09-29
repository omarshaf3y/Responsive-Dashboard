import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(14),
          decoration: const BoxDecoration(
            color: Color(0xffFAFAFA),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(image),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.5708 * 2,
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xff064061),
          ),
        ),
      ],
    );
  }
}
