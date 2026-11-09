import 'package:contact_app/features/home/presentation/widgets/no_contacts_items_list.dart';
import 'package:flutter/material.dart';
import 'contacts_items_list.dart';

class HomePageViewBody extends StatelessWidget {
  const HomePageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      // you can change this widget ((ContactsItemsList)) to ((NoContactsItemsList)) to test that screen also
      child: ContactsItemsList(),
    );
  }
}
