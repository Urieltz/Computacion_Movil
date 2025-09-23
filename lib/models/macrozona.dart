import 'package:travel_chile/models/experiencia.dart';
import 'package:travel_chile/models/lugar.dart';
import 'package:travel_chile/models/parrafo.dart';

class Macrozone {
  final String id;
  final String nombre_lugar;
  final String ruta;
  final List<Parrafo> parrafos;
  final List<Lugar> lugar;
  final List<Experiencia> experiencias;

  const Macrozone({
    required this.id,
    required this.nombre_lugar,
    required this.ruta,
    required this.parrafos,
    required this.lugar,
    required this.experiencias,
  });
}
