//
//  Created by ktiays on 2025/6/12.
//  Copyright (c) 2025 ktiays. All rights reserved.
//

#if canImport(_Concurrency)

import Foundation

@available(iOS 13.0, macOS 10.15, *)
@inlinable
public func with<T>(@_inheritActorContext @_implicitSelfCapture _ action: sending () async throws -> T) async rethrows -> T {
    try await action()
}

@available(iOS 13.0, macOS 10.15, *)
@inlinable
public func with<T, U>(
    @_inheritActorContext @_implicitSelfCapture _ computation: sending () async throws -> T,
    @_inheritActorContext @_implicitSelfCapture _ action: sending (T) async throws -> U
) async rethrows -> U {
    try await action(try await computation())
}

@available(iOS 13.0, macOS 10.15, *)
@inlinable
public func with<each T, U>(
    _ value: repeat each T,
    @_inheritActorContext @_implicitSelfCapture action: sending (repeat each T) async throws -> U
) async rethrows -> U {
    try await action(repeat each value)
}

#endif
