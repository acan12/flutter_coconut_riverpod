CORE_LIBRARY_DEMO_CURRENT_STATE — Current State Documentation
Application: Flutter Coconut Riverpod
Repository: N/A
Platform: Android / iOS / macOS
Version: 1.0.0+1
Owner: N/A
Last Updated: April 14, 2026
Documented By: GitHub Copilot

1. Purpose & Responsibility
   This Flutter application serves as a demo project to showcase the implementation of Riverpod state management in a modular Flutter architecture. It features a basic home screen with bottom navigation and includes a user data fetching capability via a mock API. The app demonstrates clean architecture principles with separate packages for core functionalities like database, network, repository, security, and UI components.

This app is responsible for:
- Demonstrating Riverpod state management
- Fetching user personal information from a mock API
- Providing a basic navigation structure

This app is NOT responsible for:
- Real user authentication or authorization
- Production-ready business logic
- Complex data processing or transactions
- Actual device integrations beyond basic setup

Domain: Demo / Educational
Primary Users: Developers, Learners
Backend Services Consumed: Mock API (apiary-mock)
External Integrations: None

2. Technology Stack
   Component

Technology / Version

Framework

Flutter (SDK ^3.11.1)

Language

Dart >=3.11.1

Architecture

Feature-based / Modular with packages

State Management

Riverpod ^3.3.1

Networking

Dio ^5.9.2, Retrofit ^4.9.2

Local Storage

Hive ^2.2.3, flutter_secure_storage ^10.0.0

Device Info

N/A

Auth

N/A

Maps

N/A

Notifications

N/A

Analytics / Monitoring

N/A

Security

N/A

WebView

N/A

QR / Barcode

N/A

Media

N/A

Charts

N/A

Internationalization

easy_localization ^3.0.8

3. Application Configuration
   3.1 App Metadata
   Property

Value

App Name

Flutter Coconut Riverpod

Version

1.0.0+1

Security Type

UNSECURE

Company

N/A

Environment

Staging / Prod

3.2 Environment Configuration
Environment

Base URL

Notes

Staging

https://private-f66ab-myportfolio6.apiary-mock.com/

Mock API for testing

Prod

https://private-f66ab-myportfolio6.apiary-mock.com/

Same mock API

Config Method:
Build flavors (flutter_flavorizr)

4. Application Structure
   4.1 Project Structure

lib/
├── app.dart              — Main app widget
├── flavors.dart          — Flavor configuration
├── main.dart             — Entry point
├── features/             — Feature modules
│   ├── user/
│   │   ├── data/
│   │   │   ├── remote/
│   │   │   │   ├── response/
│   │   │   │   └── service/
├── screen/               — Screens
│   └── my_home_screen.dart
├── shared/               — Shared utilities
│   ├── api_config.dart
│   ├── config.dart
│   ├── database.dart
│   └── routes.dart
packages/
├── db/                   — Database package
├── network/              — Network package
├── repo/                 — Repository package
├── security/             — Security package
└── ui/                   — UI package

4.2 Navigation
Route

Screen

Description

/

MyHomeScreen

Main screen with bottom navigation

Navigation Method:
MaterialApp home property (no router implemented)

4.3 State Management
Type

Tool

Usage

Global State

Riverpod

App-wide state management

Local State

setState

UI state in home screen

Persistent State

Hive, flutter_secure_storage

Not implemented

4.4 API Integration
HTTP Client: Dio

Service

Base URL

Purpose

UserApiService

https://private-f66ab-myportfolio6.apiary-mock.com/

Fetch user personal information

Patterns:
- Retrofit for API service generation
- Centralized API config
- No token injection or error handling implemented

4.5 Data Flow

UI (Widget)
↓
State (Riverpod - not fully implemented)
↓
Repository / Service (placeholders)
↓
API / Local Storage (mock API, Hive commented out)
↓
Response
↓
State Update (not implemented)
↓
UI Rebuild

5. Device Capabilities
   Capability

Library

Usage

Camera

N/A

Not implemented

Biometrics

N/A

Not implemented

Storage

flutter_secure_storage

Not used

Location

N/A

Not implemented

Notifications

N/A

Not implemented

QR Scanner

N/A

Not implemented

WebView

N/A

Not implemented

6. Security
   Aspect

Implementation

App Security

None

Certificate Pinning

None

Token Storage

flutter_secure_storage (not used)

Biometrics

None

Root/Jailbreak Detection

None

Data Encryption

None

7. Notifications & Messaging
   Type

Tool

Description

Push Notification

N/A

Not implemented

Local Notification

N/A

Not implemented

Remote Config

N/A

Not implemented

8. Offline & Storage
   Storage

Usage

Secure Storage

Not used

Local DB

Hive (commented out in main.dart)

Not implemented

Cache

None

9. Performance
   9.1 Optimization Techniques
   None implemented

9.2 Known Bottlenecks
Area

Issue

Impact

N/A

N/A

N/A

10. Build, Test & Deploy
    10.1 Build

# install dependencies
flutter pub get
# run app
flutter run
# build APK
flutter build apk
# build iOS
flutter build ios

10.2 Testing
Type

Framework

Notes

Unit

flutter_test

Not implemented

Widget

flutter_test

Not implemented

Integration

N/A

Not implemented

10.3 Deployment
Aspect

Details

Android

N/A

iOS

N/A

CI/CD

N/A

11. Known Issues, Gaps & Technical Debt
    Be honest. This section is critical for future development planning.

#

Category

Description

Severity

Ticket

1

Architecture

Packages contain only placeholder sample code, not actual implementations

High

—

2

Functionality

Home screen has navigation icons but no actual screens or functionality

High

—

3

State Management

Riverpod is set up but not used for actual state management in the app

Medium

—

4

API Integration

User API service exists but not integrated into the UI or state

Medium

—

5

Security

No security measures implemented, app is completely unsecured

High

—

6

Testing

No tests implemented

Medium

—

7

Navigation

No proper routing system, using basic MaterialApp home

Medium

—

8

Offline & Storage

Hive initialization commented out, no storage functionality

Low

—

12. Glossary
    Term

Definition

RASP

Runtime Application Self Protection

PKCE

OAuth2 secure flow

Widget

Flutter UI component

Bloc

State management pattern

Riverpod

Reactive state management for Flutter

13. Appendix
    A. API Documentation
    Mock API: https://private-f66ab-myportfolio6.apiary-mock.com/

B. Firebase Console
N/A

C. Design Files
N/A

D. Architecture Diagram
N/A</content>
<parameter name="filePath">/Users/arysuryawan/myfolder/development/labs/flutter/core/flutter_coconut_riverpod/CORE_LIBRARY_DEMO_CURRENT_STATE.md
