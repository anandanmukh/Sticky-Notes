import '/backend/schema/structs/index.dart';
import '/components/note_dot_component/note_dot_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'new_note_selector_component_model.dart';
export 'new_note_selector_component_model.dart';

class NewNoteSelectorComponentWidget extends StatefulWidget {
  const NewNoteSelectorComponentWidget({
    super.key,
    this.onAddNoteAction,
  });

  final Future Function()? onAddNoteAction;

  @override
  State<NewNoteSelectorComponentWidget> createState() =>
      _NewNoteSelectorComponentWidgetState();
}

class _NewNoteSelectorComponentWidgetState
    extends State<NewNoteSelectorComponentWidget>
    with TickerProviderStateMixin {
  late NewNoteSelectorComponentModel _model;

  final animationsMap = {
    'iconButtonOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.1, 1.1),
        ),
      ],
    ),
    'noteDotComponentOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: const Offset(0.0, -60.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'noteDotComponentOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 100.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 100.ms,
          begin: const Offset(0.0, -40.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'noteDotComponentOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 100.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 100.ms,
          begin: const Offset(0.0, -60.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'noteDotComponentOnActionTriggerAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 100.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 100.ms,
          begin: const Offset(0.0, -60.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'noteDotComponentOnActionTriggerAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 500.ms,
          duration: 100.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 500.ms,
          duration: 100.ms,
          begin: const Offset(0.0, -60.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewNoteSelectorComponentModel());

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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        MouseRegion(
          opaque: false,
          cursor: MouseCursor.defer ?? MouseCursor.defer,
          onEnter: ((event) async {
            setState(() => _model.mouseRegionHovered = true);
            if (animationsMap['iconButtonOnActionTriggerAnimation'] != null) {
              await animationsMap['iconButtonOnActionTriggerAnimation']!
                  .controller
                  .forward(from: 0.0);
            }
          }),
          onExit: ((event) async {
            setState(() => _model.mouseRegionHovered = false);
            if (animationsMap['iconButtonOnActionTriggerAnimation'] != null) {
              await animationsMap['iconButtonOnActionTriggerAnimation']!
                  .controller
                  .reverse();
            }
          }),
          child: FlutterFlowIconButton(
            borderRadius: 22.0,
            buttonSize: 44.0,
            fillColor: FlutterFlowTheme.of(context).activateButtonBackground,
            icon: Icon(
              Icons.add,
              color: FlutterFlowTheme.of(context).activateButtonText,
              size: 24.0,
            ),
            onPressed: () async {
              if (_model.isNewNoteDotsVisible == false) {
                if (animationsMap[
                        'noteDotComponentOnActionTriggerAnimation1'] !=
                    null) {
                  animationsMap['noteDotComponentOnActionTriggerAnimation1']!
                      .controller
                      .forward(from: 0.0);
                }
                if (animationsMap[
                        'noteDotComponentOnActionTriggerAnimation2'] !=
                    null) {
                  animationsMap['noteDotComponentOnActionTriggerAnimation2']!
                      .controller
                      .forward(from: 0.0);
                }
                if (animationsMap[
                        'noteDotComponentOnActionTriggerAnimation3'] !=
                    null) {
                  animationsMap['noteDotComponentOnActionTriggerAnimation3']!
                      .controller
                      .forward(from: 0.0);
                }
                if (animationsMap[
                        'noteDotComponentOnActionTriggerAnimation4'] !=
                    null) {
                  animationsMap['noteDotComponentOnActionTriggerAnimation4']!
                      .controller
                      .forward(from: 0.0);
                }
                if (animationsMap[
                        'noteDotComponentOnActionTriggerAnimation5'] !=
                    null) {
                  await animationsMap[
                          'noteDotComponentOnActionTriggerAnimation5']!
                      .controller
                      .forward(from: 0.0);
                }
              } else {
                if (animationsMap[
                        'noteDotComponentOnActionTriggerAnimation5'] !=
                    null) {
                  animationsMap['noteDotComponentOnActionTriggerAnimation5']!
                      .controller
                      .reverse();
                }
                if (animationsMap[
                        'noteDotComponentOnActionTriggerAnimation4'] !=
                    null) {
                  animationsMap['noteDotComponentOnActionTriggerAnimation4']!
                      .controller
                      .reverse();
                }
                if (animationsMap[
                        'noteDotComponentOnActionTriggerAnimation3'] !=
                    null) {
                  animationsMap['noteDotComponentOnActionTriggerAnimation3']!
                      .controller
                      .reverse();
                }
                if (animationsMap[
                        'noteDotComponentOnActionTriggerAnimation2'] !=
                    null) {
                  animationsMap['noteDotComponentOnActionTriggerAnimation2']!
                      .controller
                      .reverse();
                }
                if (animationsMap[
                        'noteDotComponentOnActionTriggerAnimation1'] !=
                    null) {
                  await animationsMap[
                          'noteDotComponentOnActionTriggerAnimation1']!
                      .controller
                      .reverse();
                }
              }

              setState(() {
                _model.isNewNoteDotsVisible = !_model.isNewNoteDotsVisible;
              });
            },
          ).animateOnActionTrigger(
            animationsMap['iconButtonOnActionTriggerAnimation']!,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            wrapWithModel(
              model: _model.noteDot1ComponentModel,
              updateCallback: () => setState(() {}),
              child: NoteDotComponentWidget(
                colour: FFAppConstants.NOTECOLOR1,
                onCircleTapAction: () async {
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation5'] !=
                      null) {
                    animationsMap['noteDotComponentOnActionTriggerAnimation5']!
                        .controller
                        .reverse();
                  }
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation4'] !=
                      null) {
                    animationsMap['noteDotComponentOnActionTriggerAnimation4']!
                        .controller
                        .reverse();
                  }
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation3'] !=
                      null) {
                    animationsMap['noteDotComponentOnActionTriggerAnimation3']!
                        .controller
                        .reverse();
                  }
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation2'] !=
                      null) {
                    animationsMap['noteDotComponentOnActionTriggerAnimation2']!
                        .controller
                        .reverse();
                  }
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation1'] !=
                      null) {
                    await animationsMap[
                            'noteDotComponentOnActionTriggerAnimation1']!
                        .controller
                        .reverse();
                  }
                  setState(() {
                    _model.isNewNoteDotsVisible = !_model.isNewNoteDotsVisible;
                  });
                  setState(() {
                    FFAppState().insertAtIndexInNotes(
                        0,
                        NoteStruct(
                          isNew: true,
                          colour: FFAppConstants.NOTECOLOR1,
                          createDate: getCurrentTimestamp,
                        ));
                  });
                  await widget.onAddNoteAction?.call();
                },
              ),
            ).animateOnActionTrigger(
              animationsMap['noteDotComponentOnActionTriggerAnimation1']!,
            ),
            wrapWithModel(
              model: _model.noteDot2ComponentModel,
              updateCallback: () => setState(() {}),
              child: NoteDotComponentWidget(
                colour: FFAppConstants.NOTECOLOR2,
                onCircleTapAction: () async {
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation5'] !=
                      null) {
                    animationsMap['noteDotComponentOnActionTriggerAnimation5']!
                        .controller
                        .reverse();
                  }
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation4'] !=
                      null) {
                    animationsMap['noteDotComponentOnActionTriggerAnimation4']!
                        .controller
                        .reverse();
                  }
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation3'] !=
                      null) {
                    animationsMap['noteDotComponentOnActionTriggerAnimation3']!
                        .controller
                        .reverse();
                  }
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation2'] !=
                      null) {
                    animationsMap['noteDotComponentOnActionTriggerAnimation2']!
                        .controller
                        .reverse();
                  }
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation1'] !=
                      null) {
                    await animationsMap[
                            'noteDotComponentOnActionTriggerAnimation1']!
                        .controller
                        .reverse();
                  }
                  setState(() {
                    _model.isNewNoteDotsVisible = !_model.isNewNoteDotsVisible;
                  });
                  setState(() {
                    FFAppState().insertAtIndexInNotes(
                        0,
                        NoteStruct(
                          isNew: true,
                          colour: FFAppConstants.NOTECOLOR2,
                          createDate: getCurrentTimestamp,
                        ));
                  });
                  await widget.onAddNoteAction?.call();
                },
              ),
            ).animateOnActionTrigger(
              animationsMap['noteDotComponentOnActionTriggerAnimation2']!,
            ),
            wrapWithModel(
              model: _model.noteDot3ComponentModel,
              updateCallback: () => setState(() {}),
              child: NoteDotComponentWidget(
                colour: FFAppConstants.NOTECOLOR3,
                onCircleTapAction: () async {
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation5'] !=
                      null) {
                    animationsMap['noteDotComponentOnActionTriggerAnimation5']!
                        .controller
                        .reverse();
                  }
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation4'] !=
                      null) {
                    animationsMap['noteDotComponentOnActionTriggerAnimation4']!
                        .controller
                        .reverse();
                  }
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation3'] !=
                      null) {
                    animationsMap['noteDotComponentOnActionTriggerAnimation3']!
                        .controller
                        .reverse();
                  }
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation2'] !=
                      null) {
                    animationsMap['noteDotComponentOnActionTriggerAnimation2']!
                        .controller
                        .reverse();
                  }
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation1'] !=
                      null) {
                    await animationsMap[
                            'noteDotComponentOnActionTriggerAnimation1']!
                        .controller
                        .reverse();
                  }
                  setState(() {
                    _model.isNewNoteDotsVisible = !_model.isNewNoteDotsVisible;
                  });
                  setState(() {
                    FFAppState().insertAtIndexInNotes(
                        0,
                        NoteStruct(
                          isNew: true,
                          colour: FFAppConstants.NOTECOLOR3,
                          createDate: getCurrentTimestamp,
                        ));
                  });
                  await widget.onAddNoteAction?.call();
                },
              ),
            ).animateOnActionTrigger(
              animationsMap['noteDotComponentOnActionTriggerAnimation3']!,
            ),
            wrapWithModel(
              model: _model.noteDot4ComponentModel,
              updateCallback: () => setState(() {}),
              child: NoteDotComponentWidget(
                colour: FFAppConstants.NOTECOLOR4,
                onCircleTapAction: () async {
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation5'] !=
                      null) {
                    animationsMap['noteDotComponentOnActionTriggerAnimation5']!
                        .controller
                        .reverse();
                  }
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation4'] !=
                      null) {
                    animationsMap['noteDotComponentOnActionTriggerAnimation4']!
                        .controller
                        .reverse();
                  }
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation3'] !=
                      null) {
                    animationsMap['noteDotComponentOnActionTriggerAnimation3']!
                        .controller
                        .reverse();
                  }
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation2'] !=
                      null) {
                    animationsMap['noteDotComponentOnActionTriggerAnimation2']!
                        .controller
                        .reverse();
                  }
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation1'] !=
                      null) {
                    await animationsMap[
                            'noteDotComponentOnActionTriggerAnimation1']!
                        .controller
                        .reverse();
                  }
                  setState(() {
                    _model.isNewNoteDotsVisible = !_model.isNewNoteDotsVisible;
                  });
                  setState(() {
                    FFAppState().insertAtIndexInNotes(
                        0,
                        NoteStruct(
                          isNew: true,
                          colour: FFAppConstants.NOTECOLOR4,
                          createDate: getCurrentTimestamp,
                        ));
                  });
                  await widget.onAddNoteAction?.call();
                },
              ),
            ).animateOnActionTrigger(
              animationsMap['noteDotComponentOnActionTriggerAnimation4']!,
            ),
            wrapWithModel(
              model: _model.noteDot5ComponentModel,
              updateCallback: () => setState(() {}),
              child: NoteDotComponentWidget(
                colour: FFAppConstants.NOTECOLOR5,
                onCircleTapAction: () async {
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation5'] !=
                      null) {
                    animationsMap['noteDotComponentOnActionTriggerAnimation5']!
                        .controller
                        .reverse();
                  }
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation4'] !=
                      null) {
                    animationsMap['noteDotComponentOnActionTriggerAnimation4']!
                        .controller
                        .reverse();
                  }
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation3'] !=
                      null) {
                    animationsMap['noteDotComponentOnActionTriggerAnimation3']!
                        .controller
                        .reverse();
                  }
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation2'] !=
                      null) {
                    animationsMap['noteDotComponentOnActionTriggerAnimation2']!
                        .controller
                        .reverse();
                  }
                  if (animationsMap[
                          'noteDotComponentOnActionTriggerAnimation1'] !=
                      null) {
                    await animationsMap[
                            'noteDotComponentOnActionTriggerAnimation1']!
                        .controller
                        .reverse();
                  }
                  setState(() {
                    _model.isNewNoteDotsVisible = !_model.isNewNoteDotsVisible;
                  });
                  setState(() {
                    FFAppState().insertAtIndexInNotes(
                        0,
                        NoteStruct(
                          isNew: true,
                          colour: FFAppConstants.NOTECOLOR5,
                          createDate: getCurrentTimestamp,
                        ));
                  });
                  await widget.onAddNoteAction?.call();
                },
              ),
            ).animateOnActionTrigger(
              animationsMap['noteDotComponentOnActionTriggerAnimation5']!,
            ),
          ].divide(const SizedBox(height: 16.0)),
        ),
      ].divide(const SizedBox(height: 60.0)),
    );
  }
}
