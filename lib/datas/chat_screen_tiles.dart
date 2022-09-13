class Chats {
  final String name;
  final String avatar;
  final String time;
  final String lastmessage;

  Chats({
    required this.name,
    required this.avatar,
    required this.time,
    required this.lastmessage,
  });
}

List<Chats> chatlists = [
  Chats(
      lastmessage: 'Sent a voice message.',
      name: "Bill Gates",
      avatar:
          'https://www.pngall.com/wp-content/uploads/7/Bill-Gates-PNG-Clipart.png',
      time: "Just now"),
  Chats(
      lastmessage: 'Sent a voice message.',
      name: "Elon Musk",
      avatar:
          'https://www.kindpng.com/picc/m/180-1801316_elon-musk-png-clipart-elon-musk-transparent-png.png',
      time: "Just now"),
  Chats(
      lastmessage: 'Sent a voice message.',
      name: "Flutter",
      avatar:
          'https://www.kindpng.com/picc/m/355-3557482_flutter-logo-png-transparent-png.png',
      time: "Today 10:00 AM"),
  Chats(
      lastmessage: 'Sent a voice message.',
      name: "Nikhil Kilivayil",
      avatar:
          'https://getmytym.com/creator-images/61a99bdf415cab415ebc162f.png',
      time: "Today 10:30 PM"),
  Chats(
      lastmessage: 'Sent a voice message.',
      name: "Cross Roads",
      avatar:
          'https://www.crossroadslaw.ca/assets/NewsImages/_resampled/FillWyI2MDAiLCI0MDAiXQ/Screen-Shot-2021-07-27-at-12.16.06-PM.png',
      time: "Today 12:30 AM"),
  Chats(
      lastmessage: 'Sent a voice message.',
      name: "Coding",
      avatar:
          'https://w7.pngwing.com/pngs/30/484/png-transparent-coffee-code-computer-icons-coding-infographic-text-hand-thumbnail.png',
      time: "Today 8:00 AM"),
  Chats(
      lastmessage: 'Sent a voice message.',
      name: "Hacker",
      avatar:
          'https://png.pngtree.com/png-clipart/20200701/original/pngtree-computer-hacker-png-image_5418075.jpg',
      time: "Today 11:30 PM"),
  Chats(
      lastmessage: 'Sent a voice message.',
      name: "Swiggy",
      avatar:
          'https://w7.pngwing.com/pngs/55/100/png-transparent-swiggy-hd-logo-thumbnail.png',
      time: "Today 9:30 PM"),
];
