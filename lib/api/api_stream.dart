import 'dart:async';

class ApiManager {
  final StreamController _streamController = StreamController();
  Stream get apiCount => _streamController.stream;
}
