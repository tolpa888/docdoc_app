import 'package:docdoc_app/core/helpers/extensions.dart';
import 'package:docdoc_app/core/theming/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/theming/styles.dart';
import 'custom_divider.dart';

class SettingListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: SvgPicture.asset('assets/svgs/notification.svg'),
          title: Text("Notification",style: Styles.font14spblackRegular,),
          trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,color:ColorsManger.dividerText ,),
          onTap: () {
            context.pushNamed(Routes.notificationScreen);
          },
        ),
        CustomDivider(),
        ListTile(
          leading: SvgPicture.asset('assets/svgs/message-question.svg'),
          title: Text("FAQ",style: Styles.font14spblackRegular,),
          trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,color:ColorsManger.dividerText ,),
          onTap: () {},
        ),
        CustomDivider(),
        ListTile(
          leading: SvgPicture.asset('assets/svgs/lock.svg'),
          title: Text("Security",style: Styles.font14spblackRegular,),
          trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,color:ColorsManger.dividerText ,),
          onTap: () {},
        ),
        CustomDivider(),
        ListTile(
          leading: SvgPicture.asset('assets/svgs/language.svg'),
          title: Text("Language",style: Styles.font14spblackRegular,),
          trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,color:ColorsManger.dividerText ,),
          onTap: () {},
        ),
        CustomDivider(),
        ListTile(
          leading: SvgPicture.asset('assets/svgs/logout.svg'),
          title: Text("Logout",style: Styles.font14spRedRegular,),
          trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,color:ColorsManger.dividerText ,),
          onTap: () {},
        ),
        CustomDivider(),
      ],
    );
  }
}