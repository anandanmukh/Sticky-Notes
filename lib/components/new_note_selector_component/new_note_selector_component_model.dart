import '/components/note_dot_component/note_dot_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_note_selector_component_widget.dart'
    show NewNoteSelectorComponentWidget;
import 'package:flutter/material.dart';

class NewNoteSelectorComponentModel
    extends FlutterFlowModel<NewNoteSelectorComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for noteDotComponent component.
  late NoteDotComponentModel noteDotComponentModel1;
  // Model for noteDotComponent component.
  late NoteDotComponentModel noteDotComponentModel2;
  // Model for noteDotComponent component.
  late NoteDotComponentModel noteDotComponentModel3;
  // Model for noteDotComponent component.
  late NoteDotComponentModel noteDotComponentModel4;
  // Model for noteDotComponent component.
  late NoteDotComponentModel noteDotComponentModel5;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    noteDotComponentModel1 =
        createModel(context, () => NoteDotComponentModel());
    noteDotComponentModel2 =
        createModel(context, () => NoteDotComponentModel());
    noteDotComponentModel3 =
        createModel(context, () => NoteDotComponentModel());
    noteDotComponentModel4 =
        createModel(context, () => NoteDotComponentModel());
    noteDotComponentModel5 =
        createModel(context, () => NoteDotComponentModel());
  }

  @override
  void dispose() {
    noteDotComponentModel1.dispose();
    noteDotComponentModel2.dispose();
    noteDotComponentModel3.dispose();
    noteDotComponentModel4.dispose();
    noteDotComponentModel5.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
