import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return LayoutBuilder(
      builder: (context, constraints) {
        final largeScreen = constraints.maxWidth > 600;
        return Scaffold(
          drawer: largeScreen
              ? null
              : Drawer(
                  backgroundColor: color.inversePrimary,
                  clipBehavior: Clip.antiAlias,
                  child: ListTile(
                    leading: CircleAvatar(child: Icon(Icons.person)),
                    title: Text("Welcome"),
                    subtitle: Text("Lalkishan sai"),
                    trailing: IconButton(
                      onPressed: controller.onIconButtonPressed,
                      icon: Icon(Icons.arrow_forward_outlined),
                    ),
                  ),
                ),

          body: Row(
            children: [
              if (largeScreen)
                Container(
                  width: 380,
                  height: double.maxFinite,
                  color: color.inversePrimary,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 100,
                      child: Icon(Icons.person),
                    ),
                    title: Text("Welcome"),
                    subtitle: Text("Lalkishan sai"),
                  ),
                ),
              Expanded(
                child: CustomScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  slivers: [
                    SliverAppBar(
                      pinned: true,
                      toolbarHeight: 50.h,
                      expandedHeight: 350.h,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Image.asset(
                          "assets/skiing.jpg",
                          fit: BoxFit.cover,
                        ),
                        title: AutoSizeText(
                          "Welcome",
                          maxLines: 1,
                          minFontSize: 14,
                          stepGranularity: 0.1,
                          style: TextStyle(
                            color: color.onPrimaryContainer,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      actions: [Icon(Icons.person)],
                    ),
                    SliverToBoxAdapter(
                      child: Text(
                        "Concentrate on Responsiveness and Adaptiveness",
                        maxLines: 3,
                        style: TextStyle(
                          color: color.error,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    SliverLayoutBuilder(
                      builder: (context, constraints) {
                        final chidCount = constraints.crossAxisExtent < 600
                            ? 5
                            : 1;
                        return SliverList(
                          delegate: SliverChildBuilderDelegate((
                            context,
                            index,
                          ) {
                            return ListTile(
                              leading: Icon(Icons.add),
                              title: Text(
                                "Hello Everyone",
                                style: TextStyle(
                                  color: color.primary,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15.sp,
                                ),
                              ),
                              subtitle: Text(
                                "Bagunnara",
                                style: TextStyle(
                                  color: color.secondary,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13.sp,
                                ),
                              ),
                              trailing: Icon(Icons.abc),
                            );
                          }, childCount: chidCount),
                        );
                      },
                    ),

                    SliverLayoutBuilder(
                      builder: (context, constraints) {
                        final crossAxisCount = constraints.crossAxisExtent < 600
                            ? 2
                            : 5;
                        return SliverGrid(
                          delegate: SliverChildBuilderDelegate((
                            context,
                            index,
                          ) {
                            return Card(
                              child: Center(
                                child: Text(
                                  "This is Card",
                                  style: TextStyle(
                                    color: color.onPrimaryContainer,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            );
                          }, childCount: 10),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: crossAxisCount,
                                mainAxisSpacing: 20.h,
                                crossAxisSpacing: 20.w,
                              ),
                        );
                      },
                    ),
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Column(
                        spacing: 20.h,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 24.0),
                            child: Text("Queries?"),
                          ),
                          Text("Contact lallunallala87@gmail.com"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
