// Enhanced TimePeriod enum with abbreviated display names
enum TimePeriod {
  thisMonth('This Month', '1M'),
  lastMonth('Last Month', '1M'),
  lastThree('Last Three Months', '3M'),
  lastSix('Last Six Months', '6M'),
  allTime('All', 'All');

  const TimePeriod(this.displayName, this.shortName);
  final String displayName;
  final String shortName; // For button display
}

// Alternative approach without modifying enum
extension TimePeriodExtension on TimePeriod {
  String get abbreviatedName {
    switch (this) {
      case TimePeriod.thisMonth:
        return 'This Month';
      case TimePeriod.lastMonth:
        return 'Last Month';
      case TimePeriod.lastThree:
        return 'Last 3 Months'; // Short for 3 months
      case TimePeriod.lastSix:
        return 'Last 6 Months'; // Short for 6 months
      case TimePeriod.allTime:
        return 'All';
    }
  }
}