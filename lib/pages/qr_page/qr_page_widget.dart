import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widget/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'qr_page_model.dart';
export 'qr_page_model.dart';

class QrPageWidget extends StatefulWidget {
  /// сканер штрих кодов
  const QrPageWidget({super.key});

  @override
  State<QrPageWidget> createState() => _QrPageWidgetState();
}

class _QrPageWidgetState extends State<QrPageWidget> {
  late QrPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QrPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF1F4F8),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 300.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.asset(
                                    'assets/images/flat,1000x1000,075,f.u7.jpg',
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.0,
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.8,
                                    height: 2.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF6F61EF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          'Отсканируйте штрих-код для накопления бонусов',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Inter',
                                    color: Color(0xFF606A85),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ].divide(SizedBox(height: 24.0)),
                    ),
                  ),
                ),
              ),
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: wrapWithModel(
                      model: _model.bottomNavigationBarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: BottomNavigationBarWidget(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
