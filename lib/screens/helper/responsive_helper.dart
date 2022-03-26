import 'package:flutter/material.dart';

class ResponsiveHelper extends StatelessWidget {

  final Widget mobile, tab, desktop;


  const ResponsiveHelper({required this.mobile, required this.tab, required this.desktop, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constrains) {
          if(constrains.maxWidth<600){
            return mobile;
          }
          else{
            return tab;
          }
        }
    );
  }
}
