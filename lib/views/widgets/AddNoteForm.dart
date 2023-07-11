import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:last_pro/Cubit/addNote/add_notes_cubit_cubit.dart';
import 'package:last_pro/models/notes_model.dart';
import 'package:last_pro/views/widgets/CustomButton.dart';
import 'package:last_pro/views/widgets/CustomTextField.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  String? title, SubTitle;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            Hint: "Text",
            onSaved: (p0) {
              title = p0;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            onSaved: (p0) {
              SubTitle = p0;
            },
            Hint: "Content",
            maxlines: 5,
          ),
          const SizedBox(
            height: 50,
          ),
          BlocBuilder<AddNotesCubit, AddNotesCubitState>(
              builder: (context, state) {
            return CustomButton(
              isLoading: state is AddNotesCubitLoading,
              ontap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  var Curruntdate = DateTime.now();
                  var FormatCurruntdate =
                      DateFormat("dd-mm-yyyy").format(Curruntdate);
                  var noteModel = notes_model(
                      title: title!,
                      Subtitle: SubTitle!,
                      date: FormatCurruntdate,
                      color: Colors.blue.value);
                  BlocProvider.of<AddNotesCubit>(context).AddNote(noteModel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            );
          }),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
