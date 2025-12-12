# CV Website

A professional, fully responsive CV website built with Flutter Web.

## Features

- **Fully Responsive Design**: Optimized for mobile (<600px), tablet (600px-1024px), and desktop (>1024px) devices
- **Summary**: Professional overview and introduction
- **Skills**: Technical and soft skills organized by category
- **Work Experience**: Detailed employment history with descriptions
- **Projects**: Portfolio of completed projects with technologies used
- **Contact**: Multiple contact methods with clickable links
- **Adaptive Layouts**: Content automatically adjusts to different screen sizes
- **Touch-Friendly**: All interactive elements optimized for mobile and tablet devices

## Getting Started

### Prerequisites

- Flutter SDK (3.5.0 or higher)
- A web browser

### Installation

1. Clone the repository
2. Install dependencies:
   ```bash
   flutter pub get
   ```

### Running the Application

To run the website in development mode:

```bash
flutter run -d chrome
```

To test responsive design, resize your browser window or use browser developer tools to simulate different device sizes.

### Building for Production

To build the website for deployment:

```bash
flutter build web
```

The built files will be in the `build/web` directory.

## Responsive Design

The website implements three responsive breakpoints:

- **Mobile** (<600px): Single column layout, optimized typography and spacing
- **Tablet** (600px-1024px): Two-column layout where appropriate, medium-sized elements
- **Desktop** (>1024px): Multi-column layout, full-sized elements

### Responsive Features

- Adaptive typography that scales based on screen size
- Flexible layouts using `MediaQuery` and responsive breakpoints
- Touch-friendly button and link sizes (minimum 48x48 logical pixels)
- No horizontal scrolling on any device size
- Optimized padding and spacing for different screen sizes
- Cards and sections that adapt to available screen width

## Customization

Edit the `lib/main.dart` file to customize:
- Personal information (name, title)
- Summary text
- Skills and categories
- Work experience entries
- Projects
- Contact information

## Technologies Used

- Flutter Web (3.5.0+)
- Google Fonts
- URL Launcher for clickable links
- Material Design 3
- Responsive design using MediaQuery

## Browser Support

The website supports all modern browsers:
- Chrome/Edge (recommended)
- Firefox
- Safari

## License

This project is open source and available under the MIT License.