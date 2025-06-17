import 'package:flutter/material.dart';
import 'package:netsoo/components/post_item.dart';
import 'package:netsoo/components/toolbar.dart';
import 'package:netsoo/config/app_icons.dart';
import 'package:netsoo/config/app_routes.dart';
import 'package:netsoo/config/app_strings.dart';
import 'package:netsoo/provider/post_provider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<PostProvider>().getPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: AppStrings.appName,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.nearby);
            },
            icon: SvgPicture.asset(AppIcons.icLocation),
          ),
        ],
      ),
      body: Consumer<PostProvider>(
        builder: (context, value, child) {
          return ListView.separated(
            itemBuilder: (context, index) {
              return PostItem(
                post: value.list[index],
              );
            },
            itemCount: value.list.length,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 24,
              );
            },
          );
        },
      ),
    );
  }
}
