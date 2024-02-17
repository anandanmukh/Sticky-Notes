import '/components/new_note_selector_component/new_note_selector_component_widget.dart';
import '/components/note_component/note_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 10.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 10.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().isDarkMode == true) {
        setDarkModeSetting(context, ThemeMode.dark);
        if (animationsMap['containerOnActionTriggerAnimation1'] != null) {
          await animationsMap['containerOnActionTriggerAnimation1']!
              .controller
              .reverse();
        }
        if (animationsMap['containerOnActionTriggerAnimation2'] != null) {
          await animationsMap['containerOnActionTriggerAnimation2']!
              .controller
              .forward(from: 0.0);
        }
      } else {
        setDarkModeSetting(context, ThemeMode.light);
        if (animationsMap['containerOnActionTriggerAnimation2'] != null) {
          await animationsMap['containerOnActionTriggerAnimation2']!
              .controller
              .reverse();
        }
        if (animationsMap['containerOnActionTriggerAnimation1'] != null) {
          await animationsMap['containerOnActionTriggerAnimation1']!
              .controller
              .forward(from: 0.0);
        }
      }
    });

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 60.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(30.0),
                      shape: BoxShape.rectangle,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 140.0,
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: const BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'My Notes',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge,
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .newNoteSelectorComponentModel,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child:
                                                  const NewNoteSelectorComponentWidget(),
                                            ),
                                          ]
                                              .divide(const SizedBox(height: 60.0))
                                              .addToStart(
                                                  const SizedBox(height: 32.0))
                                              .addToEnd(const SizedBox(height: 32.0)),
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      height: 1.0,
                                      thickness: 1.0,
                                      indent: 32.0,
                                      endIndent: 32.0,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    Container(
                                      width: 100.0,
                                      height: 70.0,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      setDarkModeSetting(
                                                          context,
                                                          ThemeMode.light);
                                                      setState(() {
                                                        FFAppState()
                                                            .isDarkMode = false;
                                                      });
                                                      if (animationsMap[
                                                              'containerOnActionTriggerAnimation2'] !=
                                                          null) {
                                                        await animationsMap[
                                                                'containerOnActionTriggerAnimation2']!
                                                            .controller
                                                            .reverse();
                                                      }
                                                      if (animationsMap[
                                                              'containerOnActionTriggerAnimation1'] !=
                                                          null) {
                                                        await animationsMap[
                                                                'containerOnActionTriggerAnimation1']!
                                                            .controller
                                                            .forward(from: 0.0);
                                                      }
                                                    },
                                                    child: Icon(
                                                      Icons.wb_sunny_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent4,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 8.0,
                                                    height: 8.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent4,
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ).animateOnActionTrigger(
                                                    animationsMap[
                                                        'containerOnActionTriggerAnimation1']!,
                                                  ),
                                                ].divide(const SizedBox(height: 8.0)),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      setDarkModeSetting(
                                                          context,
                                                          ThemeMode.dark);
                                                      setState(() {
                                                        FFAppState()
                                                            .isDarkMode = true;
                                                      });
                                                      if (animationsMap[
                                                              'containerOnActionTriggerAnimation1'] !=
                                                          null) {
                                                        await animationsMap[
                                                                'containerOnActionTriggerAnimation1']!
                                                            .controller
                                                            .reverse();
                                                      }
                                                      if (animationsMap[
                                                              'containerOnActionTriggerAnimation2'] !=
                                                          null) {
                                                        await animationsMap[
                                                                'containerOnActionTriggerAnimation2']!
                                                            .controller
                                                            .forward(from: 0.0);
                                                      }
                                                    },
                                                    child: Icon(
                                                      Icons.mode_night_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent4,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 8.0,
                                                    height: 8.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent4,
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ).animateOnActionTrigger(
                                                    animationsMap[
                                                        'containerOnActionTriggerAnimation2']!,
                                                  ),
                                                ].divide(const SizedBox(height: 8.0)),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                width: 1.0,
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            60.0, 0.0, 60.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Sticky Notes',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Builder(
                                            builder: (context) {
                                              if (FFAppState().notes.isNotEmpty) {
                                                return Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          60.0, 0.0, 60.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Builder(
                                                        builder: (context) {
                                                          final note =
                                                              FFAppState()
                                                                  .notes
                                                                  .toList();
                                                          return Wrap(
                                                            spacing: 0.0,
                                                            runSpacing: 0.0,
                                                            alignment:
                                                                WrapAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
                                                            direction:
                                                                Axis.horizontal,
                                                            runAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalDirection:
                                                                VerticalDirection
                                                                    .down,
                                                            clipBehavior:
                                                                Clip.none,
                                                            children:
                                                                List.generate(
                                                                    note.length,
                                                                    (noteIndex) {
                                                              final noteItem =
                                                                  note[
                                                                      noteIndex];
                                                              return NoteComponentWidget(
                                                                key: Key(
                                                                    'Key1ss_${noteIndex}_of_${note.length}'),
                                                                index:
                                                                    noteIndex,
                                                                note: noteItem,
                                                                onDeleteAction:
                                                                    () async {},
                                                                onUpdateAction:
                                                                    () async {},
                                                              );
                                                            }),
                                                          );
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              } else {
                                                return Container(
                                                  width: double.infinity,
                                                  height: 400.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .edit_note_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 72.0,
                                                      ),
                                                      Text(
                                                        'Empty Notes',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Noto Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                      Text(
                                                        'Create Your First Note By hitting the + Button',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium,
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              }
                                            },
                                          ),
                                        ],
                                      ),
                                    ]
                                        .divide(const SizedBox(height: 60.0))
                                        .addToStart(const SizedBox(height: 120.0))
                                        .addToEnd(const SizedBox(height: 32.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]
                .addToStart(const SizedBox(height: 60.0))
                .addToEnd(const SizedBox(height: 60.0)),
          ),
        ),
      ),
    );
  }
}
