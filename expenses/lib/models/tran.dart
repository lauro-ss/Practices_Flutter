class Transaction {
  final int _id;
  final String _title;
  final double _value;
  final DateTime _date;
  final String _type;

  Transaction(this._id, this._title, this._value, this._date, this._type);

  String get value {
    switch (_type) {
      case "BRL":
        return "R\$ ${_value.toStringAsFixed(2)}";
      default:
        return "\$ ${_value.toStringAsFixed(2)}";
    }
  }

  String get title {
    return _title;
  }

  String get date {
    switch (_type) {
      case "BRL":
        return _date.isSameDate(DateTime.now())
            ? "${_date.hour}:${_date.minute}"
            : "${_date.day}/${_date.month}/${_date.year}";
      default:
        return "\$ ${_value.toString()}";
    }
  }
}

extension _DateCompare on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}
