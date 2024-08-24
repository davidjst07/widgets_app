import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkmodeProvider = StateProvider((ref) => false);
// Estado => isDarkmodeProvider = boolean

// Listado de colores inmutable

final colorListProvider = Provider((ref) => colorList);