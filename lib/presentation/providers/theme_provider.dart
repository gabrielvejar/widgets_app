import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Listado de colores
final colorListProvider = Provider((ref) => colorList);

// Bool indicador de dark theme
final isDarkmodeProvider = StateProvider((ref) => false);

// Un simple int indicador del indice del color seleccionado
final selectedColorProvider = StateProvider((ref) => 0);

