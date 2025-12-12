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

// Responsive breakpoints
class Breakpoints {
  static const double mobile = 600;
  static const double tablet = 1024;
  
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mobile;
  
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= mobile &&
      MediaQuery.of(context).size.width < tablet;
  
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= tablet;
  
  /// Calculate card width based on screen size and padding
  /// Returns full width on mobile, half width on tablet, and fixed 350px on desktop
  static double getCardWidth(BuildContext context, double padding, double spacing) {
    final screenWidth = MediaQuery.of(context).size.width;
    
    if (isMobile(context)) {
      return screenWidth - (padding * 2);
    } else if (isTablet(context)) {
      // Calculate width for 2 columns
      final availableWidth = screenWidth - (padding * 2) - spacing;
      final halfWidth = availableWidth / 2;
      // Use full width if half width would be too small
      return halfWidth < 280 ? availableWidth : halfWidth;
    } else {
      return 350.0;
    }
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
    final isMobile = Breakpoints.isMobile(context);
    final isTablet = Breakpoints.isTablet(context);
    
    // Responsive values
    final avatarRadius = isMobile ? 40.0 : (isTablet ? 50.0 : 60.0);
    final iconSize = isMobile ? 60.0 : (isTablet ? 70.0 : 80.0);
    final nameSize = isMobile ? 32.0 : (isTablet ? 40.0 : 48.0);
    final titleSize = isMobile ? 18.0 : (isTablet ? 20.0 : 24.0);
    final verticalPadding = isMobile ? 40.0 : (isTablet ? 50.0 : 60.0);
    
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding, 
        horizontal: isMobile ? 16 : 20,
      ),
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
            CircleAvatar(
              radius: avatarRadius,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                size: iconSize,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: isMobile ? 16 : 20),
            Text(
              'Your Name',
              style: GoogleFonts.roboto(
                fontSize: nameSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: isMobile ? 8 : 10),
            Text(
              'Professional Title',
              style: GoogleFonts.roboto(
                fontSize: titleSize,
                color: Colors.white70,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummarySection(BuildContext context) {
    final isMobile = Breakpoints.isMobile(context);
    final isTablet = Breakpoints.isTablet(context);
    
    // Responsive values
    final padding = isMobile ? 20.0 : (isTablet ? 30.0 : 40.0);
    final titleSize = isMobile ? 24.0 : (isTablet ? 28.0 : 32.0);
    final textSize = isMobile ? 16.0 : 18.0;
    
    return Container(
      padding: EdgeInsets.all(padding),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Summary',
                style: GoogleFonts.roboto(
                  fontSize: titleSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade800,
                ),
              ),
              SizedBox(height: isMobile ? 12 : 20),
              Text(
                'Passionate and results-driven professional with extensive experience in software development. '
                'Skilled in creating innovative solutions and delivering high-quality products. '
                'Strong background in modern technologies and best practices.',
                style: GoogleFonts.roboto(
                  fontSize: textSize,
                  height: 1.6,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkillsSection(BuildContext context) {
    final isMobile = Breakpoints.isMobile(context);
    final isTablet = Breakpoints.isTablet(context);
    
    final skills = [
      {'category': 'Programming Languages', 'items': ['Dart', 'JavaScript', 'Python', 'Java']},
      {'category': 'Frameworks & Tools', 'items': ['Flutter', 'React', 'Node.js', 'Git']},
      {'category': 'Soft Skills', 'items': ['Team Leadership', 'Problem Solving', 'Communication', 'Agile']},
    ];

    // Responsive values
    final padding = isMobile ? 20.0 : (isTablet ? 30.0 : 40.0);
    final titleSize = isMobile ? 24.0 : (isTablet ? 28.0 : 32.0);
    final spacing = isMobile ? 12.0 : 20.0;

    return Container(
      padding: EdgeInsets.all(padding),
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
                  fontSize: titleSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade800,
                ),
              ),
              SizedBox(height: isMobile ? 20 : 30),
              Wrap(
                spacing: spacing,
                runSpacing: spacing,
                children: skills.map((skillGroup) {
                  return Container(
                    width: Breakpoints.getCardWidth(context, padding, spacing),
                    padding: EdgeInsets.all(isMobile ? 16 : 20),
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
                            fontSize: isMobile ? 18.0 : 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade800,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: isMobile ? 12 : 15),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: (skillGroup['items'] as List<String>).map((skill) {
                            return Chip(
                              label: Text(skill),
                              backgroundColor: Colors.blue.shade100,
                              labelStyle: GoogleFonts.roboto(
                                color: Colors.blue.shade900,
                                fontSize: isMobile ? 13.0 : 14.0,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: isMobile ? 8 : 12,
                                vertical: isMobile ? 4 : 8,
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
    final isMobile = Breakpoints.isMobile(context);
    final isTablet = Breakpoints.isTablet(context);
    
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

    // Responsive values
    final padding = isMobile ? 20.0 : (isTablet ? 30.0 : 40.0);
    final titleSize = isMobile ? 24.0 : (isTablet ? 28.0 : 32.0);
    final cardPadding = isMobile ? 16.0 : 24.0;
    final cardMargin = isMobile ? 16.0 : 30.0;

    return Container(
      padding: EdgeInsets.all(padding),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Work Experience',
                style: GoogleFonts.roboto(
                  fontSize: titleSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade800,
                ),
              ),
              SizedBox(height: isMobile ? 20 : 30),
              ...experiences.map((exp) {
                return Container(
                  margin: EdgeInsets.only(bottom: cardMargin),
                  padding: EdgeInsets.all(cardPadding),
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
                      if (isMobile) ...[
                        // Stack layout for mobile
                        Text(
                          exp['title'] as String,
                          style: GoogleFonts.roboto(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade800,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          exp['period'] as String,
                          style: GoogleFonts.roboto(
                            fontSize: 14.0,
                            color: Colors.grey[600],
                          ),
                        ),
                      ] else ...[
                        // Row layout for tablet/desktop
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                exp['title'] as String,
                                style: GoogleFonts.roboto(
                                  fontSize: isTablet ? 20.0 : 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue.shade800,
                                ),
                              ),
                            ),
                            Text(
                              exp['period'] as String,
                              style: GoogleFonts.roboto(
                                fontSize: 16.0,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ],
                      SizedBox(height: isMobile ? 6 : 8),
                      Text(
                        exp['company'] as String,
                        style: GoogleFonts.roboto(
                          fontSize: isMobile ? 16.0 : 18.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(height: isMobile ? 10 : 12),
                      Text(
                        exp['description'] as String,
                        style: GoogleFonts.roboto(
                          fontSize: isMobile ? 14.0 : 16.0,
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
    final isMobile = Breakpoints.isMobile(context);
    final isTablet = Breakpoints.isTablet(context);
    
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

    // Responsive values
    final padding = isMobile ? 20.0 : (isTablet ? 30.0 : 40.0);
    final titleSize = isMobile ? 24.0 : (isTablet ? 28.0 : 32.0);
    final spacing = isMobile ? 12.0 : 20.0;

    return Container(
      padding: EdgeInsets.all(padding),
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
                  fontSize: titleSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade800,
                ),
              ),
              SizedBox(height: isMobile ? 20 : 30),
              Wrap(
                spacing: spacing,
                runSpacing: spacing,
                children: projects.map((project) {
                  return Container(
                    width: Breakpoints.getCardWidth(context, padding, spacing),
                    padding: EdgeInsets.all(isMobile ? 16.0 : 24.0),
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
                              size: isMobile ? 24.0 : 28.0,
                            ),
                            SizedBox(width: isMobile ? 8 : 12),
                            Expanded(
                              child: Text(
                                project['name'] as String,
                                style: GoogleFonts.roboto(
                                  fontSize: isMobile ? 18.0 : 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue.shade800,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: isMobile ? 12 : 16),
                        Text(
                          project['description'] as String,
                          style: GoogleFonts.roboto(
                            fontSize: isMobile ? 14.0 : 15.0,
                            height: 1.5,
                            color: Colors.grey[700],
                          ),
                        ),
                        SizedBox(height: isMobile ? 12 : 16),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: (project['technologies'] as List<String>).map((tech) {
                            return Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: isMobile ? 10 : 12,
                                vertical: isMobile ? 4 : 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.blue.shade100,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                tech,
                                style: GoogleFonts.roboto(
                                  fontSize: isMobile ? 12.0 : 13.0,
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
    final isMobile = Breakpoints.isMobile(context);
    final isTablet = Breakpoints.isTablet(context);
    
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

    // Responsive values
    final padding = isMobile ? 20.0 : (isTablet ? 30.0 : 40.0);
    final titleSize = isMobile ? 24.0 : (isTablet ? 28.0 : 32.0);
    final spacing = isMobile ? 12.0 : 20.0;

    return Container(
      padding: EdgeInsets.all(padding),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact',
                style: GoogleFonts.roboto(
                  fontSize: titleSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade800,
                ),
              ),
              SizedBox(height: isMobile ? 20 : 30),
              Wrap(
                spacing: spacing,
                runSpacing: spacing,
                children: contacts.map((contact) {
                  return InkWell(
                    onTap: contact['url'] != null
                        ? () => _launchURL(contact['url'] as String)
                        : null,
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: Breakpoints.getCardWidth(context, padding, spacing),
                      padding: EdgeInsets.all(isMobile ? 16.0 : 20.0),
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
                            size: isMobile ? 28.0 : 32.0,
                          ),
                          SizedBox(width: isMobile ? 12 : 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  contact['label'] as String,
                                  style: GoogleFonts.roboto(
                                    fontSize: isMobile ? 13.0 : 14.0,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                SizedBox(height: isMobile ? 2 : 4),
                                Text(
                                  contact['value'] as String,
                                  style: GoogleFonts.roboto(
                                    fontSize: isMobile ? 14.0 : 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue.shade800,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          if (contact['url'] != null)
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.blue.shade400,
                              size: isMobile ? 18.0 : 20.0,
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
    final isMobile = Breakpoints.isMobile(context);
    
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: isMobile ? 20.0 : 30.0,
        horizontal: isMobile ? 16.0 : 20.0,
      ),
      color: Colors.grey[800],
      child: Center(
        child: Text(
          '© ${DateTime.now().year} Your Name. All rights reserved.',
          style: GoogleFonts.roboto(
            fontSize: isMobile ? 12.0 : 14.0,
            color: Colors.white70,
          ),
          textAlign: TextAlign.center,
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
