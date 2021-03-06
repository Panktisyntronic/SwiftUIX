//
// Copyright (c) Vatsal Manot
//

import SwiftUI

@available(iOS 14.0, macOS 11.0, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
    public func menuOnPress<MenuContent: View>(
        @ViewBuilder content: () -> MenuContent
    ) -> some View {
        Menu(content: content) {
            self
        }
        .menuStyle(BorderlessButtonMenuStyle())
        .buttonStyle(PlainButtonStyle())
    }
}
