import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';

class MapasPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final scanListProvider = Provider.of<ScanListProvider>(context);

    final scans = scanListProvider.scans;

    return ListView.builder(
      itemCount: scans.length,
      itemBuilder: ( _, i ) => Dismissible(
        direction: DismissDirection.startToEnd,
        key: UniqueKey(),
        background: Container(
          padding: EdgeInsets.only(left: 20),
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.delete, color: Colors.white,)
            ],
          ),
        ),
        onDismissed: ( DismissDirection direction ) {
          Provider.of<ScanListProvider>(context, listen: false).borrarScanPorId(scans[i].id!);
        },
        child: ListTile(
          leading: Icon( Icons.map, color: Theme.of(context).primaryColor ),
          title: Text( scans[i].valor ),
          subtitle: Text( scans[i].id.toString() ),
          trailing: Icon( Icons.keyboard_arrow_right, color: Colors.grey ),
          onTap: () => print( scans[i].id ),
        ),
      )
    );
  }
}