//
//  Created by ktiays on 2024/10/12.
//  Copyright (c) 2024 ktiays. All rights reserved.
//

import Foundation

@inlinable
public func with<T, U>(
    @_implicitSelfCapture _ computation: () throws -> T,
    @_implicitSelfCapture _ action: (T) throws -> U
) rethrows -> U {
    try action(try computation())
}

@inlinable
public func with<each T, U>(
    _ value: repeat each T,
    @_implicitSelfCapture action: (repeat each T) throws -> U
) rethrows -> U {
    try action(repeat each value)
}
