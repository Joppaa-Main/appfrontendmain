class Product {
  String id;
  String? productPermalink;
  String productTitle;
  String? productDescription;
  String productImage;
  double productPrice;
  int? productStock;
  String? productAddedDate;
  String? productTags;
  String? productSubscription;
  String? productBrand;
  String? color;
  String? size;
  bool? productStockDisabled;
  bool productPublished;
  bool productFeatured;

  Product({
    required this.id,
    this.productPermalink,
    required this.productTitle,
    this.productDescription,
    required this.productImage,
    required this.productPrice,
    this.productStock,
    this.productAddedDate,
    this.productTags,
    this.productSubscription,
    this.productBrand,
    this.color,
    this.size,
    this.productStockDisabled,
    required this.productPublished,
    required this.productFeatured,
  });

  static List<Product> generateProducts() {
    return [
      Product(
        id: 'p1',
        productTitle: 'Headphones',
        productImage: 'assets/images/headphones.jpeg',
        productPrice: 18.99,
        productPublished: true,
        productFeatured: true,
      ),
      Product(
        id: 'p2',
        productTitle: 'Camera',
        productImage: 'assets/images/camera.jpeg',
        productPrice: 18.99,
        productPublished: true,
        productFeatured: true,
      ),
      Product(
        id: 'p3',
        productTitle: 'Chair',
        productImage: 'assets/images/product3.jpg',
        productPrice: 18.99,
        productPublished: true,
        productFeatured: true,
      ),
      Product(
        id: 'p4',
        productTitle: 'Monster Headphones',
        productImage: 'assets/images/headphones2.jpeg',
        productPrice: 18.99,
        productPublished: true,
        productFeatured: true,
      ),
      Product(
        id: 'p5',
        productTitle: 'Wallpaper',
        productImage: 'assets/images/Wallpaper.jpeg',
        productPrice: 18.99,
        productPublished: true,
        productFeatured: true,
      ),
      Product(
        id: 'p6',
        productTitle: 'Watch',
        productImage: 'assets/images/watch.jpeg',
        productPrice: 18.99,
        productPublished: true,
        productFeatured: true,
      ),
    ];
  }
}
