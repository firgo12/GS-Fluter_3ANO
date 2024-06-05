import 'package:flutter/material.dart';
import 'package:gs_oceans/models/cleanup_solution_model.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.item,
  });

  final CleanupSolution item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.name),
      subtitle: Text(item.since),
      leading: Image.asset('images/${item.image}'),
      trailing: Text(
        item.statusDescription, style: TextStyle(color: item.statusDescription == 'In Operation' ? Colors.green : item.statusDescription == 'In Maintenance'? Colors.red : Colors.blue),
      ),
    );
  }


}