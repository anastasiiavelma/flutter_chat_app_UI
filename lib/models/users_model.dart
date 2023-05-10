class User {
  final int id;
  final String name;
  late final String? imageUrl;

  User({
    required this.id,
    required this.name,
    this.imageUrl,
  });
}

// you
final User currentUser = User(
  id: 0,
  name: 'Alexander Murphy',
  imageUrl: 'assets/images/images1.jpg',
);

// users
final User michael = User(
  id: 1,
  name: 'Michael Grant',
  imageUrl: 'assets/images/images8.jpg',
);
final User stephanie = User(
  id: 2,
  name: 'Stephanie Jones',
  imageUrl: 'assets/images/images2.jpg',
);
final User julie = User(
  id: 3,
  name: 'Julie McAndrew',
  imageUrl: 'assets/images/images3.jpg',
);
final User dillan = User(
  id: 4,
  name: 'Dillan Edmonds',
  imageUrl: 'assets/images/images5.jpg',
);
final User kate = User(
  id: 5,
  name: 'Kate Spedeer',
  imageUrl: 'assets/images/images6.jpg',
);
final User darrenAndLan = User(
  id: 6,
  name: 'Darren Swinney, Lan...',
  imageUrl: null,
);

final User edward = User(
  id: 7,
  name: 'Edward Bro',
  imageUrl: 'assets/images/images7.jpg',
);
