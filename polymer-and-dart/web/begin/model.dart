library polymer_and_dart.web.models;

import 'package:polymer/polymer.dart';

class Codelab extends Observable {
  static const List<String> LEVELS = const ['easy', 'intermediate', 'advanced'];
  static const MIN_TITLE_LENGTH = 10;
  static const MAX_TITLE_LENGTH = 30;
  static const MAX_DESCRIPTION_LENGTH = 140;
  
  @observable String title;
  @observable String description;
  @observable String level;
  
  //Constructor
  Codelab([this.title = "", this.description = ""]);
}
