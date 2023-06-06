import '../models/model.dart';

class FakeProductApi {
  List<ProductModel> products = const [
    ProductModel(
      name: "Yellow Dress",
      price: 250,
      photoUrl:
          "https://i.pinimg.com/originals/c9/54/23/c95423d6cca9fc41e31012173d1428ab.jpg",
    ),
    ProductModel(
      name: "Red Dress",
      price: 300,
      photoUrl:
          "https://media.istockphoto.com/id/1217970889/photo/beautiful-female-red-dress-without-sleeves-isolated-on-white-evening-dress.jpg?s=612x612&w=0&k=20&c=SV4eWKwIY-HsUkrCi6X2jApUBcC5-lKFSd_tKG5Ewcw=",
    ),
    ProductModel(
      name: "Black Dress",
      price: 500,
      photoUrl:
          "https://media.istockphoto.com/id/185074737/photo/woman-dress.jpg?s=170667a&w=0&k=20&c=k-461m6DTe99iKorxgyVf93bYWLSNb_GgnVpV8BCFGg=",
    ),
  ];
}
