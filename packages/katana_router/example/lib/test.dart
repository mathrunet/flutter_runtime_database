import 'dart:math';

import 'package:flutter/material.dart';
import 'package:katana_router/katana_router.dart';

part "test.router.dart";

@PagePath("/")
class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
    required this.title,
  });

  final String title;

  static const query = _$MainPageQuery();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("MainPage"),
        ),
        body: ListView(
          children: [
            ListTile(
              title: const Text("UserPage"),
              onTap: () async {
                final aa = await context.router.push<String>(
                  UserPage.query(userId: "aaaa"),
                  RouteQuery.fullscreen,
                );
                print(aa);
              },
            ),
            ListTile(
              title: const Text("ContentPage"),
              onTap: () async {
                final cc = await context.router
                    .replace<int>(ContentPage.query(contentId: "bbbb"));
                print(cc.toString());
              },
            ),
            ListTile(
              title: const Text("Pop"),
              onTap: () {
                context.router.pop();
              },
            )
          ],
        ));
  }
}

@PagePath("/page/:user_id")
class UserPage extends StatelessWidget {
  const UserPage({
    super.key,
    required this.userId,
  });

  final String userId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("UserPage")),
      body: Center(
        child: Text(userId),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.pop("aaa");
          // page.value =
          //     page.value.copyWith(userId: Random().rangeInt(0, 100).toString());
        },
        child: Icon(Icons.abc),
      ),
    );
  }

  static const query = _$UserPageQuery();
}

@PagePath("/content/:content_id")
class ContentPage extends StatelessWidget {
  const ContentPage({
    super.key,
    required this.contentId,
  });

  final String contentId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ContentPage")),
      body: Center(
        child: Text(contentId),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.pop(100);
          // page.value = page.value
          //     .copyWith(contentId: Random().rangeInt(0, 100).toString());
        },
        child: Icon(Icons.abc),
      ),
    );
  }

  static const query = _$ContentPageQuery();
}
