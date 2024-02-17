import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'note_component_widget.dart' show NoteComponentWidget;
import 'package:flutter/material.dart';

class NoteComponentModel extends FlutterFlowModel<NoteComponentWidget> {
  ///  Local state fields for this component.

  bool isEditMode = false;

  NoteStruct? note;
  void updateNoteStruct(Function(NoteStruct) updateFn) =>
      updateFn(note ??= NoteStruct());

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
