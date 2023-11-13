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
        return "\$ ${_value.toString()}";
    }
  }

  String get title {
    return _title;
  }

  String get date {
    return _date.toString();
  }
}
