import 'package:chat_app/models/users_model.dart';

class Message {
  final int id;
  final User sender;
  final String time;
  final String text;
  final String? mark;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    this.mark,
    required this.id,
  });
}

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    id: 0,
    sender: michael,
    time: 'Yesterday',
    text: 'You: Thanks',
  ),
  Message(
    id: 1,
    sender: darrenAndLan,
    time: '13:24',
    text: 'Darren: Perhaps if their was some...',
    mark: 'Challenge',
  ),
  Message(
    id: 2,
    sender: currentUser,
    time: 'Mon',
    text: 'Alexander: Based on what you\'ve told...',
    mark: 'Help Req.',
  ),
  Message(
    id: 3,
    sender: stephanie,
    time: '14:48',
    text: 'You: What time do you think you\'ll be...',
  ),
  Message(
    id: 4,
    sender: julie,
    time: '14:48',
    text: 'You: Thanks Julie',
    mark: 'Engagement Partner',
  ),
  Message(
    id: 5,
    sender: dillan,
    time: '2d ago',
    text: 'You: Are you coming?',
  ),
  Message(
    id: 6,
    sender: julie,
    time: '14d ago',
    text: 'You: Hello!',
  ),
];
