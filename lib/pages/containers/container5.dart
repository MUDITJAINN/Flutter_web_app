import 'package:flutter/material.dart';
import 'package:flutter_web_app/pages/containers/commoncontainer.dart';

import 'package:flutter_web_app/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container5 extends StatefulWidget {
  const Container5({super.key});

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      // for making responsive UI
      mobile: MobileContainer5(),
      desktop: DesktopContainer5(),
      //mobile:
    );
  }

  Widget MobileContainer5() {
    return Container();
  }

  Widget DesktopContainer5() {
    return CommonContainer(
        'ALWAYS ONLINE',
        'Real-time \nsupport \nwith cloud',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim',
        illustration3,
        false);
  }
}
