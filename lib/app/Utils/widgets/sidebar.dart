import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app_1/app/Utils/styles/AppColors.dart';
import 'package:task_management_app_1/app/routes/app_pages.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        height: Get.height,
        color: AppColors.primaryBg,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // logo
              Container(
                height: 100,
                padding: const EdgeInsets.only(top: 30),
                width: double.infinity,
                alignment: Alignment.topCenter,
                child: const Image(
                    image: const AssetImage('Assets/Icons/icon.png')),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 100,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                            height: 40,
                            width: 100,
                            decoration: Get.currentRoute == '/home'
                                ? BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.white)
                                : const BoxDecoration(),
                            child: Icon(
                              Get.currentRoute == '/home'
                                  ? Ionicons.desktop
                                  : Ionicons.desktop_outline,
                              color: AppColors.primaryText,
                              size: 30,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "home",
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    onTap: () => Get.toNamed(Routes.HOME),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                            height: 40,
                            width: 100,
                            decoration: Get.currentRoute == '/task'
                                ? BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.white)
                                : const BoxDecoration(),
                            child: Icon(
                              Get.currentRoute == '/task'
                                  ? Ionicons.cube
                                  : Ionicons.cube_outline,
                              color: AppColors.primaryText,
                              size: 30,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "task",
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    onTap: () => Get.toNamed(Routes.TASK),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                            height: 40,
                            width: 100,
                            decoration: Get.currentRoute == '/friends'
                                ? BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.white)
                                : const BoxDecoration(),
                            child: Icon(
                              Get.currentRoute == '/friends'
                                  ? Ionicons.heart
                                  : Ionicons.heart_outline,
                              color: AppColors.primaryText,
                              size: 30,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Friends",
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    onTap: () => Get.toNamed(Routes.FRIENDS),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                            height: 40,
                            width: 100,
                            decoration: Get.currentRoute == '/profile'
                                ? BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.white)
                                : const BoxDecoration(),
                            child: Icon(
                              Get.currentRoute == '/profile'
                                  ? Ionicons.person
                                  : Ionicons.person_outline,
                              color: AppColors.primaryText,
                              size: 30,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Profile",
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    onTap: () => Get.toNamed(Routes.PROFILE),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
