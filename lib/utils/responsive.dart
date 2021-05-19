import 'dart:math' as math;
import 'package:flutter/widgets.dart';

class Responsive {
  Responsive(BuildContext context) {
    final size = MediaQuery.of(context).size;

    _height = size.height;
    _width = size.width;
    _diagonal = math.sqrt(math.pow(_height, 2) + math.pow(_width, 2));
    _portrait = MediaQuery.of(context).orientation == Orientation.portrait;
    _paddingTop = MediaQuery.of(context).padding.top;
    _isSmallScreen = _portrait ? _height < 481.0 : _height < 321.0;
  }

  //Funcion estatica que retorna una isntancia de la clase Responsive
  static Responsive of(BuildContext context) => Responsive(context);

  late double _width, _height, _diagonal;
  late bool _portrait, _isSmallScreen;
  late double _paddingTop;

  double wp(double porcent) => _width * porcent / 100;
  double dp(double porcent) => _diagonal * porcent / 100;
  double hp(double porcent) => _height * porcent / 100;

  double hpa(double porcent, {bool home = true}) {
    var res = _height -
        _paddingTop -
        (home ? (_portrait ? 80 : 60) : 60) -
        (home ? 75 : 0);
    return res * porcent / 100;
  }

  // bool getSizeTypeScreen() => _portrait ? height < 481.0 : height < 321.0;

  double get width => _width;
  double get height => _height;
  double get diagonal => _diagonal;
  bool get portrait => _portrait;
  bool get isSmallScreen => _isSmallScreen;
}
