import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:viithiisys_app/core/colors.dart';
import 'package:viithiisys_app/presentation/auth/first_screen.dart';
import 'package:viithiisys_app/presentation/auth/third_screen.dart';
import 'package:viithiisys_app/widgets/custom_hint_widget.dart';
import 'package:viithiisys_app/widgets/custom_text_field.dart';
import 'package:viithiisys_app/widgets/footer_widget.dart';
import 'package:viithiisys_app/widgets/main_appbar.dart';
import 'package:viithiisys_app/presentation/auth/widgets/custom_button.dart';
import 'widgets/upload_session.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: mainAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            numberPartSession("2/3"),
            styleTextBold(text: "Create your workspace", fontsize: 30),
            const UploadSession(),
            const CustomHintText(name: "Workspace name"),
            const Gap(10),
            const CustomTextField(text: "Clario Workspace"),
            const Gap(10),
            const CustomHintText(name: "Workspace handle"),
            const Gap(10),
            const CustomTextField(text: "app.clario.com/my-workspace"),
            const Gap(10),
            const CustomHintText(name: "Billing country"),
            const Gap(10),
            customBillingContryTextField(),
            const Gap(30),
            InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ThirdScreen())),
                child: const CustomButtonWidget(text: "Continue")),
          ],
        ),
      ),
      bottomNavigationBar: footerWidget(context, subtext: "© 2024 Clario"),
    );
  }

  TextFormField customBillingContryTextField() {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/images/usa_image.png",
            height: 20,
            width: 20,
          ),
        ),
        hintText: "United States",
        suffixIcon: const Icon(Icons.keyboard_arrow_down_rounded),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
