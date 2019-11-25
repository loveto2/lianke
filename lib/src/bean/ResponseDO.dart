class ResponseDO {
  final int store;
  final int person;
  final int price;

  ResponseDO({this.store, this.person, this.price});

  factory ResponseDO.fromJson(Map<String, dynamic> json) {
    return ResponseDO(
      store: json['store'],
      person: json['person'],
      price: json['price']
    );
  }
}