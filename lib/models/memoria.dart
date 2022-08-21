class memoria {
  String _value = '0';

  void applyCommand(String command) {
    _value += command;
  }

  String get value {
    return _value;
  }
}
