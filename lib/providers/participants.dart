import 'dart:convert';

import 'package:check_in_app/core/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/participant.dart';

class Participants with ChangeNotifier {
<<<<<<< HEAD
  List<Participant> _participants = [];

  List<Participant> get checkedParticipants =>
      _participants.where((element) => element.checkedIn).toList();

  List<Participant> get ideaTechParticipants => checkedParticipants
      .where((element) => element.role == 'competitor')
      .toList();
  List<Participant> get workshopsParticipants => checkedParticipants
      .where((element) => element.role == 'trainee')
      .toList();

  List<Participant> get w1 => checkedParticipants
      .where((element) =>
          element.role == 'trainee' &&
          element.training == 'Building a successful brand')
      .toList();
  List<Participant> get w2 => checkedParticipants
      .where((element) =>
          element.role == 'trainee' &&
          element.training ==
              'Motion design and visual elements in a business context')
      .toList();
  List<Participant> get w3 => checkedParticipants
      .where((element) =>
          element.role == 'trainee' &&
          element.training == 'The requirements for your business promotion')
      .toList();
  List<Participant> get w4 => checkedParticipants
      .where((element) =>
          element.role == 'trainee' &&
          element.training == 'Salesforce: the global leader CRM')
      .toList();

  List<Participant> get participants => [..._participants];

  Future<void> fetchParticipants() async {
    try {
      final response = await http.get(
        Uri.parse(AppConstant.participantsUrl),
      );

      if (response.statusCode == 200) {
        List data = jsonDecode(response.body);

        List<Participant> loadedParticipants = [
          for (var p in data) Participant.fromJson(p)
        ];
        _participants = loadedParticipants;

=======
  Map<String, Participant> _participants = {};

  List<Participant> get participants => [..._participants.values];

  Future<void> addParticipant(String id) async {
    Map<String, String> headers = {'_id': id};

    try {
      final response = await http.put(
        Uri.parse(AppConstant.urlUser),
        headers: headers,
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final loadedParticipant = Participant.fromJson(data[0]);
        _participants.putIfAbsent(
            loadedParticipant.id, () => loadedParticipant);
>>>>>>> f9bbb43ea6c4c36dd1884a3f22a538b7694e63fc
        notifyListeners();
      } else {
        throw Exception('No user');
      }
    } catch (e) {
<<<<<<< HEAD
      rethrow;
    }
  }

  Future<Participant?> addParticipant(String id) async {
    Map<String, String> headers = {'_id': id};

    try {
      final response = await http.put(
        Uri.parse(AppConstant.checkinUrl),
        headers: headers,
      );
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final loadedParticipant = Participant.fromJson(data);
        return loadedParticipant;
      } else {
        // throw Exception('No user');
      }
    } catch (e) {
      //TODO: add error handling.
    }
    return null;
=======
      //TODO: add error handling.
    }
>>>>>>> f9bbb43ea6c4c36dd1884a3f22a538b7694e63fc
  }
}
