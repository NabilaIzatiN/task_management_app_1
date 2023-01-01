import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app_1/app/Utils/styles/AppColors.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: !context.isPhone
          ? Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 150,
                      foregroundImage: AssetImage('assets/images/profile.png'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Nabila Izati Nisa',
                        style: TextStyle(
                            color: AppColors.primaryText, fontSize: 40),
                      ),
                      Text(
                        'Nabila.Izati@neo.com',
                        style: TextStyle(
                            color: AppColors.primaryText, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 100,
                      foregroundImage: AssetImage('assets/images/profile.png'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Nabila Izati Nisa.',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 20),
                  ),
                  Text(
                    'Nabila.Izati@neo.com',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 16),
                  ),
                ],
              ),
            ),
    );
  }
}
