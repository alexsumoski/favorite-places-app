import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/place.dart';

class UserPlacesNoitifier extends StateNotifier<List<Place>> {
  UserPlacesNoitifier() : super(const []);

  void addPlace(String title) {
    final newPlace = Place(title: title);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPlacesNoitifier, List<Place>>(
  (ref) => UserPlacesNoitifier(),
);
