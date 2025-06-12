//
//  Created by ktiays on 2025/6/12.
//  Copyright (c) 2025 ktiays. All rights reserved.
//

#if canImport(_Concurrency)

import Foundation

@available(iOS 13.0, macOS 10.15, *)
@inlinable
public func with<T>(@_inheritActorContext @_implicitSelfCapture _ action: () async throws -> T) async rethrows -> T {
    try await action()
}

@available(iOS 13.0, macOS 10.15, *)
@inlinable
public func with<T, U>(
    @_inheritActorContext @_implicitSelfCapture _ computation: () async throws -> T,
    @_inheritActorContext @_implicitSelfCapture _ action: (T) async throws -> U
) async rethrows -> U {
    try await action(try await computation())
}

@available(iOS 13.0, macOS 10.15, *)
@inlinable
public func with<T0, U0>(
    _ value: T0,
    @_inheritActorContext @_implicitSelfCapture action: (T0) async throws -> U0
) async rethrows -> U0 {
    try await action(value)
}

@available(iOS 13.0, macOS 10.15, *)
@inlinable
public func with<T0, T1, U>(
    _ t0: T0,
    _ t1: T1,
    @_inheritActorContext @_implicitSelfCapture action: (T0, T1) async throws -> U
) async rethrows -> U {
    try await action(t0, t1)
}

@available(iOS 13.0, macOS 10.15, *)
@inlinable
public func with<T0, T1, T2, U>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    @_inheritActorContext @_implicitSelfCapture action: (T0, T1, T2) async throws -> U
) async rethrows -> U {
    try await action(t0, t1, t2)
}

@available(iOS 13.0, macOS 10.15, *)
@inlinable
public func with<T0, T1, T2, T3, U>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    _ t3: T3,
    @_inheritActorContext @_implicitSelfCapture action: (T0, T1, T2, T3) async throws -> U
) async rethrows -> U {
    try await action(t0, t1, t2, t3)
}

@available(iOS 13.0, macOS 10.15, *)
@inlinable
public func with<T0, T1, T2, T3, T4, U>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    _ t3: T3,
    _ t4: T4,
    @_inheritActorContext @_implicitSelfCapture action: (T0, T1, T2, T3, T4) async throws -> U
) async rethrows -> U {
    try await action(t0, t1, t2, t3, t4)
}

@available(iOS 13.0, macOS 10.15, *)
@inlinable
public func with<T0, T1, T2, T3, T4, T5, U>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    _ t3: T3,
    _ t4: T4,
    _ t5: T5,
    @_inheritActorContext @_implicitSelfCapture action: (T0, T1, T2, T3, T4, T5) async throws -> U
) async rethrows -> U {
    try await action(t0, t1, t2, t3, t4, t5)
}

@available(iOS 13.0, macOS 10.15, *)
@inlinable
public func with<T0, T1, T2, T3, T4, T5, T6, U>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    _ t3: T3,
    _ t4: T4,
    _ t5: T5,
    _ t6: T6,
    @_inheritActorContext @_implicitSelfCapture action: (T0, T1, T2, T3, T4, T5, T6) async throws -> U
) async rethrows -> U {
    try await action(t0, t1, t2, t3, t4, t5, t6)
}

@available(iOS 13.0, macOS 10.15, *)
@inlinable
public func with<T0, T1, T2, T3, T4, T5, T6, T7, U>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    _ t3: T3,
    _ t4: T4,
    _ t5: T5,
    _ t6: T6,
    _ t7: T7,
    @_inheritActorContext @_implicitSelfCapture action: (T0, T1, T2, T3, T4, T5, T6, T7) async throws -> U
) async rethrows -> U {
    try await action(t0, t1, t2, t3, t4, t5, t6, t7)
}

@available(iOS 13.0, macOS 10.15, *)
@inlinable
public func with<T0, T1, T2, T3, T4, T5, T6, T7, T8, U>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    _ t3: T3,
    _ t4: T4,
    _ t5: T5,
    _ t6: T6,
    _ t7: T7,
    _ t8: T8,
    @_inheritActorContext @_implicitSelfCapture action: (T0, T1, T2, T3, T4, T5, T6, T7, T8) async throws -> U
) async rethrows -> U {
    try await action(t0, t1, t2, t3, t4, t5, t6, t7, t8)
}

@available(iOS 13.0, macOS 10.15, *)
@inlinable
public func with<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, U>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    _ t3: T3,
    _ t4: T4,
    _ t5: T5,
    _ t6: T6,
    _ t7: T7,
    _ t8: T8,
    _ t9: T9,
    @_inheritActorContext @_implicitSelfCapture action: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9) async throws -> U
) async rethrows -> U {
    try await action(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9)
}

#endif
