import 'package:cv_website/src/models/date_range.dart';
import 'package:cv_website/src/models/media.dart';
import 'package:cv_website/src/models/skill.dart';
import 'package:media_source/media_source.dart';

class Experience {
  final String title;
  final String companyName;
  final MediaSource? companyLogo;
  final String location;
  final String employmentType; // Full-time, Contract, etc.
  final DateRange dateRange;
  final String description;
  final List<Media> media;
  final List<Skill> skills; // Related Skills

  Experience({
    required this.title,
    required this.companyName,
    this.companyLogo,
    this.location = '',
    this.employmentType = '',
    required this.dateRange,
    required this.description,
    this.media = const [],
    this.skills = const [],
  }) {
    skills.forEach((skill) {
      skill.addExperience(this);
    });
  }
}
