import 'dart:io';
import 'package:canteco_app/utils/database/image.dart';
import 'package:canteco_app/utils/routes.dart';
import 'package:canteco_app/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:canteco_app/utils/assets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import '../../../widgets/language_picker.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final sharedPreferences = LocalSharedPreferences();
  File? image;

  void _showOptions(BuildContext context) {
    if (Platform.isIOS) {
      //ios Modal
      showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
          title: Text(AppLocalizations.of(context)!.select),
          actions: <Widget>[
            CupertinoActionSheetAction(
              child: Text(AppLocalizations.of(context)!.camera),
              onPressed: () {
                pickImage(ImageSource.camera);
                Navigator.pop(context);
              },
            ),
            CupertinoActionSheetAction(
              child: Text(AppLocalizations.of(context)!.library),
              onPressed: () {
                pickImage(ImageSource.gallery);
                Navigator.pop(context);
              },
            )
          ],
        ),
      );
    } else {
      //Android Modal
      showModalBottomSheet(
          context: context, //
          builder: (context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.photo),
                  title: Text(AppLocalizations.of(context)!.camera),
                  onTap: () => {
                    pickImage(ImageSource.camera),
                    Navigator.pop(context),
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.library_add),
                  title: Text(AppLocalizations.of(context)!.library),
                  onTap: () => {
                    pickImage(ImageSource.gallery),
                    Navigator.pop(context),
                  },
                ),
              ],
            );
          });
    }
  }

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      sharedPreferences.savePhoto(imageTemporary.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('failed: $e');
    }
  }

  @override
  void initState() {
    sharedPreferences.getPhoto().then((String? photo) => {
          if (photo != null) {setState(() => image = File(photo))}
        });
    super.initState();
  }

  Future<File> saveImagePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final image = File('${directory.path}/$imagePath');
    return File(imagePath).copy(image.path);
  }

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
                    Stack(children: [
                      InkWell(
                        onTap: () => _showOptions(context),
                        child: image != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(60),
                                child: Image.file(
                                  image!,
                                  width: 120,
                                  height: 120,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : Container(
                                width: 120,
                                height: 120,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: CustomTheme.cultured,
                                ),
                                child: const Icon(Icons.photo),
                              ),
                      ),
                      const Positioned(right: 0, child: LanguageMyWidget()),
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      AppLocalizations.of(context)!.name,
                      style: Theme.of(context).primaryTextTheme.headline3,
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                AppLocalizations.of(context)!.schoolNumber,
                                style: Theme.of(context).textTheme.subtitle1,
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
                                AppLocalizations.of(context)!.schoolName,
                                style: Theme.of(context).textTheme.subtitle1,
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
                      children: [
                        Text(
                          AppLocalizations.of(context)!.course,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          AppLocalizations.of(context)!.courseName,
                          style: Theme.of(context).primaryTextTheme.subtitle1,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ))
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Card(
                color: CustomTheme.cultured,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 0,
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 190,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                AppLocalizations.of(context)!.institution,
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ],
                          ),
                          Text(
                            'Escola Superior de Media Artes e Design',
                            style: Theme.of(context).primaryTextTheme.subtitle1,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            AppLocalizations.of(context)!.email,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text(
                            '40210000@esmad.ipp.pt',
                            style: Theme.of(context).primaryTextTheme.subtitle1,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            AppLocalizations.of(context)!.phone,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text(
                            '930 000 000',
                            style: Theme.of(context).primaryTextTheme.subtitle1,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            AppLocalizations.of(context)!.address,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text(
                            'Rua x, Nx, Vila do Conde, Porto',
                            style: Theme.of(context).primaryTextTheme.subtitle1,
                          ),
                        ],
                      ),
                    )),
              ),
              const SizedBox(height: 35),
              GestureDetector(
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context, Routes.loginPage, (route) => false),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.icLogoutU,
                      height: 20,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      AppLocalizations.of(context)!.logOut,
                      style: Theme.of(context).primaryTextTheme.subtitle1,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
