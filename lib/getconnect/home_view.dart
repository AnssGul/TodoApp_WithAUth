import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';


class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home View'),
      ),
      body: controller.obx(
            (data) => ListView.separated(
              separatorBuilder:(context, index) =>Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.pink,
                height: 2,
              ),
          itemCount: data?.length ?? 0,
          itemBuilder: (context, index) {
            final user = data?[index];
            return ListTile(
              title: Text('${user['name']['title']} ${user['name']['first']} ${user['name']['last']}'),
              subtitle: Text(user['email']),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(user['picture']['large']),
              ),
            );
          },
        ),
        onLoading: Center(child: CircularProgressIndicator()),
        onError: (error) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
