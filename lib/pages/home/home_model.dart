import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widget/app_bar/app_bar_widget.dart';
import '/widget/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import 'dart:math';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for app_bar component.
  late AppBarModel appBarModel;
  // Model for bottom_navigation_bar component.
  late BottomNavigationBarModel bottomNavigationBarModel;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    bottomNavigationBarModel =
        createModel(context, () => BottomNavigationBarModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
    bottomNavigationBarModel.dispose();
  }
}
