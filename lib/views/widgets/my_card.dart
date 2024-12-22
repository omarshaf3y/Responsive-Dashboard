import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(image: AssetImage(Assets.imagesCardBkg)),
          color: const Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Name Card',
                style: AppStyles.styleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: const Text(
                'Omar Soliman',
                style: AppStyles.styleMedium20,
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold24.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.styleRegular16.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 54 - 28,
            ),
          ],
        ),
      ),
    );
  }
}
