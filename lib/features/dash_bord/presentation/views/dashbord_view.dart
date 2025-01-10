import 'package:dash_bord_app/core/utils/constant.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/add_product_body.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/add_store_body.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/content.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/custom_tab.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/custom_tab_bar.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/info_body.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/stores_body.dart';
import 'package:flutter/material.dart';

class DashbordView extends StatefulWidget {
  const DashbordView({super.key});

  @override
  State<DashbordView> createState() => _DashbordViewState();
}

class _DashbordViewState extends State<DashbordView>
    with SingleTickerProviderStateMixin {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  late double screenHeight;
  late double screenWidth;
  late double topPadding;
  late double bottomPaddig;
  late TabController tabController;

  List<Content> contents = [
    Content(
        tab: const CustomTab(
          title: 'info',
        ),
        content: const InfoBody()),
    Content(
      tab: const CustomTab(title: 'stores'),
      content: const StoresBody(),
    ),
    Content(
        tab: const CustomTab(title: 'users'), content: const AddStoreBody()),
    Content(
        tab: const CustomTab(title: 'more'), content: const AddProductBody()),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: contents.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    topPadding = screenHeight * 0.02;
    bottomPaddig = screenHeight * 0.01;

    return Padding(
      padding: EdgeInsets.only(top: topPadding, bottom: bottomPaddig),
      child: Scaffold(
        //endDrawer: drawer(),

        key: scaffoldKey,
        body: LayoutBuilder(builder: (context, Constraints) {
          if (Constraints.maxWidth > 715) {
            return desktopView();
          } else {
            return mobileView();
          }
        }),
      ),
    );
  }

  Widget desktopView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomTabBar(
          controller: tabController,
          tabs: contents.map((e) => e.tab).toList(),
        ),
        SizedBox(
          height: screenHeight * 0.85,
          child: TabBarView(
              controller: tabController,
              children: contents
                  .map(
                    (e) => e.content,
                  )
                  .toList()),
        ),
      ],
    );
  }

  Widget mobileView() {
    return Padding(
      padding:
          EdgeInsets.only(left: screenWidth * 0.05, right: screenWidth * 0.05),
      child: SizedBox(
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
                iconSize: screenWidth * 0.08,
                onPressed: () => scaffoldKey.currentState?.openEndDrawer(),
                icon: const Icon(
                  Icons.menu_outlined,
                  color: kWhiteColor,
                ))
          ],
        ),
      ),
    );
  }

  Widget drawer() {
    return Drawer(
      child: ListView(
        children: [
              Container(
                height: screenHeight * 0.1,
              )
            ] +
            contents
                .map((e) => Container(
                      child: ListTile(
                        title: Text(e.tab.title),
                        onTap: () {},
                      ),
                    ))
                .toList(),
      ),
    );
  }
}
