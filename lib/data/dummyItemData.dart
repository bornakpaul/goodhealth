class ItemModel {
  String? imagePath;
  String? title;
  String? desc;
  String? quantity;
  String? price;

  ItemModel({this.imagePath, this.title, this.desc, this.quantity, this.price});

  void setImageAssetPath(String getImagePath) {
    imagePath = getImagePath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  void setQuantity(String getQuantity) {
    quantity = getQuantity;
  }

  void setPrice(String getPrice) {
    price = getPrice;
  }

  String getImageAssetPath() {
    return imagePath!;
  }

  String getTitle() {
    return title!;
  }

  String getDesc() {
    return desc!;
  }

  String getQuantity() {
    return quantity!;
  }

  String getPrice() {
    return price!;
  }
}

List<ItemModel> getItems() {
  List<ItemModel> items = [];
  ItemModel itemModel = new ItemModel();

  //1
  itemModel.setImageAssetPath("assets/freshfood.png");
  itemModel.setTitle("IDLY DOSA BATTER");
  itemModel.setDesc("IDLY DOSA BATTER");
  itemModel.setQuantity("1kg");
  itemModel.setPrice("50");
  items.add(itemModel);

  itemModel = new ItemModel();

  //2
  itemModel.setImageAssetPath("assets/delivery.png");
  itemModel.setTitle("BARNYARD MILLET");
  itemModel.setDesc("BARNYARD MILLET BATTER");
  itemModel.setQuantity("1kg");
  itemModel.setPrice("110");
  items.add(itemModel);

  itemModel = new ItemModel();

  //3
  itemModel.setImageAssetPath("assets/cashless.png");
  itemModel.setTitle("finalproduct Title");
  itemModel.setDesc("final product description");
  itemModel.setQuantity("5kg");
  itemModel.setPrice("400");
  items.add(itemModel);

  itemModel = new ItemModel();

  return items;
}
