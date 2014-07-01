import 'package:polymer/polymer.dart';
import 'model.dart' show Codelab;
import 'dart:html' show Event, Node;

@CustomTag('codelab-list')
class CodelabList extends PolymerElement {
  @observable List<Codelab> codelabs = toObservable([]);
  @observable Codelab newCodeLab = new Codelab();
  String get defaultLevel => Codelab.LEVELS[1];
  
  CodelabList.created() : super.created() {
    newCodeLab.level = defaultLevel;
  }
  
  resetForm() {
    newCodeLab = new Codelab();
    newCodeLab.level = defaultLevel;
  }

  addCodelab(Event e, var detail, Node sender) {
    e.preventDefault();
    codelabs.add(detail['codelab']);
    resetForm();
  }
}
