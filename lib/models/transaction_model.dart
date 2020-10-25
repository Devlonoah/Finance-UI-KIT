class TransactionModel {
  String recieverName, profileImage, date;

  bool isCredit;

  double amountSent;

  TransactionModel({
    this.recieverName,
    this.profileImage,
    this.isCredit,
    this.date,
    this.amountSent,
  });
}
