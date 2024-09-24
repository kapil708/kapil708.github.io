class AboutModel {
  static String get title => "⚡ About Me";
  static String get description => ""
      "👋 Hey there! I'm Kapil Singh, a tech wizard 🧙‍♂️ and Senior Flutter Developer with a knack for bringing ideas to life. "
      "With 9+ years in the IT world and 6+ years of Flutter magic 🦋, "
      "I've been on a mission to create apps that not only function but also delight!"
      "\n\n"
      "🚀 From the Care Industry to Driver Community, NGOs to Vending Machines, and even AI-driven solutions, "
      "I've had the pleasure of working on a diverse range of projects. "
      "My portfolio spans everything from Matrimony and Sports Academy apps to Coaching Institutes and local business solutions. "
      "Each project is a unique story of innovation, creativity, and making a real impact."
      "\n\n"
      "🌟 Outside of coding, I'm a die-hard MS Dhoni fan 🏏, love hitting sixes on the cricket field, and binge-watching the latest movies and web series 🎬."
      "\n\n"
      "Let’s connect and geek out about tech, cricket, or anything fun! I'm always up for exciting collaborations that push the boundaries of what's possible. 🚀";

  static List<Map<String, dynamic>> get records => [
        {
          'title': 'Years of \nExperience',
          'count': '09+',
          'color': 0XFF640D5F,
        },
        {
          'title': 'Project \nCompleted',
          'count': '15+',
          'color': 0XFF384B70,
        },
        {
          'title': 'Happy \nClients',
          'count': '10+',
          'color': 0XFF181C14,
        },
      ];

  static List<Map<String, dynamic>> get socialLinks => [
        {
          'title': 'LinkedIn',
          'image': 'https://cdn-icons-png.flaticon.com/128/3536/3536505.png',
          'link': 'https://www.linkedin.com/in/kapilrsingh',
        },
        {
          'title': 'Instagram',
          'image': 'https://cdn-icons-png.flaticon.com/128/2111/2111463.png',
          'link': 'https://www.instagram.com/insightsbykapil',
        },
        {
          'title': 'Twitter',
          'image': 'https://cdn-icons-png.flaticon.com/128/3256/3256013.png',
          'link': 'https://x.com/KRSINGH708',
        },
        {
          'title': 'Github',
          'image': 'https://cdn-icons-png.flaticon.com/128/25/25657.png',
          'link': 'https://github.com/kapil708',
        },
        {
          'title': 'Stackoverflow',
          'image': 'https://cdn-icons-png.flaticon.com/128/11023/11023656.png',
          'link': 'https://stackoverflow.com/users/5374771/kapil-singh',
        },
      ];
}
