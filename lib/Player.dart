abstract class Human {
  void walk();

}

enum Team { red, blue }

class Player extends Human{
  String name;
  int xp;
  Team team;

  Player({required this.name, required this.xp, required this.team});

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHi() =>
      print("Hi! Myname is $name, my Xp is $xp and my teamp is $team");

  @override
  void walk() {
    // TODO: implement walk
  }
}

void main() {
  var apiData = [
    {"name": "nico", "xp": 12, "team": "red"},
    {"name": "nico", "xp": 12, "team": "red"}
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHi();
  });

  var nico = Player(name: 'nico', xp: 12, team: Team.red);
  var potato = nico
    ..name = 'las'
    ..xp = 120000
    ..team = Team.blue
    ..sayHi();
}
