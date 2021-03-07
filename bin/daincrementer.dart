#!/usr/bin/env dart

library daincrementer;

import 'dart:io';

Future<void> main(List<String> args) async {
  final File file = File(args[0]);
  final String content = await file.readAsString();
  final RegExp regex = RegExp(r'version: .*\+([0-9]+)');
  final Iterable<Match> matches = regex.allMatches(content);

  if (matches.length == 1) {
    final Match match = matches.elementAt(0);
    final String fullVersion = match.group(0)!;
    final int versionCode = int.parse(match.group(1)!);
    final String newVersion =
        fullVersion.replaceAll('$versionCode', '${versionCode + 1}');
    final String newContent = content.replaceAll(fullVersion, newVersion);
    await file.writeAsString(newContent);
  } else {
    print('Version code couldn\'t be found');
  }
}
