import 'package:flutter/material.dart';
import 'package:one_widget_per_day/resources/strings.dart';
import 'package:one_widget_per_day/ui/widgets/button_catalog.dart';
import 'package:one_widget_per_day/ui/widgets/come_back_button.dart';
import 'package:one_widget_per_day/ui/widgets/custom_text.dart';
import 'package:one_widget_per_day/ui/widgets/title.dart';
import 'package:one_widget_per_day/utils/routes.dart';

class SliverAppBarScreen extends StatefulWidget {
  @override
  _SliverAppBarScreenState createState() => _SliverAppBarScreenState();
}

class _SliverAppBarScreenState extends State<SliverAppBarScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      ComeBackButton(),
                      SizedBox(width: 30),
                      TitleFont(
                        fontSize: 50,
                        text: Strings.CATALOG_SLIVER_APP_BAR1,
                      ),
                    ],
                  ),
                  TitleFont(
                    fontSize: 50,
                    text: Strings.CATALOG_SLIVER_APP_BAR2,
                  ),
                  SizedBox(height: 10),
                  CustomText(text: Strings.SLIVER_APP_BAR_TEXT01),
                  SizedBox(height: 10),
                  CustomText(text: Strings.SLIVER_APP_BAR_TEXT02),
                  SizedBox(height: 10),
                  CustomText(text: Strings.SLIVER_APP_BAR_TEXT03),
                  SizedBox(height: 10),
                  CustomText(text: Strings.SLIVER_APP_BAR_TEXT04),
                  SizedBox(height: 10),
                  SizedBox(height: 20),
                  CustomText(text: Strings.VIDEO),
                  SizedBox(height: 20),
                  ButtonCatalog(
                    text: Strings.VOLTAR,
                    onPressed: () {
                      Navigator.pushNamed(context, CatalogScreenRoute);
                    },
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
