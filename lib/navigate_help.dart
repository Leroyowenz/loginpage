// import 'package:flutter_login/helper/navigate_help.dart';
import 'package:flutter/material.dart';

goTo(ctx, Widget? location) {
  return Navigator.push(
    ctx,
    MaterialPageRoute(
      builder: (context) {
        return location!;
      },
    ),
  );
}
