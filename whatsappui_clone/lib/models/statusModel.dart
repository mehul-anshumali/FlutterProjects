class StatusModel {
  final String name;
  final String time;
  final String avatarUrl;

  StatusModel({this.name, this.time, this.avatarUrl});
}

List<StatusModel> statusList = [
  StatusModel(
    name: "My status",
    time: "Tap to add status update",
    avatarUrl: "assets/images/1.jpg",
  ),
];

List<StatusModel> statusList1 = [
  StatusModel(
    name: "Timo Stern",
    time: "Yesterday, 10:32 pm",
    avatarUrl: "assets/images/4.jpg",
  ),
];
