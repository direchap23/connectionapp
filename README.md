# App Name: connection_app
# Author: Japeth D. Lahaylahay

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

FLUTTERAPP Folder Structure
- .dart_tool
- .idea
- android
- assets
	> Images
	> logos
	> icons
- build
- fronts
	> Roboto
- funcctions
	> cloud functions
- ios
- lib
  - models				  -- collections of data
  	> userData
  		>> name
  		>> ID
  		>> email
  	> post
  		>> user
  		>> image
  		>> description
  - views				  -- pages of the app
  	- jobseeker
  		> company.dart       -- scaffold
  - services			  -- interactions outside of app
  	> firebase
  	> API
  - utils				  -- functions used throughout the app
  	> validation
  	> time since		  -- to calculate how much time since it input
  	> image capture
  	> theme
  - widgets               -- used throughout app
  	> appbar
  	> posts				  -- post layout for everything
  	> textfields		  -- like you want all textfield with the same design
- test
- web
- windows