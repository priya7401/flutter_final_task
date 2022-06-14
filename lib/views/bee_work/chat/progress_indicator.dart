import 'package:final_task/views/bee_work/chat/new_chats_tab.dart';

import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';

Widget percentIndicator({required double percent, required Widget centerIcon}) {
  return CircularPercentIndicator(
    radius: 32,
    lineWidth: 2.5,
    center: centerIcon,
    percent: percent,
    progressColor: blue,
  );
}
