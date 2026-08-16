# MapConductor Icons for the United States — iOS

United States-specific map glyphs for MapConductor iOS. This pack is selected explicitly; it never changes because of the device locale.

## Installation

In Xcode, choose **File → Add Package Dependencies**, enter the URL below, select branch `main`, and add `MapConductorIconsUS`:

```text
https://github.com/MapConductor/ios-icons-us.git
```

## Quick start

```swift
import MapConductorIcons
import MapConductorIconsUS
import UIKit

let interstateMarker = PinGlyphIcon(
    glyph: UnitedStatesMapIcons.interstate,
    fillColor: .systemBlue,
    glyphColor: .white
)
```

Use `UnitedStatesMapIcons.postOffice` and `UnitedStatesMapIcons.policeStation` the same way. Glyph IDs and shapes match the Android and React packages.

<!-- BEGIN GENERATED ICON CATALOG -->
## Included glyphs

Glyph IDs are stable across Android, iOS, and React.

| Preview | API | Stable ID | Description |
|---|---|---|---|
| <img src="docs/icons/post_office.svg" width="40" height="40" alt="United States post office"> | `UnitedStatesMapIcons.postOffice` | `us.post_office` | United States post office |
| <img src="docs/icons/police_station.svg" width="40" height="40" alt="United States police station"> | `UnitedStatesMapIcons.policeStation` | `us.police_station` | United States police station |
| <img src="docs/icons/interstate.svg" width="40" height="40" alt="United States Interstate highway"> | `UnitedStatesMapIcons.interstate` | `us.interstate` | United States Interstate highway |
<!-- END GENERATED ICON CATALOG -->
