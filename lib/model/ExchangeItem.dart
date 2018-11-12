class ExchangeItem {
  String name;
  double amount;

  ExchangeItem(this.name, this.amount);

  ExchangeItem.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        amount = double.parse(json['amount']);

  Map<String,dynamic> toJson() => {
    'name': name, 'amount' : amount
  };

  @override
  String toString() => '$name, $amount';
}
