enum Reason {
  competition,
  workshop,
  //...
}

class Participant {
  final String id;
  final String firstName;
  final String familyName;
  final String email;
<<<<<<< HEAD
  final bool checkedIn;
  //
  final String team;
  final String role;
  final String training;
=======
  final String reason;
  //
  final String team;
  final String role;
  final String workshop;
>>>>>>> f9bbb43ea6c4c36dd1884a3f22a538b7694e63fc

  Participant({
    required this.id,
    required this.firstName,
    required this.familyName,
    required this.email,
<<<<<<< HEAD
    required this.team,
    required this.role,
    required this.training,
    required this.checkedIn,
  });

  String? get trainingFormatted {
    if (training == 'no_training') {
      return null;
    }
    return training;
  }

  

=======
    required this.reason,
    required this.team,
    required this.role,
    required this.workshop,
  });

>>>>>>> f9bbb43ea6c4c36dd1884a3f22a538b7694e63fc
  factory Participant.fromJson(Map<String, dynamic> json) {
    return Participant(
      id: json['_id'],
      firstName: json['firstname'],
      familyName: json['familyname'],
      email: json['email'],
<<<<<<< HEAD
      role: json['role'],
      team: json['team'],
      training: json['training'],
      checkedIn: json['checkedIn'],
=======
      reason: json['reason'],
      team: json['team'],
      role: json['role'],
      workshop: json['workshop'],
>>>>>>> f9bbb43ea6c4c36dd1884a3f22a538b7694e63fc
    );
  }
}
