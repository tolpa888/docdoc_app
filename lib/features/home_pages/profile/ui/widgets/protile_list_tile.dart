import 'package:docdoc_app/core/theming/colors.dart';
import 'package:docdoc_app/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../setting/ui/widgets/custom_divider.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        children: [
          ListTile(
            leading: SvgPicture.asset('assets/svgs/person.svg'),
            title: Text(
              'Personal Information',
              style: Styles.font14spblackRegular,
            ),
          ),
          CustomDivider(),
          ListTile(
            leading: SvgPicture.asset('assets/svgs/test.svg'),
            title: Text(
              'My Test & Diagnostic',
              style: Styles.font14spblackRegular,
            ),
            onTap: () {},
          ),
          CustomDivider(),
          ListTile(
            leading: SvgPicture.asset('assets/svgs/payment.svg'),
            title: Text(
              'Payment',
              style: Styles.font14spblackRegular,
            ),
          ),
        ],
      ),
    );
  }
}
