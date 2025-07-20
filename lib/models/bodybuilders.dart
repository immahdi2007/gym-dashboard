class BodyBuilders {
  final int? id;
  final String name;
  final String last_name;
  final DateTime start_date;
  final String goal;
  final String injury;
  final double weight;
  final double height;
  final String img;
  final String analysis;

  BodyBuilders({
  this.id, 
  required this.name, 
  required this.last_name, 
  required this.start_date, 
  required this.goal, 
  required this.injury, 
  required this.weight, 
  required this.height,
  required this.img, 
  required this.analysis, 
  });


  factory BodyBuilders.fromMap(Map<String, dynamic> map) {
    return BodyBuilders(id: map['id'] ,
    name: map['name'], 
    last_name: map['last_name'], 
    start_date: map['start_date'], 
    goal: map['goal'], 
    injury: map['injury'], 
    weight: map['wieght'], 
    height: map['height'],
    img: map['img'],
    analysis: map['analysis']
    );
  }

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'name': name,
      'last_name': last_name,
      'start_date': start_date.toIso8601String(),
      'goal': goal,
      'injury': injury,
      'weight': weight,
      'height': height,
      'img': img,
      'analysis': analysis
    };
  }


}