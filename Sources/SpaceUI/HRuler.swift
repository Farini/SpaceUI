//
//  HRuler.swift
//  SpaceUI
//
//  Created by Carlos Farini on 8/9/21.
//

import SwiftUI

/// Horizontal Ruler (aka Divider())
public struct HRuler: View {
    
    var height:CGFloat = 8.5
    
    public init() {
        self.height = 2.0
    }
    
    /// Initializes Horizontal Ruler with the specified height.
    /// - Parameters:
    ///     - height: The height of the HRuler
    public init(height:CGFloat) {
        self.height = height
    }
    
    public var body: some View {
        Rectangle()
        // color
            .background(Color.orange)
            .foregroundColor(.blue)
            .frame(height:self.height)
    }
}

struct HRuler_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HRuler()
            HRuler(height: 8)
            HRuler(height: 12)
        }
        .padding()
    }
}
