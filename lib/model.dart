class MakeupData {
  String? title;
  String? image;
  double? price;
  MakeupData({required this.title, required this.image, required this.price});
  MakeupData.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
    price = json['price'].toDouble();
  }
  Map<String, dynamic> toJson() {
    return {
      'name': title,
      'image_Link': image,
      'price': price,
    };
  }
}
