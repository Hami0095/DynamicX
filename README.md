# 🧠 DynamicXForms

DynamicXForms is a monolithic, server-driven form engine powered by **Flutter**, **gRPC**, **Buf**, **Riverpod**, and **Widgetbook**. It enables dynamic form creation, preview, and rendering — no app redeploys required.

---

## ✨ Tech Stack

| Layer         | Tech                           |
| ------------- | ------------------------------ |
| Frontend      | Flutter (web, mobile, desktop) |
| Backend       | Go (gRPC) via Buf              |
| Shared Models | Protobuf contracts (Dart + Go) |
| State Mgmt    | Riverpod (Elm-style)           |
| UI Catalog    | Widgetbook                     |
| Build Tooling | Nx (workspace orchestrator)    |

---

## 📦 Folder Structure

```

DynamicX/
├── apps/
│   ├── backend/         # Go gRPC backend
│   ├── flutter-app/     # Flutter client
│   └── widgetbook/      # Widgetbook catalog
├── libs/
│   └── forms\_core/      # Shared Dart models + networking
├── proto/               # Protobuf contracts
├── gen/                 # Buf-generated Go/Dart files
├── tools/               # Buf configs
├── nx.json              # Nx workspace config
├── workspace.json       # Nx project definitions
└── README.md

````

---

## 🚀 Local Development

### 1. Install Dependencies

```bash
go mod tidy
dart pub get
flutter pub get
````

### 2. Generate Protobufs

```bash
nx run buf:generate
```

This generates:

* Dart stubs → `libs/forms_core/lib/src/generated`
* Go stubs → `gen/go/form/v1`

---

## 🧩 Nx Console Commands

| Command                    | Description                        |
| -------------------------- | ---------------------------------- |
| `nx run buf:lint`          | Lint protobufs                     |
| `nx run buf:generate`      | Generate Go + Dart protobuf stubs  |
| `nx run backend:serve`     | Run Go gRPC server                 |
| `nx run flutter-app:serve` | Run Flutter app on web             |
| `nx run widgetbook:serve`  | Launch Widgetbook for live preview |

---

## 🧬 gRPC Endpoints

Defined in `apps/backend/server/form_service.go`

| RPC Method      | Description                        |
| --------------- | ---------------------------------- |
| `GetFormSchema` | Returns a dynamic form schema      |
| `CreateForm`    | Accepts a form and returns form ID |
| `SubmitForm`    | Accepts user answers for a form    |

---

## 🧪 Widgetbook

```bash
nx run widgetbook:serve
```

Will launch the live component catalog for:

* `TextQuestionWidget`
* `RadioGroupQuestionWidget`
* `DatePickerQuestionWidget`
* `FormRenderer` (full dynamic schema render)

---

## 🎨 Liquid Flutter Theme

Defined in `/lib/core/theme.dart`:

* ✅ Glassmorphic cards and panels with `BackdropFilter`
* ✅ Light & dark variants
* ✅ Liquid-swipe or custom shader transitions
* ✅ Accent animations for buttons, navigation, and form flow

---

## 🔁 Riverpod State Management

```dart
final formSchemaProvider =
    FutureProvider.autoDispose<FormDefinition>((ref) async {
  return ref.read(formRepositoryProvider).fetchSchema();
});

final formAnswersProvider =
    StateNotifierProvider<FormAnswersNotifier, Map<String, dynamic>>(
        (ref) => FormAnswersNotifier());
```

---

## 🧠 100% Server-Driven UI

`FormRenderer` dynamically builds UIs using Protobuf definitions.

### Example Form Payload (gRPC Response)

```json
{
  "steps": [
    {
      "questions": [
        { "label": "Your name?", "type": "text" },
        { "label": "Your mood?", "type": "radio", "options": ["Happy", "Sad"] }
      ]
    }
  ]
}
```

The UI is dynamically generated based on the payload — no widget logic is hardcoded.

---

## ✅ CI/CD Snippet (GitHub Actions)

`.github/workflows/main.yml`:

```yaml
name: DynamicX CI

on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3

      - name: Buf Lint
        run: nx run buf:lint

      - name: Dart Format
        run: dart format --set-exit-if-changed .

      - name: Flutter Test
        run: flutter test

      - name: Build Widgetbook
        run: nx run widgetbook:serve
```

---

## 🤖 Purpose

* 🧠 AI-generated forms
* 🔄 Server-driven UI updates
* 🎯 Rapid schema changes without redeploys
* 🎨 Live component previews

---

## 🤝 Contributing

1. Update Protobufs in `proto/form.proto`
2. Run `nx run buf:generate`
3. Rebuild frontend & backend
4. Submit PR with description

---

## 🛠 Maintainer

Built with 💙 by `@Hami0095` — let's shape the future of dynamic UIs together.

---
