import 'package:flutter/material.dart';
import 'package:library_app/models/book_model.dart';
import 'package:library_app/widgets/book_card.dart';
import 'package:library_app/widgets/custom_header.dart';
import 'package:library_app/widgets/my_drawer.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final List<BookModel> books = [
    BookModel(
      auther: 'J.K. Rowling',
      image: 'assets/booksImages/Rectangle 31(9).png',
      name: 'Castel The Moonlight',
      rating: 5,
      date: '1982 - 1985',
      datePublished: '2015',
      language: 'English',
      publisher: 'Penguin Books',
      description:
          'The Castle in the Moonlight" is a magical tale set in a forgotten kingdom hidden under the glow of an eternal moon. When a young adventurer stumbles upon a mysterious castle surrounded by moonlit mist, they uncover secrets of ancient royalty, forbidden love, and a curse that can only be broken by the purest of hearts. Filled with wonder, mystery, and enchantment, this story takes readers on a journey through time and light.',
    ),
    BookModel(
      auther: 'Suzanne Collins',
      image: 'assets/booksImages/Rectangle 31 (1).png',
      name: 'The Hunger Games',
      rating: 4,
      date: '1982 - 1985',
      datePublished: '2015',
      language: 'English',
      publisher: 'Penguin Books',
      description:
          'The Castle in the Moonlight" is a magical tale set in a forgotten kingdom hidden under the glow of an eternal moon. When a young adventurer stumbles upon a mysterious castle surrounded by moonlit mist, they uncover secrets of ancient royalty, forbidden love, and a curse that can only be broken by the purest of hearts. Filled with wonder, mystery, and enchantment, this story takes readers on a journey through time and light.',
    ),
    BookModel(
      auther: 'Jane Austen',
      image: 'assets/booksImages/Rectangle 31 (2).png',
      name: 'Pride and Prejudice',
      rating: 4,
      date: '1980 - 1990',
      datePublished: '2010',
      language: 'English',
      publisher: 'Penguin Books',
      description:
          'The Castle in the Moonlight" is a magical tale set in a forgotten kingdom hidden under the glow of an eternal moon. When a young adventurer stumbles upon a mysterious castle surrounded by moonlit mist, they uncover secrets of ancient royalty, forbidden love, and a curse that can only be broken by the purest of hearts. Filled with wonder, mystery, and enchantment, this story takes readers on a journey through time and light.',
    ),
    BookModel(
      auther: 'F. Scott Fitzgerald',
      image: 'assets/booksImages/Rectangle 31 (3).png',
      name: 'The Great Gatsby',
      rating: 3,
      date: '1990 - 1995',
      datePublished: '2015',
      language: 'English',
      publisher: 'Penguin Books',
      description:
          'The Castle in the Moonlight" is a magical tale set in a forgotten kingdom hidden under the glow of an eternal moon. When a young adventurer stumbles upon a mysterious castle surrounded by moonlit mist, they uncover secrets of ancient royalty, forbidden love, and a curse that can only be broken by the purest of hearts. Filled with wonder, mystery, and enchantment, this story takes readers on a journey through time and light.',
    ),
    BookModel(
      auther: 'J.K. Rowling',
      image: 'assets/booksImages/Rectangle 31 (4).png',
      name: '1984',
      rating: 5,
      date: '1995 - 1999',
      datePublished: '2003',
      language: 'English',
      publisher: 'Penguin Books',
      description:
          'The Castle in the Moonlight" is a magical tale set in a forgotten kingdom hidden under the glow of an eternal moon. When a young adventurer stumbles upon a mysterious castle surrounded by moonlit mist, they uncover secrets of ancient royalty, forbidden love, and a curse that can only be broken by the purest of hearts. Filled with wonder, mystery, and enchantment, this story takes readers on a journey through time and light.',
    ),
    BookModel(
      auther: 'J.K. Rowling',
      image: 'assets/booksImages/Rectangle 31 (5).png',
      name: 'Harry Potter',
      rating: 4,
      date: '1997 - 2005',
      datePublished: '2007',
      language: 'English',
      publisher: 'Penguin Books',
      description:
          'The Castle in the Moonlight" is a magical tale set in a forgotten kingdom hidden under the glow of an eternal moon. When a young adventurer stumbles upon a mysterious castle surrounded by moonlit mist, they uncover secrets of ancient royalty, forbidden love, and a curse that can only be broken by the purest of hearts. Filled with wonder, mystery, and enchantment, this story takes readers on a journey through time and light.',
    ),
    BookModel(
      auther: 'Jane Austen',
      image: 'assets/booksImages/Rectangle 31 (6).png',
      name: 'The Hunger Games',
      rating: 3,
      date: '1995 - 1999',
      datePublished: '2003',
      language: 'English',
      publisher: 'Penguin Books',
      description:
          'The Castle in the Moonlight" is a magical tale set in a forgotten kingdom hidden under the glow of an eternal moon. When a young adventurer stumbles upon a mysterious castle surrounded by moonlit mist, they uncover secrets of ancient royalty, forbidden love, and a curse that can only be broken by the purest of hearts. Filled with wonder, mystery, and enchantment, this story takes readers on a journey through time and light.',
    ),
    BookModel(
      auther: 'J.K. Rowling',
      image: 'assets/booksImages/Rectangle 31 (7).png',
      name: '1984',
      rating: 5,
      date: '1995 - 1999',
      datePublished: '2003',
      language: 'English',
      publisher: 'Penguin Books',
      description:
          'The Castle in the Moonlight" is a magical tale set in a forgotten kingdom hidden under the glow of an eternal moon. When a young adventurer stumbles upon a mysterious castle surrounded by moonlit mist, they uncover secrets of ancient royalty, forbidden love, and a curse that can only be broken by the purest of hearts. Filled with wonder, mystery, and enchantment, this story takes readers on a journey through time and light.',
    ),
    BookModel(
      auther: 'J.K. Rowling',
      image: 'assets/booksImages/Rectangle 31 (8).png',
      name: '1984',
      rating: 5,
      date: '1995 - 1999',
      datePublished: '2003',
      language: 'English',
      publisher: 'Penguin Books',
      description:
          'The Castle in the Moonlight" is a magical tale set in a forgotten kingdom hidden under the glow of an eternal moon. When a young adventurer stumbles upon a mysterious castle surrounded by moonlit mist, they uncover secrets of ancient royalty, forbidden love, and a curse that can only be broken by the purest of hearts. Filled with wonder, mystery, and enchantment, this story takes readers on a journey through time and light.',
    ),
    BookModel(
      auther: 'J.K. Rowling',
      image: 'assets/booksImages/Rectangle 31(10).png',
      name: '1984',
      rating: 5,
      date: '1995 - 1999',
      datePublished: '2003',
      language: 'English',
      publisher: 'Penguin Books',
      description:
          'The Castle in the Moonlight" is a magical tale set in a forgotten kingdom hidden under the glow of an eternal moon. When a young adventurer stumbles upon a mysterious castle surrounded by moonlit mist, they uncover secrets of ancient royalty, forbidden love, and a curse that can only be broken by the purest of hearts. Filled with wonder, mystery, and enchantment, this story takes readers on a journey through time and light.',
    ),
  ];
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const MyDrawer(),
      appBar: const CustomHeader(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search a book',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.grey[100],
              ),
            ),
            const SizedBox(height: 20),
            // Title
            const Text(
              'Recently Added',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            // Books Grid
            Expanded(
              child: GridView.builder(
                itemCount: books.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.6,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8.0),
                    child: BookCard(
                      book: books[index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
