import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widget/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import 'dart:math';
import 'profile_widget.dart' show ProfileWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for bottom_navigation_bar component.
  late BottomNavigationBarModel bottomNavigationBarModel;

  @override
  void initState(BuildContext context) {
    bottomNavigationBarModel =
        createModel(context, () => BottomNavigationBarModel());
  }

  @override
  void dispose() {
    bottomNavigationBarModel.dispose();
  }
}
