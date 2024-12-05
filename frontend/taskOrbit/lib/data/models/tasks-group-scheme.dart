import 'package:appflowy_board/appflowy_board.dart';

import '../../presentation/screens/kaban-multi-task-screen.dart';

final group1 = AppFlowyGroupData(id: "To Do", name: "To Do", items: [
  TextItem("Card 1"),
  TextItem("Card 2"),
  RichTextItem(title: "Card 3", subtitle: 'Aug 1, 2020 4:05 PM'),
  TextItem("Card 4"),
  TextItem("Card 5"),
]);

final group2 = AppFlowyGroupData(
  id: "In Progress",
  name: "In Progress",
  items: <AppFlowyGroupItem>[
    TextItem("Card 6"),
    RichTextItem(title: "Card 7", subtitle: 'Aug 1, 2020 4:05 PM'),
    RichTextItem(title: "Card 8", subtitle: 'Aug 1, 2020 4:05 PM'),
  ],
);

final group3 = AppFlowyGroupData(
    id: "Pending",
    name: "Pending",
    items: <AppFlowyGroupItem>[
      TextItem("Card 9"),
      RichTextItem(title: "Card 10", subtitle: 'Aug 1, 2020 4:05 PM'),
      TextItem("Card 11"),
      TextItem("Card 12"),
    ]);
final group4 = AppFlowyGroupData(
    id: "Canceled",
    name: "Canceled",
    items: <AppFlowyGroupItem>[
      TextItem("Card 13"),
      TextItem("Card 14"),
      TextItem("Card 15"),
    ]);
final group5 = AppFlowyGroupData(
    id: "Urgent",
    name: "Urgent",
    items: <AppFlowyGroupItem>[
      TextItem("Card 14"),
      TextItem("Card 15"),
    ]);
