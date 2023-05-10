import 'package:chat_app/models/users_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final String mark;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.mark,
  });
}

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: michael,
    time: 'Yesterday',
    text: 'You: Thanks',
    mark: "",
  ),
  Message(
    sender: darrenAndLan,
    time: '13:24',
    text: 'Darren: Perhaps if their was some...',
    mark: 'Challenge',
  ),
  Message(
    sender: currentUser,
    time: 'Mon',
    text: 'Alexander: Based on what you\'ve told...',
    mark: 'Help Req.',
  ),
  Message(
    sender: stephanie,
    time: '14:48',
    text: 'You: What time do you think you\'ll be...',
    mark: '',
  ),
  Message(
    sender: julie,
    time: '14:48',
    text: 'You: Thanks Julie',
    mark: 'Engagement Partner',
  ),
  Message(
    sender: dillan,
    time: '2d ago',
    text: 'You: Are you coming?',
    mark: '',
  ),
  Message(
    sender: dillan,
    time: '2d ago',
    text: 'You: Are you coming?',
    mark: '',
  ),
];
