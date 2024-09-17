enum TechStack { android, iOS, restAPI, firebase }

class WorkModel {
  static String get title => "Our Success Stories";
  static String get description => "Explore our recent client success stories and \nwitness our full 360 transformations come to life";
  static List<Map<String, dynamic>> get workList => [
        {
          'title': 'Pran Spandan',
          'subTitle': 'Android, iOS, RestAPI & Firebase',
          'techStack': [
            TechStack.android.name,
            TechStack.iOS.name,
            TechStack.restAPI.name,
            TechStack.firebase.name,
          ],
          'description':
              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.',
          'thumbImage': 'https://themejunction.net/html/gerold/demo/assets/img/portfolio/2.jpg',
          'image': 'https://themejunction.net/html/gerold/demo/assets/img/portfolio/2.jpg',
          'androidLink': 'https://play.google.com/store/apps/details?id=com.pranspandan&hl=en-IN',
          'iOSLink': 'https://play.google.com/store/apps/details?id=com.pranspandan&hl=en-IN',
          'websiteLink': '',
        },
      ];
}
