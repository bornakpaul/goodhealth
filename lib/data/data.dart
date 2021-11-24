class SliderModel {
  String? imagePath;
  String? title;
  String? desc;

  SliderModel({this.imagePath, this.title, this.desc});

  void setImageAssetPath(String getImagePath) {
    imagePath = getImagePath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
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
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = [];
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setImageAssetPath("assets/freshfood.png");
  sliderModel.setTitle("Get Fresh Foods");
  sliderModel.setDesc(
      "Get Fresh foods from farm to your door step, at the click of a button.");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setImageAssetPath("assets/delivery.png");
  sliderModel.setTitle("Fast & Safe Delivery");
  sliderModel.setDesc(
      "Our executives will delivery your products as soon as they receive your order.");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setImageAssetPath("assets/cashless.png");
  sliderModel.setTitle("Cashless and Secure");
  sliderModel.setDesc(
      "You dont have worry about keeping the exact change, pay us with any UPI apps.");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}
