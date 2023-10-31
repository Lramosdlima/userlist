import 'package:flutter/material.dart';
import 'package:userlist/components/user_tile.dart';
import 'package:userlist/data/dummy_user.dart';
import 'package:userlist/routes/app_routes.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    const users = {...DUMMY_USERS};

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuários'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.USER_FORM);
            },
          )
        ],
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (ctx, i) => UserTile(user: users.values.elementAt(i))),
    );
  }
}
