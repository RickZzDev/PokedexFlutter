// class PokeApi {
//   List<Pokemon> pokemon;

//   PokeApi({this.pokemon});

//   PokeApi.fromJson(Map<String, dynamic> json) {
//     if (json['pokemon'] != null) {
//       pokemon = new List<Pokemon>();
//       json['pokemon'].forEach((v) {
//         pokemon.add(new Pokemon.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.pokemon != null) {
//       data['pokemon'] = this.pokemon.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Pokemon {
//   int id;
//   String num;
//   String name;
//   String img;
//   List<String> type;
//   String height;
//   String weight;
//   String candy;
//   String egg;
//   List<NextEvolution> nextEvolution;
//   List<PrevEvolution> prevEvolution;

//   Pokemon(
//       {this.id,
//       this.num,
//       this.name,
//       this.img,
//       this.type,
//       this.height,
//       this.weight,
//       this.candy,
//       this.egg,
//       this.nextEvolution,
//       this.prevEvolution});

//   Pokemon.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     num = json['num'];
//     name = json['name'];
//     img = json['img'];
//     type = json['type'].cast<String>();
//     height = json['height'];
//     weight = json['weight'];
//     candy = json['candy'];
//     egg = json['egg'];
//     if (json['next_evolution'] != null) {
//       nextEvolution = new List<NextEvolution>();
//       json['next_evolution'].forEach((v) {
//         nextEvolution.add(new NextEvolution.fromJson(v));
//       });
//     }
//     if (json['prev_evolution'] != null) {
//       prevEvolution = new List<PrevEvolution>();
//       json['prev_evolution'].forEach((v) {
//         prevEvolution.add(new PrevEvolution.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['num'] = this.num;
//     data['name'] = this.name;
//     data['img'] = this.img;
//     data['type'] = this.type;
//     data['height'] = this.height;
//     data['weight'] = this.weight;
//     data['candy'] = this.candy;
//     data['egg'] = this.egg;
//     if (this.nextEvolution != null) {
//       data['next_evolution'] =
//           this.nextEvolution.map((v) => v.toJson()).toList();
//     }
//     if (this.prevEvolution != null) {
//       data['prev_evolution'] =
//           this.prevEvolution.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class NextEvolution {
//   String num;
//   String name;

//   NextEvolution({this.num, this.name});

//   NextEvolution.fromJson(Map<String, dynamic> json) {
//     num = json['num'];
//     name = json['name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['num'] = this.num;
//     data['name'] = this.name;
//     return data;
//   }
// }

// class PrevEvolution {
//   String num;
//   String name;

//   PrevEvolution({this.num, this.name});

//   PrevEvolution.fromJson(Map<String, dynamic> json) {
//     num = json['num'];
//     name = json['name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['num'] = this.num;
//     data['name'] = this.name;
//     return data;
//   }
// }

class PokeApi {
  List<Pokemon> pokemon;

  PokeApi({this.pokemon});

  PokeApi.fromJson(Map<String, dynamic> json) {
    if (json['pokemon'] != null) {
      pokemon = new List<Pokemon>();
      json['pokemon'].forEach((v) {
        pokemon.add(new Pokemon.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pokemon != null) {
      data['pokemon'] = this.pokemon.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pokemon {
  int id;
  String number;
  String name;
  String img;
  String description;
  List<String> type;
  String height;
  String weight;
  String candy;
  dynamic candyCount;
  String egg;
  dynamic spawnChance;
  dynamic avgSpawns;
  String spawnTime;
  List<dynamic> multipliers;
  List<String> weaknesses;
  List<PrevEvolution> prevEvolution;
  List<NextEvolution> nextEvolution;

  Pokemon(
      {this.id,
      this.number,
      this.name,
      this.img,
      this.type,
      this.height,
      this.weight,
      this.candy,
      this.candyCount,
      this.egg,
      this.spawnChance,
      this.avgSpawns,
      this.spawnTime,
      this.multipliers,
      this.weaknesses,
      this.prevEvolution,
      this.nextEvolution});

  Pokemon.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    number = json['num'];
    name = json['name'];
    img = json['img'];
    type = json['type'].cast<String>();
    height = json['height'];
    weight = json['weight'];
    candy = json['candy'];
    candyCount = json['candy_count'];
    egg = json['egg'];
    spawnChance = json['spawn_chance'];
    avgSpawns = json['avg_spawns'];
    spawnTime = json['spawn_time'];
    if (json['multipliers'] != null) {
      multipliers = json['multipliers'].cast<double>();
    }

    weaknesses = json['weaknesses'].cast<String>();
    if (json['prev_evolution'] != null) {
      prevEvolution = new List<PrevEvolution>();
      json['prev_evolution'].forEach((v) {
        prevEvolution.add(new PrevEvolution.fromJson(v));
      });
    }
    if (json['next_evolution'] != null) {
      nextEvolution = new List<NextEvolution>();
      json['next_evolution'].forEach((v) {
        nextEvolution.add(new NextEvolution.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['num'] = this.number;
    data['name'] = this.name;
    data['img'] = this.img;
    data['type'] = this.type;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['candy'] = this.candy;
    data['candy_count'] = this.candyCount;
    data['egg'] = this.egg;
    data['spawn_chance'] = this.spawnChance;
    data['avg_spawns'] = this.avgSpawns;
    data['spawn_time'] = this.spawnTime;
    data['multipliers'] = this.multipliers;
    data['weaknesses'] = this.weaknesses;
    if (this.prevEvolution != null) {
      data['prev_evolution'] =
          this.prevEvolution.map((v) => v.toJson()).toList();
    }
    if (this.nextEvolution != null) {
      data['next_evolution'] =
          this.nextEvolution.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NextEvolution {
  String number;
  String name;

  NextEvolution({this.number, this.name});

  NextEvolution.fromJson(Map<String, dynamic> json) {
    number = json['num'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['num'] = this.number;
    data['name'] = this.name;
    return data;
  }
}

class PrevEvolution {
  String number;
  String name;

  PrevEvolution({this.number, this.name});

  PrevEvolution.fromJson(Map<String, dynamic> json) {
    number = json['num'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['num'] = this.number;
    data['name'] = this.name;
    return data;
  }
}
