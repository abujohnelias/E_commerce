class Product {
  final String id;
  final String name;
  final double price;
  final String imageUrl;

  Product(
      {required this.id,
      required this.name,
      required this.price,
      required this.imageUrl});
}

List<Product> products = [
  Product(
      id: '1',
      name: 'Product 1',
      price: 19.99,
      imageUrl:
          'https://images.unsplash.com/photo-1584448097764-374f81551427?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
  Product(
      id: '2',
      name: 'Product 2',
      price: 29.99,
      imageUrl:
          'https://images.unsplash.com/photo-1584448097764-374f81551427?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
];
