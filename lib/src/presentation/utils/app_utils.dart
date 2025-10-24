class AppUtils {

  static String format(double value) {
    return (value % 1 == 0)
        ? value.toInt().toString()
        : value.toStringAsFixed(2);
  }

}
