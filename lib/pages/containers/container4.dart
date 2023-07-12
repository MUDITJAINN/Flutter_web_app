import 'package:flutter/material.dart';
import 'package:flutter_web_app/pages/containers/commoncontainer.dart';
import 'package:flutter_web_app/pages/containers/commoncontainermobile.dart';

import 'package:flutter_web_app/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      // for making responsive UI
      mobile: MobileContainer4(),
      desktop: DesktopContainer4(),
      //mobile:
    );
  }

  Widget MobileContainer4() {
    return CommonContainerMobile(
        'ALWAYS ONLINE',
        'Real-time support \nwith cloud',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim',
        illustration2,);
  }

  Widget DesktopContainer4() {
    return CommonContainer(
        'ALWAYS ONLINE',
        'Real-time \nsupport \nwith cloud',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim',
        illustration2,
       true);
  }
}
