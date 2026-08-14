import XCTest
import MapConductorIcons
@testable import MapConductorIconsUS

final class UnitedStatesMapIconsTests: XCTestCase {
    func testRegionQualifiedIdentifiers() {
        XCTAssertTrue([
            UnitedStatesMapIcons.postOffice,
            UnitedStatesMapIcons.policeStation,
            UnitedStatesMapIcons.interstate,
        ].allSatisfy { $0.id.hasPrefix("us.") })
    }

    func testGlyphRendersInCommonPinContainer() {
        let bitmap = PinGlyphIcon(glyph: UnitedStatesMapIcons.interstate).toBitmapIcon()
        XCTAssertGreaterThan(bitmap.size.width, 0)
        XCTAssertNotNil(bitmap.bitmap.pngData())
    }
}
