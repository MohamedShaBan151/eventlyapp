import 'package:eventlyapp/common/theme/app_colors.dart';
import 'package:eventlyapp/models/category_model.dart';
import 'package:eventlyapp/screens/new_event/views/category_selector_view.dart';
import 'package:eventlyapp/widgets/custom_main_button.dart';
import 'package:eventlyapp/widgets/custom_text_feild.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class NewEvent extends StatefulWidget {
  const NewEvent({super.key});
  static const String routeName = '/neweventscreen';

  @override
  State<NewEvent> createState() => _NewEventState();
}

class _NewEventState extends State<NewEvent> {
  CategoryModel selectedCategory = CategoryModel.categories[1];
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Event')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 16,
          children: [
            CategorySelectorView(
              onChanged: (Category) {
                setState(() {
                  selectedCategory = Category;
                });
              },
              selectedCategory: selectedCategory,
            ),
            // SizedBox(height: 10),
            CustomTextFeild(
              label: 'title',
              hintText: 'Event Title',
              prefixIcon: Icon(Icons.edit),
            ),
            CustomTextFeild(
              label: 'Description',
              hintText: 'Event Description',
              maxLines: 5,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.date_range,
                      color: Theme.of(context).textTheme.titleMedium!.color,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Event Time',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () async {
                        TimeOfDay? Time = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        );
                        if (Time != null)
                          setState(() {
                            selectedTime = Time;
                          });
                      },
                      child: Text(
                        _getTimeText(),
                        style: Theme.of(context).textTheme.titleMedium!
                            .copyWith(color: AppColors.maincolor),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.date_range,
                      color: Theme.of(context).textTheme.titleMedium!.color,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Event Date',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () async {
                        DateTime? date = await showDatePicker(
                          initialDate: selectedDate,
                          context: context,
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2030),
                        );
                        if (date != null) {
                          setState(() {
                            selectedDate = date;
                          });
                        }
                      },
                      child: Text(
                        _getDateText(),
                        style: Theme.of(context).textTheme.titleMedium!
                            .copyWith(color: AppColors.maincolor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            CustomMainButton(text: 'Save', onPressed: () {}),
          ],
        ),
      ),
    );
  }

  _getTimeText() {
    if (selectedTime == null) return 'select Time';
    return selectedTime!.format(context);
    // '${selectedTime!.hour}:${selectedTime!.minute}';
  }

  _getDateText() {
    if (selectedDate == null) return 'select Date';
    return DateFormat('yyyy,MM,dd').format(selectedDate!);

    // selectedDate.toString().split('')[0];
  }
}
