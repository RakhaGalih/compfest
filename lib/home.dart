import 'package:compfest/constant.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Parenthood Journey',
                  style: kMediumTextStyle.copyWith(fontSize: 20),
                ),
                const Spacer(),
                Text(
                  '😃',
                  style: kMediumTextStyle.copyWith(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
                height: 140,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  itemCount: journeyIcon.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 80,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: lineColor)),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: shade,
                          child: Text(
                            journeyIcon[index].icon,
                            style: const TextStyle(fontSize: 30),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              journeyIcon[index].title,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            const Text(
              'Fertility Tracking',
              style: kMediumTextStyle,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Healthy Food Recommendations',
              style: kMediumTextStyle,
            ),
            SizedBox(
                height: 250,
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    itemCount: imageFood.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: 150,
                            height: 220,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  color: lineColor,
                                ),
                                color: shade),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: shade,
                                    borderRadius: const BorderRadius.only(
                                        bottomRight: Radius.circular(6)),
                                  ),
                                  child: Text(imageFood[index].nutrisi),
                                ),
                                Expanded(
                                    child: Center(
                                        child: Text('images ${index + 1}'))),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: double.maxFinite,
                                  padding: const EdgeInsets.all(10),
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(imageFood[index].name),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        imageFood[index].kal,
                                        style: kMediumTextStyle.copyWith(
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '👍   🏷️',
                                        style: kMediumTextStyle.copyWith(
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ))),
            const Text(
              'Reminders and Notifications',
              style: kMediumTextStyle,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Emotional Support',
              style: kMediumTextStyle,
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6), color: shade),
                    child: Center(
                      child: Text(
                        'Chat bot powered by A.I.',
                        textAlign: TextAlign.center,
                        style: kMediumTextStyle.copyWith(fontSize: 16),
                      ),
                    ))),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Settings',
              style: kMediumTextStyle,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Privacy and Security',
              style: kMediumTextStyle,
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6), color: shade),
                    child: Center(
                      child: Text(
                        'We prioritize your privacy and confidentiality. Read our privacy policy.',
                        textAlign: TextAlign.center,
                        style: kMediumTextStyle.copyWith(fontSize: 16),
                      ),
                    ))),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: List.generate(
                  bottomIcon.length,
                  (index) => Expanded(
                        child: Column(
                          children: [
                            Text(
                              bottomIcon[index].icon,
                              style: const TextStyle(fontSize: 20),
                            ),
                            Text(
                              bottomIcon[index].title,
                            )
                          ],
                        ),
                      )),
            )
          ],
        ),
      )),
    );
  }
}
