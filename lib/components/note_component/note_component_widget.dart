import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'note_component_model.dart';
export 'note_component_model.dart';

class NoteComponentWidget extends StatefulWidget {
  const NoteComponentWidget({
    super.key,
    required this.note,
    this.onDeleteAction,
    this.onUpdateAction,
    required this.index,
  });

  final NoteStruct? note;
  final Future Function()? onDeleteAction;
  final Future Function()? onUpdateAction;
  final int? index;

  @override
  State<NoteComponentWidget> createState() => _NoteComponentWidgetState();
}

class _NoteComponentWidgetState extends State<NoteComponentWidget> {
  late NoteComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoteComponentModel());

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

    return Container(
      width: 240.0,
      height: 200.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              height: 100.0,
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          widget.note!.description,
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Noto Sans',
                                    lineHeight: 1.5,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 60.0,
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    dateTimeFormat(
                        'MMMMEEEEd',
                        dateTimeFromSecondsSinceEpoch(valueOrDefault<int>(
                          widget.note?.createDate?.secondsSinceEpoch,
                          0,
                        ))),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ].addToStart(const SizedBox(height: 16.0)).addToEnd(const SizedBox(height: 8.0)),
      ),
    );
  }
}
