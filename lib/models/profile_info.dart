class Item {
  late final int id;
  late final String Name;
  late final int Age;
  late final String image;

  Item(this.id, this.Name, this.Age, this.image);

  Item.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    Name = json['Name'];
    Age = json['Age'];
    image = json['image'];
  }
}
