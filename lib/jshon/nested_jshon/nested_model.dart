class Address {
  final String street;
  final String city;
  final String zipcode;

  Address({
    required this.street,
    required this.city,
    required this.zipcode,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json['street'],
      city: json['city'],
      zipcode: json['zipcode'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'street': street,
      'city': city,
      'zipcode': zipcode,
    };
  }
}

class User {
  final int id;
  final String name;
  final Address address;

  User({
    required this.id,
    required this.name,
    required this.address,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      address: Address.fromJson(json['address']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'address': address.toJson(),
    };
  }
}
