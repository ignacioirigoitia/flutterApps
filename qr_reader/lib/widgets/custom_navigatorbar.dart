import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:qr_reader/providers/ui_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final uiProvider = Provider.of<UiProvider>(context);

    return BottomNavigationBar(
      onTap: (int i) => uiProvider.selectedMenuOpt = i,
      selectedItemColor: Colors.deepPurple,
      elevation: 0,
      currentIndex: uiProvider.selectedMenuOpt,
      items: [
        BottomNavigationBarItem(
          icon: Icon( Icons.map ),
          label: 'Mapa',
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.compass_calibration ),
          label: 'Direcciones'
        ),
      ],
    );
  }
}