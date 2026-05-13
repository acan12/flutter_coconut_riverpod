{APP_NAME} — Current State Documentation
Application: {app-name}
Repository: {repo-url}
Platform: {e.g., Android / iOS}
Version: {e.g., 3.14.29+578}
Owner: {team/person}
Last Updated: {date}
Documented By: {author}

1. Purpose & Responsibility
   {One paragraph describing what this mobile application does}

This app is responsible for:

This app is NOT responsible for:

Domain: {e.g., Merchant Payment / Financial App}
Primary Users: {e.g., Merchant, Customer}
Backend Services Consumed: {e.g., payment-service, user-service}
External Integrations: {e.g., Firebase, Google Maps, OAuth}

2. Technology Stack
   Component

Technology / Version

Framework

{e.g., Flutter 3.x}

Language

{e.g., Dart >=3.5.0}

Architecture

{e.g., Clean Architecture / Feature-based}

State Management

{e.g., Provider / Bloc / Riverpod / setState}

Networking

{e.g., http package}

Local Storage

{e.g., flutter_secure_storage}

Device Info

{e.g., device_info_plus}

Auth

{e.g., biometrics (local_auth), JWT}

Maps

{e.g., google_maps_flutter}

Notifications

{e.g., firebase_messaging, flutter_local_notifications}

Analytics / Monitoring

{e.g., newrelic_mobile}

Security

{e.g., Talsec (RASP, certificate pinning)}

WebView

{e.g., webview_flutter / flutter_inappwebview}

QR / Barcode

{e.g., zxing2, qr_code_scanner_plus}

Media

{e.g., camera, image_picker, audioplayers}

Charts

{e.g., fl_chart}

Internationalization

{e.g., flutter_localizations}

3. Application Configuration
   3.1 App Metadata
   Property

Value

App Name

{e.g., BBL Merchant Application}

Version

{e.g., 3.14.29+578}

Security Type

{UNSECURE / SEMI / SECURE}

Company

{e.g., YT / BBL}

Environment

{e.g., ALL / SIT / UAT / PROD}

3.2 Environment Configuration
Environment

Base URL

Notes

DEV

{e.g., https://dev-api...}

{testing}

UAT

{e.g., https://uat-api...}

{pre-prod}

PROD

{e.g., https://api...}

{production}

Config Method:
{e.g., envied / .env / build flavors}

4. Application Structure
   4.1 Project Structure


lib/
├── core/              — {e.g., shared utilities, constants}
├── features/          — {e.g., feature modules}
│   ├── {feature}/
│   │   ├── data/       — API & repository
│   │   ├── domain/     — models / entities
│   │   ├── presentation/
│   │   │   ├── pages/
│   │   │   ├── widgets/
│   │   │   └── state/
├── services/          — {e.g., API services}
├── widgets/           — {e.g., shared UI components}
├── utils/             — {e.g., helpers}
├── config/            — {e.g., app config}
└── main.dart          — entry point
4.2 Navigation
Route

Screen

Description

/login

{LoginPage}

{User login}

/home

{HomePage}

{Main dashboard}

/payment

{PaymentPage}

{Transaction flow}

Navigation Method:
{e.g., Navigator 2.0 / GoRouter / GetX}

4.3 State Management
Type

Tool

Usage

Global State

{e.g., Provider / Bloc}

{auth, session}

Local State

{e.g., setState}

{UI state}

Persistent State

{e.g., secure storage}

{tokens}

4.4 API Integration
HTTP Client: {e.g., http}

Service

Base URL

Purpose

{payment-service}

{https://api/...}

{transactions}

{user-service}

{https://api/...}

{user info}

Patterns:

{e.g., centralized API service}

{e.g., token injection}

{e.g., error handling wrapper}

4.5 Data Flow


UI (Widget)
↓
State (Provider/Bloc)
↓
Repository / Service
↓
API / Local Storage
↓
Response
↓
State Update
↓
UI Rebuild
5. Device Capabilities
   Capability

Library

Usage

Camera

{camera}

{QR scan, capture}

Biometrics

{local_auth}

{login/auth}

Storage

{flutter_secure_storage}

{token storage}

Location

{google_maps_flutter}

{maps/location}

Notifications

{firebase_messaging}

{push notifications}

QR Scanner

{zxing2}

{scan QR}

WebView

{webview_flutter}

{external content}

6. Security
   Aspect

Implementation

App Security

{e.g., Talsec RASP}

Certificate Pinning

{e.g., talsec_certificates}

Token Storage

{e.g., flutter_secure_storage}

Biometrics

{e.g., local_auth}

Root/Jailbreak Detection

{e.g., Talsec}

Data Encryption

{e.g., cryptography}

7. Notifications & Messaging
   Type

Tool

Description

Push Notification

{firebase_messaging}

{receive push}

Local Notification

{flutter_local_notifications}

{in-app alerts}

Remote Config

{firebase_remote_config}

{feature toggle}

8. Offline & Storage
   Storage

Usage

Secure Storage

{tokens, sensitive data}

Local DB

{e.g., none / Hive / SQLite}

Cache

{e.g., API response cache}

9. Performance
   9.1 Optimization Techniques
   {e.g., widget optimization}

{e.g., lazy loading}

{e.g., isolate usage}

9.2 Known Bottlenecks
Area

Issue

Impact

{Home}

{heavy API calls}

{slow load}

{Charts}

{large dataset}

{lag}

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

{flutter_test}

{logic testing}

Widget

{flutter_test}

{UI testing}

Integration

{e.g., integration_test}

{end-to-end}

10.3 Deployment
Aspect

Details

Android

{Play Store / internal distribution}

iOS

{App Store / TestFlight}

CI/CD

{e.g., Bitbucket Pipelines / GitHub Actions}

11. Known Issues, Gaps & Technical Debt
    Be honest. This section is critical for future development planning.

#

Category

Description

Severity

Ticket

1

Security

{UNSECURE mode enabled}

High

—

2

Performance

{heavy UI rendering}

Medium

—

3

Architecture

{tight coupling in features}

Medium

—

4

Storage

{no caching strategy}

Medium

—

12. Glossary
    Term

Definition

RASP

{Runtime Application Self Protection}

PKCE

{OAuth2 secure flow}

Widget

{Flutter UI component}

Bloc

{State management pattern}

13. Appendix
    A. API Documentation
    {e.g., Swagger / Postman}

B. Firebase Console
{link}

C. Design Files
{e.g., Figma link}

D. Architecture Diagram
{link}

Instructions for documenting a mobile app
Copy → {APP_NAME}_CURRENT_STATE.md

Fill all sections (use "N/A" if not applicable)

Validate against actual code

Focus on:

One paragraph describing what this mobile application does, its domain scope, and what it is NOT responsible for (1)

Project struct must to represent the path of project, not too detail atleast 3 level (4.1)

Device capabilities (Section 5)

Security (Section 6)

List every route (4.2)

List every API (you can check on the endpoints.dart file) (Section 4.4)

Be honest in Section 11 (Tech Debt)

Have peer review