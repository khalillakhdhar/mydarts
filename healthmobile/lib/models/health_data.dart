class HealthData {
  final int? id;
  final int rythmeCardiaque;
  final double tension;
  final double glycemie;
  final String date;
  HealthData(
      {this.id,
      required this.rythmeCardiaque,
      required this.tension,
      required this.glycemie,
      required this.date});
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'rythmeCardiaque': rythmeCardiaque,
      'tension': tension,
      'glycemie': glycemie,
      'date': date
    };
  }
}
