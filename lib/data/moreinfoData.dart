class MoreInfo {
  String? title;
  String? desc;

  MoreInfo({this.title, this.desc});

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getTitle() {
    return title!;
  }

  String getDesc() {
    return desc!;
  }
}

List<MoreInfo> getInfos() {
  List<MoreInfo> infos = [];
  MoreInfo infoModel = new MoreInfo();

  //1
  infoModel.setTitle("About");
  infoModel.setDesc(
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.");
  infos.add(infoModel);

  infoModel = new MoreInfo();

  //2
  infoModel.setTitle("Today's deal");
  infoModel.setDesc(
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. \nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.");
  infos.add(infoModel);

  infoModel = new MoreInfo();

  //3
  infoModel.setTitle("FAQ");
  infoModel.setDesc(
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.");
  infos.add(infoModel);

  infoModel = new MoreInfo();

  return infos;
}
