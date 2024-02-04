import '/components/note_dot_component/note_dot_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'new_note_selector_component_model.dart';
export 'new_note_selector_component_model.dart';

class NewNoteSelectorComponentWidget extends StatefulWidget {
  const NewNoteSelectorComponentWidget({super.key});

  @override
  State<NewNoteSelectorComponentWidget> createState() =>
      _NewNoteSelectorComponentWidgetState();
}

class _NewNoteSelectorComponentWidgetState
    extends State<NewNoteSelectorComponentWidget> {
  late NewNoteSelectorComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewNoteSelectorComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        FlutterFlowIconButton(
          borderRadius: 22.0,
          buttonSize: 44.0,
          fillColor: FlutterFlowTheme.of(context).activateButtonBackground,
          icon: Icon(
            Icons.add,
            color: FlutterFlowTheme.of(context).activateButtonText,
            size: 24.0,
          ),
          onPressed: () {
            print('addNoteIconButton pressed ...');
          },
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            wrapWithModel(
              model: _model.noteDotComponentModel1,
              updateCallback: () => setState(() {}),
              child: NoteDotComponentWidget(
                colour: FFAppConstants.NOTECOLOR1,
                onCircleTapAction: () async {},
              ),
            ),
            wrapWithModel(
              model: _model.noteDotComponentModel2,
              updateCallback: () => setState(() {}),
              child: NoteDotComponentWidget(
                colour: FFAppConstants.NOTECOLOR2,
                onCircleTapAction: () async {},
              ),
            ),
            wrapWithModel(
              model: _model.noteDotComponentModel3,
              updateCallback: () => setState(() {}),
              child: NoteDotComponentWidget(
                colour: FFAppConstants.NOTECOLOR3,
                onCircleTapAction: () async {},
              ),
            ),
            wrapWithModel(
              model: _model.noteDotComponentModel4,
              updateCallback: () => setState(() {}),
              child: NoteDotComponentWidget(
                colour: FFAppConstants.NOTECOLOR4,
                onCircleTapAction: () async {},
              ),
            ),
            wrapWithModel(
              model: _model.noteDotComponentModel5,
              updateCallback: () => setState(() {}),
              child: NoteDotComponentWidget(
                colour: FFAppConstants.NOTECOLOR5,
                onCircleTapAction: () async {},
              ),
            ),
          ].divide(const SizedBox(height: 16.0)),
        ),
      ].divide(const SizedBox(height: 60.0)),
    );
  }
}
