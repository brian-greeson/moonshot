## Moonshot

An iOS app built with SwiftUI that explores NASA's Apollo missions. Browse mission cards in a responsive grid, then dive into each mission's highlights and crew.

### Features

- **Mission grid**: Adaptive `LazyVGrid` shows Apollo missions with patch art, name, and launch date.
- **Mission details**: Each mission page includes a hero image, highlights, and a horizontally scrolling crew list.
- **Dark theme**: Custom `darkBackground` and `lightBackground` colors for a space-inspired UI.
- **Local data**: Decodes `missions.json` and `astronauts.json` from the app bundle with a typed model layer.

### Screenshots
<p>
<img src="screenshots/Simulator%20Screenshot%20-%20iPhone%2016%20Pro%20-%202025-08-14%20at%2011.42.51.png" height="500" />
<img src="screenshots/Simulator%20Screenshot%20-%20iPhone%2016%20Pro%20-%202025-08-14%20at%2011.48.55.png" height="500" />
<img src="screenshots/Simulator%20Screenshot%20-%20iPhone%2016%20Pro%20-%202025-08-14%20at%2011.49.01.png" height="500" />
</p>
### Tech stack

- **Swift** 5
- **SwiftUI** navigation via `NavigationStack`
- **JSON decoding** with `JSONDecoder` and a `Bundle.decode(_:)` helper (custom `DateFormatter` for `launchDate`)

### Project structure

- `moonshot/`
  - `ContentView.swift`: Mission grid and navigation.
  - `MissionView.swift`: Mission details and crew list.
  - `Astronaut.swift`, `Mission.swift`: Codable models.
  - `BundleDecodable.swift`: Generic bundle JSON decode helper.
  - `ColorTheme.swift`: App color theme (`darkBackground`, `lightBackground`).
  - `Assets.xcassets/`: Mission patches and astronaut images.
  - `astronauts.json`, `missions.json`: Local data sources.

### Requirements

- **Xcode** 16.4 or later
- **iOS Deployment Target**: 18.5 (runs on iPhone and iPad)

### Getting started

1. Open `moonshot.xcodeproj` in Xcode.
2. Select an iOS simulator (or a device running iOS 18.5+).
3. Build and run.

### Data

- Missions and astronauts are bundled JSON. Dates in `missions.json` use `yyyy-MM-dd` and are decoded with a custom `DateFormatter`.
- Images are local in `Assets.xcassets/Images` and mapped by mission/astronaut `id`.


