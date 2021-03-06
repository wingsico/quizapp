import 'package:Apps/router/route_type.dart';
import 'package:flutter/material.dart';

class RouteList extends StatelessWidget {
  final Routes routes;
  const RouteList(this.routes);

  @override
  build(BuildContext ctx) {
    return ListView.separated(
      itemBuilder: (ctx, index) {
        final currentRoute = routes.list[index];
        return ListTile(
          title: Text(currentRoute.name),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.of(ctx).pushNamed(
              currentRoute.payload.path,
              arguments: currentRoute.payload.arguments,
            );
          },
        );
      },
      separatorBuilder: (ctx, index) => Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
        ),
        child: Container(
          height: 1,
          color: Colors.grey[300],
        ),
      ),
      itemCount: routes.list.length,
    );
  }
}
