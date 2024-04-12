// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:wiggle/utils/consts/textstyles.dart';

PreferredSizeWidget CommonAppBar({
  required final String title,
  final Widget? leading,
  final Widget? action,
}) {
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: false,
    title: Text(
      title,
      style: appBarTextStyle,
    ),
    leading: leading,
  );
}
