import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:flutter/material.dart';
import 'package:meetup/card_info.dart';
import 'card_bg.dart';

class MovieCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final DateTime start;
  final DateTime end;
  final String room;

  const MovieCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.start,
    required this.end,
    required this.room
  });

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: addToCalendar,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CardBg(imagePath: widget.imagePath,),
            CardInfo(start: widget.start, end: widget.end, room: widget.room)
          ],
        ),
      ),
    );
  }

  void addToCalendar() {

    Event event = Event(
      title: widget.title,
      description: widget.room,
      location: "Cinema Meet Up",
      startDate: widget.start,
      endDate: widget.end,
    );

    Add2Calendar.addEvent2Cal(event);
  }

}
