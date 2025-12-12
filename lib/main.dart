import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const CVWebsite());
}

class CVWebsite extends StatelessWidget {
  const CVWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Professional CV',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.robotoTextTheme(),
        useMaterial3: true,
      ),
      home: const CVHomePage(),
    );
  }
}

class CVHomePage extends StatelessWidget {
  const CVHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(context),
            _buildSummarySection(context),
            _buildSkillsSection(context),
            _buildExperienceSection(context),
            _buildProjectsSection(context),
            _buildContactsSection(context),
            _buildFooter(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade800, Colors.blue.shade600],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                size: 80,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Your Name',
              style: GoogleFonts.roboto(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Professional Title',
              style: GoogleFonts.roboto(
                fontSize: 24,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummarySection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Summary',
              style: GoogleFonts.roboto(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade800,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Passionate and results-driven professional with extensive experience in software development. '
              'Skilled in creating innovative solutions and delivering high-quality products. '
              'Strong background in modern technologies and best practices.',
              style: GoogleFonts.roboto(
                fontSize: 18,
                height: 1.6,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillsSection(BuildContext context) {
    final skills = [
      {'category': 'Programming Languages', 'items': ['Dart', 'JavaScript', 'Python', 'Java']},
      {'category': 'Frameworks & Tools', 'items': ['Flutter', 'React', 'Node.js', 'Git']},
      {'category': 'Soft Skills', 'items': ['Team Leadership', 'Problem Solving', 'Communication', 'Agile']},
    ];

    return Container(
      padding: const EdgeInsets.all(40),
      color: Colors.white,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Skills',
                style: GoogleFonts.roboto(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade800,
                ),
              ),
              const SizedBox(height: 30),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: skills.map((skillGroup) {
                  return Container(
                    width: MediaQuery.of(context).size.width > 800 ? 350 : double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.blue.shade200),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          skillGroup['category'] as String,
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade800,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: (skillGroup['items'] as List<String>).map((skill) {
                            return Chip(
                              label: Text(skill),
                              backgroundColor: Colors.blue.shade100,
                              labelStyle: GoogleFonts.roboto(
                                color: Colors.blue.shade900,
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExperienceSection(BuildContext context) {
    final experiences = [
      {
        'title': 'Senior Software Engineer',
        'company': 'Tech Company Inc.',
        'period': '2020 - Present',
        'description': 'Led development of multiple high-impact projects using modern technologies. '
            'Mentored junior developers and established best practices for the team.',
      },
      {
        'title': 'Software Developer',
        'company': 'Innovation Labs',
        'period': '2018 - 2020',
        'description': 'Developed and maintained web and mobile applications. '
            'Collaborated with cross-functional teams to deliver quality software solutions.',
      },
      {
        'title': 'Junior Developer',
        'company': 'StartUp Co.',
        'period': '2016 - 2018',
        'description': 'Built responsive web applications and contributed to various projects. '
            'Gained experience in full-stack development and agile methodologies.',
      },
    ];

    return Container(
      padding: const EdgeInsets.all(40),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Work Experience',
                style: GoogleFonts.roboto(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade800,
                ),
              ),
              const SizedBox(height: 30),
              ...experiences.map((exp) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              exp['title'] as String,
                              style: GoogleFonts.roboto(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade800,
                              ),
                            ),
                          ),
                          Text(
                            exp['period'] as String,
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        exp['company'] as String,
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        exp['description'] as String,
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          height: 1.5,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProjectsSection(BuildContext context) {
    final projects = [
      {
        'name': 'E-Commerce Platform',
        'description': 'A full-featured e-commerce platform with payment integration, '
            'inventory management, and user authentication.',
        'technologies': ['Flutter', 'Firebase', 'Stripe'],
      },
      {
        'name': 'Task Management App',
        'description': 'Collaborative task management application with real-time updates '
            'and team collaboration features.',
        'technologies': ['React', 'Node.js', 'MongoDB'],
      },
      {
        'name': 'Analytics Dashboard',
        'description': 'Data visualization dashboard for business intelligence with '
            'interactive charts and reporting capabilities.',
        'technologies': ['Python', 'Django', 'D3.js'],
      },
    ];

    return Container(
      padding: const EdgeInsets.all(40),
      color: Colors.white,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Projects',
                style: GoogleFonts.roboto(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade800,
                ),
              ),
              const SizedBox(height: 30),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: projects.map((project) {
                  return Container(
                    width: MediaQuery.of(context).size.width > 800 ? 350 : double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.folder_open,
                              color: Colors.blue.shade600,
                              size: 28,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                project['name'] as String,
                                style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue.shade800,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          project['description'] as String,
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            height: 1.5,
                            color: Colors.grey[700],
                          ),
                        ),
                        const SizedBox(height: 16),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: (project['technologies'] as List<String>).map((tech) {
                            return Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color: Colors.blue.shade100,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                tech,
                                style: GoogleFonts.roboto(
                                  fontSize: 13,
                                  color: Colors.blue.shade900,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactsSection(BuildContext context) {
    final contacts = [
      {
        'icon': Icons.email,
        'label': 'Email',
        'value': 'your.email@example.com',
        'url': 'mailto:your.email@example.com',
      },
      {
        'icon': Icons.phone,
        'label': 'Phone',
        'value': '+1 (123) 456-7890',
        'url': 'tel:+11234567890',
      },
      {
        'icon': Icons.location_on,
        'label': 'Location',
        'value': 'City, Country',
        'url': null,
      },
      {
        'icon': Icons.link,
        'label': 'LinkedIn',
        'value': 'linkedin.com/in/yourprofile',
        'url': 'https://linkedin.com/in/yourprofile',
      },
      {
        'icon': Icons.code,
        'label': 'GitHub',
        'value': 'github.com/yourusername',
        'url': 'https://github.com/yourusername',
      },
    ];

    return Container(
      padding: const EdgeInsets.all(40),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact',
                style: GoogleFonts.roboto(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade800,
                ),
              ),
              const SizedBox(height: 30),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: contacts.map((contact) {
                  return InkWell(
                    onTap: contact['url'] != null
                        ? () => _launchURL(contact['url'] as String)
                        : null,
                    child: Container(
                      width: MediaQuery.of(context).size.width > 800 ? 350 : double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Icon(
                            contact['icon'] as IconData,
                            color: Colors.blue.shade600,
                            size: 32,
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  contact['label'] as String,
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  contact['value'] as String,
                                  style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue.shade800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (contact['url'] != null)
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.blue.shade400,
                              size: 20,
                            ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      color: Colors.grey[800],
      child: Center(
        child: Text(
          '© ${DateTime.now().year} Your Name. All rights reserved.',
          style: GoogleFonts.roboto(
            fontSize: 14,
            color: Colors.white70,
          ),
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      debugPrint('Could not launch $url');
    }
  }
}
