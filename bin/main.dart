// Copyright (c) 2016, sds2001. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'dart:async';
import 'dart:io';


main(List<String> arguments) {
  print('Hello world. This is my first Dart program!');
  createFile("Hello world!");
}

Future createFile(String fileInput)async {
  print('lol');
  File file = new File('testfile.txt');

  try {
    await file.writeAsString(fileInput, mode: FileMode.WRITE);
    print('Created file');

  } catch(e){
    print('Didnt Work. OOPS!');
    print(e);
  }
}
