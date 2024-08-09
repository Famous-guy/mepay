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

  Map<String, dynamic> offers = {
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
      // backgroundColor: ColorsThemeConfig.white,
      body: Column(
        children: [
          TabarWidget(),
          Expanded(
            child: ListView(
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
                // Container(
                //   padding: EdgeInsets.only(
                //     left: 100.0,
                //     right: 100.0,
                //     top: 150.0,
                //     bottom: 48,
                //   ),
                //   decoration: BoxDecoration(
                //     color: ColorsThemeConfig.dsb100,
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           SvgPicture.string(
                //             SvgAssetsConfig.mepay,
                //             height: 49,
                //             width: 140,
                //           ),
                //           24.v,
                //           Text(
                //             'Banking made easier!',
                //             style: FontstyleThemeConfig.label4,
                //           ),
                //           24.v,
                //           Row(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: List.generate(
                //               2,
                //               (index) {
                //                 return Padding(
                //                   padding: EdgeInsets.only(
                //                     right: index == 0 ? 16.0 : 0,
                //                   ),
                //                   child: CustomButton(
                //                     showImage: true,
                //                     padding: EdgeInsets.symmetric(
                //                       vertical: 14.95,
                //                       horizontal: 15.5,
                //                     ),
                //                     image: index == 0
                //                         ? SvgAssetsConfig.google
                //                         : SvgAssetsConfig.apple,
                //                     showOnlyOutline: false,
                //                     onTap: () {},
                //                     label: index == 0
                //                         ? 'Google Play'
                //                         : 'Apple Store',
                //                     bgColor: ColorsThemeConfig.dsb900,
                //                     textStyle: FontstyleThemeConfig.labelwhite,
                //                     borderColor: Colors.transparent,
                //                   ),
                //                 );
                //               },
                //             ),
                //           ),
                //           24.v,
                //           Row(
                //             children: List.generate(
                //               socials.length,
                //               (index) {
                //                 final social = socials[index];
                //                 return Padding(
                //                   padding: EdgeInsets.only(
                //                     right:
                //                         index != socials.length - 1 ? 32.0 : 0,
                //                   ),
                //                   child: SvgPicture.string(
                //                     social,
                //                   ),
                //                 );
                //               },
                //             ),
                //           ),
                //           50.v,
                //           Wrap(
                //             crossAxisAlignment: WrapCrossAlignment.center,
                //             children: [
                //               Text(
                //                 'Copyright @ 2024',
                //                 style: FontstyleThemeConfig.label4,
                //               ),
                //               Padding(
                //                 padding: const EdgeInsets.symmetric(
                //                   horizontal: 24.0,
                //                 ),
                //                 child: Text.rich(
                //                   TextSpan(
                //                     children: [
                //                       TextSpan(
                //                           text: 'ME',
                //                           style:
                //                               FontstyleThemeConfig.titleBlack5),
                //                       TextSpan(
                //                           text: 'PAY',
                //                           style:
                //                               FontstyleThemeConfig.titleBlue5),
                //                     ],
                //                   ),
                //                 ),
                //               ),

                //               // Center(
                //               //   child: SvgPicture.string(
                //               //     SvgAssetsConfig.mepay,
                //               //     height: 25,
                //               //     width: 55,
                //               //   ),
                //               // ),
                //               Text(
                //                 'All rights reserved.',
                //                 style: FontstyleThemeConfig.label4,
                //               ),
                //             ],
                //           ),
                //         ],
                //       ),
                //       Row(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: List.generate(3, (inde) {
                //           return Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: List.generate(
                //                 inde == 0
                //                     ? features.length
                //                     : inde == 1
                //                         ? accounts.length
                //                         : aboutUs.length, (index) {
                //               final all = inde == 0
                //                   ? features[index]
                //                   : inde == 1
                //                       ? accounts[index]
                //                       : aboutUs[index];
                //               return Padding(
                //                 padding: EdgeInsets.only(
                //                   right: index == 0
                //                       ? 20.0
                //                       : index != features.length - 1
                //                           ? 16.0
                //                           : 0,
                //                 ),
                //                 child: Text(
                //                   all,
                //                   style: index == 0
                //                       ? FontstyleThemeConfig.label9
                //                       : FontstyleThemeConfig.label,
                //                 ),
                //               );
                //             }),
                //           );
                //         }),
                //       )
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

