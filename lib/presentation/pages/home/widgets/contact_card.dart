import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kapil_portfolio/config/theme/app_css.dart';
import 'package:kapil_portfolio/config/theme/app_theme.dart';
import 'package:kapil_portfolio/core/extensions/spacing.dart';
import 'package:kapil_portfolio/core/utils/helper.dart';

class ContactCard extends StatelessWidget {
  ContactCard({super.key});

  var formKey = GlobalKey<FormState>();
  TextEditingController txtName = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtMessage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double windowWidth = MediaQuery.sizeOf(context).width;
    double contentWidth = windowWidth - (AppCss.kBodyPaddingHorizontal * 2);

    return Container(
      color: const Color(0xFFf6f3fc),
      width: windowWidth,
      padding: EdgeInsets.only(
        left: AppCss.kBodyPaddingHorizontal,
        right: AppCss.kBodyPaddingHorizontal,
        top: AppCss.kBodyPaddingTop,
        bottom: AppCss.kBodyPaddingBottom,
      ),
      child: Column(
        children: [
          Text(
            "Let’s work together!",
            style: AppCss.h2.copyWith(
              color: CustomColors.c1,
            ),
          ),
          const VSpace(16),
          Text(
            "We put your ideas and thus your wishes in the form of a unique web project "
            "\nthat inspires you and you customers.",
            style: AppCss.bodyL,
            textAlign: TextAlign.center,
          ),
          const VSpace(64),
          Row(
            children: [
              //Form
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: txtName,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFf6f3fc),
                            hintText: "Full Name",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: CustomColors.c1),
                            ),
                          ),
                          validator: (val) {
                            if (val == null || val.trim().isEmpty) {
                              return "Please enter full name";
                            } else {
                              return null;
                            }
                          },
                        ),
                        const VSpace(16),
                        TextFormField(
                          controller: txtMobile,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                          maxLength: 10,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFf6f3fc),
                            hintText: "Mobile Number",
                            counterText: "",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: CustomColors.c1),
                            ),
                          ),
                          validator: (val) {
                            if (val == null || val.trim().isEmpty) {
                              return "Please enter mobile number";
                            } else {
                              return null;
                            }
                          },
                        ),
                        const VSpace(16),
                        TextFormField(
                          controller: txtMessage,
                          keyboardType: TextInputType.multiline,
                          minLines: 5,
                          maxLines: 5,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFf6f3fc),
                            hintText: "Message",
                            counterText: "",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: CustomColors.c1),
                            ),
                          ),
                        ),
                        const VSpace(16),
                        FilledButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              String msg = "Person: ${txtName.text.trim()} \n"
                                  "Mobile: ${txtMobile.text.trim()} \n"
                                  "Message: ${txtMessage.text.trim()}";

                              final Uri baseUrl = Uri(
                                scheme: 'mailto',
                                path: 'singhkapil708@email.com',
                                query: 'subject=New Enquiry&body=$msg',
                              );

                              openUrl(baseUrl.toString());

                              txtName.clear();
                              txtMobile.clear();
                              txtMessage.clear();
                            }
                          },
                          style: FilledButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                          ),
                          child: Text(
                            "Send Message",
                            style: AppCss.body,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 64, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () => openUrl("tel: +919033608708"),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: CustomColors.c2,
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: const Icon(
                                Icons.call,
                                color: Colors.white,
                              ),
                            ),
                            const HSpace(16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Phone",
                                  style: AppCss.bodyL,
                                ),
                                const VSpace(4),
                                Text(
                                  "+91 90336 08708",
                                  style: AppCss.h6,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const VSpace(32),
                      InkWell(
                        onTap: () => openUrl("mailto: singhkapil708@gmail.com"),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: CustomColors.c2,
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: const Icon(
                                Icons.mail,
                                color: Colors.white,
                              ),
                            ),
                            const HSpace(16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Email",
                                  style: AppCss.bodyL,
                                ),
                                const VSpace(4),
                                Text(
                                  "singhkapil708@gmail.com",
                                  style: AppCss.h6,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const VSpace(32),
                      InkWell(
                        onTap: () => openUrl("https://maps.app.goo.gl/AHJiPckqy2TGtsyn9"),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: CustomColors.c2,
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: const Icon(
                                Icons.location_on_rounded,
                                color: Colors.white,
                              ),
                            ),
                            const HSpace(16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Address",
                                  style: AppCss.body,
                                ),
                                const VSpace(4),
                                Text(
                                  "417-A Square One Commercial, "
                                  "\nBhimrad-Althan Rd, Apcha Nagar, "
                                  "\nSurat, Gujarat 395007",
                                  style: AppCss.h6,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const VSpace(84),
        ],
      ),
    );
  }
}
