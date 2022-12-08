import 'package:canteco_app/utils/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: CustomTheme.silver,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Name',
                      style: Theme.of(context).primaryTextTheme.headline3,
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'School Number',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .subtitle1,
                                /* add color */
                              ),
                              const SizedBox(height: 15),
                              Text(
                                '1234567',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .subtitle1,
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'School Name',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .subtitle1,
                                /* add color */
                              ),
                              const SizedBox(height: 15),
                              Text(
                                'ESMAD',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .subtitle1,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Course',
                              style:
                                  Theme.of(context).primaryTextTheme.subtitle1,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Technical Superior Course in Design and Technologies for Mobile Apps',
                      style: Theme.of(context).primaryTextTheme.subtitle1,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Card(
                color: CustomTheme.silver,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 0,
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 204,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Instituition',
                            style: Theme.of(context).primaryTextTheme.subtitle1,
                          ),
                          Text(
                            'Escola Superior de Media Artes e Design',
                            style: Theme.of(context).primaryTextTheme.subtitle1,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Email Info',
                            style: Theme.of(context).primaryTextTheme.subtitle1,
                          ),
                          Text(
                            '40210000@esmad.ipp.pt',
                            style: Theme.of(context).primaryTextTheme.subtitle1,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Phone number',
                            style: Theme.of(context).primaryTextTheme.subtitle1,
                          ),
                          Text(
                            '930 000 000',
                            style: Theme.of(context).primaryTextTheme.subtitle1,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Address',
                            style: Theme.of(context).primaryTextTheme.subtitle1,
                          ),
                          Text(
                            'Rua x, Nx, Vila do Conde, Porto',
                            style: Theme.of(context).primaryTextTheme.subtitle1,
                          ),
                        ],
                      ),
                    )),
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  Text(
                    'Log Out',
                    style: Theme.of(context).primaryTextTheme.subtitle1,
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
