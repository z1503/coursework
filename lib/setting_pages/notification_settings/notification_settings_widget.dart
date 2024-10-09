import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'notification_settings_model.dart';
export 'notification_settings_model.dart';

class NotificationSettingsWidget extends StatefulWidget {
  const NotificationSettingsWidget({super.key});

  @override
  State<NotificationSettingsWidget> createState() =>
      _NotificationSettingsWidgetState();
}

class _NotificationSettingsWidgetState
    extends State<NotificationSettingsWidget> {
  late NotificationSettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationSettingsModel());

    _model.switchValue1 = true;
    _model.switchValue2 = true;
    _model.switchValue3 = true;
    _model.switchValue4 = true;
    _model.switchValue5 = true;
    _model.switchValue6 = true;
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primary,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).displayLarge.override(
                  fontFamily: 'Inter Tight',
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  fontSize: 1.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 2.0,
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 24.0, 24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Настройки уведомлений',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              'Управляйте своими оповещениями',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Push-уведомления',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        Text(
                                          'Получайте мгновенные оповещения',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Switch(
                                      value: _model.switchValue1!,
                                      onChanged: (newValue) async {
                                        safeSetState(() =>
                                            _model.switchValue1 = newValue!);
                                      },
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      inactiveTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      inactiveThumbColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                  ],
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Email-уведомления',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        Text(
                                          'Получайте обновления на почту',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Switch(
                                      value: _model.switchValue2!,
                                      onChanged: (newValue) async {
                                        safeSetState(() =>
                                            _model.switchValue2 = newValue!);
                                      },
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      inactiveTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      inactiveThumbColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Типы уведомлений',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Inter Tight',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Новые задания',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Switch(
                                      value: _model.switchValue3!,
                                      onChanged: (newValue) async {
                                        safeSetState(() =>
                                            _model.switchValue3 = newValue!);
                                      },
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      inactiveTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      inactiveThumbColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Напоминания',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Switch(
                                      value: _model.switchValue4!,
                                      onChanged: (newValue) async {
                                        safeSetState(() =>
                                            _model.switchValue4 = newValue!);
                                      },
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      inactiveTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      inactiveThumbColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Обновления рейтинга',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Switch(
                                      value: _model.switchValue5!,
                                      onChanged: (newValue) async {
                                        safeSetState(() =>
                                            _model.switchValue5 = newValue!);
                                      },
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      inactiveTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      inactiveThumbColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Новости приложения',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Switch(
                                      value: _model.switchValue6!,
                                      onChanged: (newValue) async {
                                        safeSetState(() =>
                                            _model.switchValue6 = newValue!);
                                      },
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      inactiveTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      inactiveThumbColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.safePop();
                        },
                        text: 'Сохранить настройки',
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 50.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Inter Tight',
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 2.0,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ].divide(SizedBox(height: 24.0)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
