enum ChatMessageType { text, audio, image, video }
enum MessageStatus { notSent, notView, viewed }

class ChatMessage {
  ChatMessage(
      {required this.name,
      required this.lastMessage,
      required this.image,
      required this.time,
      this.isActive = false});

  final String name;
  final String lastMessage;
  final String time;
  final String image;
  // final ChatMessageType messageType;
  // final MessageStatus messageStatus;
  final bool isActive;
}

// test
List testChatMessage = [
  ChatMessage(
    name: 'Ilya Danilov',
    lastMessage: 'Дароу',
    image: 'assets/images/ico_mask.png',
    time: '5м',
    isActive: true,
  ),
  ChatMessage(
      name: 'Beren Barak',
      lastMessage: 'Дай в долг',
      image: 'assets/images/catmem.jpg',
      time: '1м'),
  ChatMessage(
    name: 'Astlan ASssas',
    lastMessage: 'какаое то сообщение',
    image: 'assets/images/ico_mask.png',
    time: '4м',
  ),
  ChatMessage(
      name: 'Bruhih Bruh',
      lastMessage: 'cейчас бы успеть',
      image: 'assets/images/catmem.jpg',
      time: '14ч'),
  ChatMessage(
    name: 'Brere Danilov',
    lastMessage: 'Hi',
    image: 'assets/images/ico_mask.png',
    time: '15м',
    isActive: true,
  ),
  ChatMessage(
      name: 'Beren Obama',
      lastMessage: 'Дsciis ggf',
      image: 'assets/images/catmem.jpg',
      time: '11м'),
  ChatMessage(
    name: 'fee f ASssas',
    lastMessage: 'какаое то сообщение',
    image: 'assets/images/ico_mask.png',
    time: '41м',
  ),
  ChatMessage(
      name: 'BCruhih CBruh',
      lastMessage: 'cейчас бы успеть',
      image: 'assets/images/catmem.jpg',
      time: '11ч'),
];
// List testChatMessage = [
//   ChatMessage(
//     text: 'ДАроу',
//     messageType: ChatMessageType.text,
//     messageStatus: MessageStatus.viewed,
//     isSender: true,
//   ),
//   ChatMessage(
//     text: 'Дай в долг',
//     messageType: ChatMessageType.text,
//     messageStatus: MessageStatus.notView,
//     isSender: false,
//   ),
//   ChatMessage(
//     text: '',
//     messageType: ChatMessageType.audio,
//     messageStatus: MessageStatus.viewed,
//     isSender: false,
//   ),
//   ChatMessage(
//     text: '',
//     messageType: ChatMessageType.video,
//     messageStatus: MessageStatus.notSent,
//     isSender: true,
//   ),
// ];
