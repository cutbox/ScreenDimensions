//
//  main.swift
//  ScreenDimensions
//
//  Created by Jason on 6/6/18.
//  Copyright © 2018 Ocodo. All rights reserved.
//

import Foundation
import Cocoa

fileprivate extension String {
    func pad(_ padSize: Int) -> String {
        return self.padding(toLength: padSize, withPad: " ", startingAt: 0)
    }
}

let screenSizes = NSScreen.screens.map { $0.frame }
var count = 0

print(
    screenSizes.map {
        count += 1
        let primary = ($0.origin.x == 0 && $0.origin.y == 0)
        let x = "\($0.origin.x)".pad(8)
        let minX = "\($0.minX)".pad(8)
        let y = "\($0.origin.y)".pad(8)
        let minY = "\($0.minY)".pad(8)
        let w = "\($0.size.width)".pad(8)
        let h = "\($0.size.height)".pad(8)

        return """
        Screen \(count) ---
        \(primary ? "(primary)" : "")
           x: \(x)    y: \(y)
           w: \(w)    h: \(h)
        minX: \(minX) minY: \(minY)
        """
        }
        .joined(separator: "\n")
)


