import 'package:flutter/material.dart';
import 'package:flutter_web_app/pages/containers/commoncontainer.dart';

import 'package:flutter_web_app/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      // for making responsive UI
      mobile: MobileContainer3(),
      desktop: DesktopContainer3(),
      //mobile:
    );
  }

  Widget MobileContainer3() {
    return Container();
  }

  Widget DesktopContainer3() {
    
    return CommonContainer(
        'ALWAYS ONLINE',
        'Real-time \nsupport \nwith cloud',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim',
        illustrator,
        false);
  }
}
