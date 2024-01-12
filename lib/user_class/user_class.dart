class User{
  final String name;
  final String image;
  final String message;
  final String time;

  User(
      this.image,
      this.name,
      this.message,
      this.time,
      );
}
///<<<<<========Chats List=========>>>>>>>>>>>
List usersChats = [
  User('assets/images/img_image.png', 'Waqas Muhammad', 'what are you saying?','11;00 AM'),
  User('assets/images/img_image_haris.png', 'Haris', 'chakka kawayu', '12:22 PM'),
  // User('assets/images/img_image_waqar.png', 'Waqar Ahmad', 'program sa treka da?', '02:13 PM'),
  // User('assets/images/img_image_razaq.png', 'Abdur Razzaq', 'cheta ye?', '4;54 PM'),
  // User('assets/images/img_image_anas.png', 'Muhammad Anas', 'What do you do?', '01:22 PM'),
  // User('assets/images/img_image_hasnain.png', 'Muhammad Hasnain', 'What are you doing?', '07:02'),
];

///<<<<<========Status List=========>>>>>>>>>>>
List usersStatus = [
  User('assets/images/img_image.png', 'Waqas Muhammad', '30 mins ago',''),
  User('assets/images/img_image.png', 'Haris', 'chakka kawayu',''),
  User('assets/images/img_image.png', 'Waqar Ahmad', 'program sa treka da?',''),
  User('assets/images/img_image.png', 'Abdur Razzaq', 'cheta ye?',''),
  User('assets/images/img_image.png', 'Muhammad Anas', 'What do you do?',''),
  User('assets/images/img_image.png', 'Muhammad Hasnain', 'What are you doing??',''),
];