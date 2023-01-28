import 'dart:html';
import 'package:firebase_dart/implementation/testing.dart';

void main() {
  await FirebaseTesting.setup();

  var options = FirebaseOptions(
    apiKey: "AIzaSyBNoV-9TbqrEwvvCT_nvVXLhpKJkUv8_0E",
    authDomain: "mythic-rain-256205.firebaseapp.com",
    projectId: "mythic-rain-256205",
    storageBucket: "mythic-rain-256205.appspot.com",
    messagingSenderId: "36954024964",
    appId: "1:36954024964:web:6d9bb54ed183a783d71951",
    measurementId: "G-R9CGHPLM7W");

var app = await Firebase.initializeApp(options: options);

var backend = FirebaseTesting.getBackend(app.options);

var options = FirebaseOptions(
    apiKey: "AIzaSyBNoV-9TbqrEwvvCT_nvVXLhpKJkUv8_0E",
    authDomain: "mythic-rain-256205.firebaseapp.com",
    projectId: "mythic-rain-256205",
    storageBucket: "mythic-rain-256205.appspot.com",
    messagingSenderId: "36954024964",
    appId: "1:36954024964:web:6d9bb54ed183a783d71951",
    measurementId: "G-R9CGHPLM7W");

var app = await Firebase.initializeApp(options: options);

var backend = FirebaseTesting.getBackend(app.options);
  querySelector('#output')?.text = 'Your Dart app is running.';
}
