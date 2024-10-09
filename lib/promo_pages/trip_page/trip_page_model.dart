import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widget/table/table_widget.dart';
import 'trip_page_widget.dart' show TripPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TripPageModel extends FlutterFlowModel<TripPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for table component.
  late TableModel tableModel;

  @override
  void initState(BuildContext context) {
    tableModel = createModel(context, () => TableModel());
  }

  @override
  void dispose() {
    tableModel.dispose();
  }
}
