class BookModel {
  String image;
  String name;
  String auther;
  double rating;
  String publisher;
  String date;
  String datePublished;
  String language;
  String description;

  BookModel({
    required this.auther,
    required this.image,
    required this.name,
    required this.rating,
    required this.date,
    required this.datePublished,
    required this.language,
    required this.publisher,
    required this.description,
  });
}
