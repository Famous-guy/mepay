// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:mepay/src/src.dart';
// import '../../../config/config.dart';
// import '../../../core/core.dart';

// class Page1 extends StatefulWidget {
//   const Page1({super.key});

//   @override
//   State<Page1> createState() => _Page1State();
// }

// class _Page1State extends State<Page1> {
//   List<String> whatWeDo = [
//     'Transfer with ease',
//     'Track your bills',
//     'Budget your bills',
//   ];

//   List<String> features = [
//     'Features',
//     'Savings',
//     'Investment',
//     'Budget',
//     'Cards',
//     'Reminder',
//     'Calendar',
//   ];

//   List<String> accounts = [
//     'Account',
//     'Profile',
//     'Transfer',
//     'Bills Payment',
//     'Security',
//     'Sign out',
//   ];
//   List<String> aboutUs = [
//     'About Us',
//     'Company Info',
//     'Mission Values',
//     'FAQs',
//     'Contact Us',
//     'Privacy',
//     'Live chat',
//   ];
//   List<String> button = [
//     'Start Investing',
//     'Download app',
//   ];

//   List<String> image = [
//     'mobile_bank',
//     'atm',
//     'secure',
//   ];

//   Map<String, dynamic> brief = {
//     'Transfer':
//         'Quickly and securely send money to other accounts with various transfer options.',
//     'Budget':
//         'Track spending, set monthly budgets and visualize expenses for better financial management.',
//     'Pay Bills':
//         'Easily manage and pay bills with reminders and automatic payment options.',
//     'Loan':
//         'Access personal loan options, apply directly, and manage repayments within the app.',
//     'Investment':
//         'Explore and manage investment opportunities to grow your wealth and achieve financial goals.',
//     'Savings':
//         'Set savings goals, track progress and automate savings to build your financial future.',
//   };

//   Map<String, dynamic> offers = {
//     'Convenience':
//         'Access and manage bank accounts anytime, anywhere via the internet.',
//     'Functionality':
//         'Perform transactions, pay bills and apply for financial products online.',
//     'Security':
//         'Protected by encryption, two-factor authentication and fraud monitoring systems.',
//   };

//   List<String> partners = [
//     SvgAssetsConfig.master_card,
//     SvgAssetsConfig.visa,
//     SvgAssetsConfig.access_bank,
//     SvgAssetsConfig.first_bank,
//     SvgAssetsConfig.gtb,
//   ];

//   List<String> socials = [
//     SvgAssetsConfig.facebook,
//     SvgAssetsConfig.x,
//     SvgAssetsConfig.instagram,
//     SvgAssetsConfig.tiktok,
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: ColorsThemeConfig.white,
//       body: Column(
//         children: [
//           TabarWidget(),
//           Expanded(
//             child: ListView(
//               children: [
//                 52.v,
//                 HeroSection(
//                   whatWeDo: whatWeDo,
//                   button: button,
//                   partners: partners,
//                 ),
//                 106.7.v,
//                 SectionTwo(),
//                 148.v,
//                 SectionThree(
//                   brief: brief,
//                 ),
//                 194.v,
//                 SectionFour(
//                   offers: offers,
//                   image: image,
//                 ),
//                 SectionFive(),
//                 SectionSix(),
//                 Footer(
//                   socials: socials,
//                   features: features,
//                   accounts: accounts,
//                   aboutUs: aboutUs,
//                 ),

//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mepay/src/src.dart';
import '../../../config/config.dart';
import '../../../core/core.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final GlobalKey _sectionFourKey = GlobalKey();
  ScrollController _scrollController = ScrollController();

  List<String> whatWeDo = [
    'Transfer with ease',
    'Track your bills',
    'Budget your bills',
  ];

  List<String> features = [
    'Features',
    'Savings',
    'Investment',
    'Budget',
    'Cards',
    'Reminder',
    'Calendar',
  ];

  List<String> accounts = [
    'Account',
    'Profile',
    'Transfer',
    'Bills Payment',
    'Security',
    'Sign out',
  ];

  List<String> aboutUs = [
    'About Us',
    'Company Info',
    'Mission Values',
    'FAQs',
    'Contact Us',
    'Privacy',
    'Live chat',
  ];

  List<String> button = [
    'Start Investing',
    'Download app',
  ];

  List<String> image = [
    'mobile_bank',
    'atm',
    'secure',
  ];

  Map<String, dynamic> brief = {
    'Transfer':
        'Quickly and securely send money to other accounts with various transfer options.',
    'Budget':
        'Track spending, set monthly budgets and visualize expenses for better financial management.',
    'Pay Bills':
        'Easily manage and pay bills with reminders and automatic payment options.',
    'Loan':
        'Access personal loan options, apply directly, and manage repayments within the app.',
    'Investment':
        'Explore and manage investment opportunities to grow your wealth and achieve financial goals.',
    'Savings':
        'Set savings goals, track progress and automate savings to build your financial future.',
  };

  Map<String, String> offers = {
    'Convenience':
        'Access and manage bank accounts anytime, anywhere via the internet.',
    'Functionality':
        'Perform transactions, pay bills and apply for financial products online.',
    'Security':
        'Protected by encryption, two-factor authentication and fraud monitoring systems.',
  };

  List<String> partners = [
    SvgAssetsConfig.master_card,
    SvgAssetsConfig.visa,
    SvgAssetsConfig.access_bank,
    SvgAssetsConfig.first_bank,
    SvgAssetsConfig.gtb,
  ];

  List<String> socials = [
    SvgAssetsConfig.facebook,
    SvgAssetsConfig.x,
    SvgAssetsConfig.instagram,
    SvgAssetsConfig.tiktok,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabarWidget(),
          Expanded(
            child: ListView(
              controller: _scrollController,
              children: [
                52.v,
                HeroSection(
                  whatWeDo: whatWeDo,
                  button: button,
                  partners: partners,
                ),
                106.7.v,
                SectionTwo(),
                148.v,
                SectionThree(
                  brief: brief,
                ),
                194.v,
                SectionFour(
                  key: _sectionFourKey,
                  offers: offers,
                  image: image,
                ),
                SectionFive(),
                SectionSix(),
                Footer(
                  socials: socials,
                  features: features,
                  accounts: accounts,
                  aboutUs: aboutUs,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
