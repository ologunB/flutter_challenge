List<Data> list = [
  Data('', ''),
  Data(
    'CONECTA',
    'Conecta tus neuro sensores a la aplicación\nNeural Trainer y comienza a aumentar tu\nrendimiento cognitivo.',
  ),
  Data(
    'ENTRENA',
    'Selecciona una actividad creada por el equipo\nde Neural Trainer o crea tu propio\nentrenamiento específico.',
  ),
  Data(
    'ANALIZA',
    'Monitorea el desempeño de tus atletas, registra\nsus resultados y compártelos en tiempo real.',
  ),
];

class Data {
  final String title;
  final String description;

  Data(this.title, this.description);
}
