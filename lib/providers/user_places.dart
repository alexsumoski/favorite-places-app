import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/place.dart';

class UserPlacesNoitifier extends StateNotifier<List<Place>> {
  UserPlacesNoitifier() : super(const []);

  void addPlace(String title, File image) {
    final newPlace = Place(title: title, image: image);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPlacesNoitifier, List<Place>>(
  (ref) => UserPlacesNoitifier(),
);
