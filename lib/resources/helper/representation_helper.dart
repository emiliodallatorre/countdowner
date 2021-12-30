class RepresentationHelper {
  static String durationToString(final Duration duration) {
    return "${duration.inDays.floor()}:${duration.inHours % 24}:${duration.inMinutes % 60}:${duration.inSeconds % 60}";
  }
}
