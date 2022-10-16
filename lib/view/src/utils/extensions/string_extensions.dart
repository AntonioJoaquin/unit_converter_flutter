extension StringExt on String {
  String removeTrailingZeros() {
    RegExp regex = RegExp(r'([.]*0)(?!.*\d)');

    return replaceAll(regex, '');
  }
}
