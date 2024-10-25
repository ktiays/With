//
//  Created by ktiays on 2024/10/12.
//  Copyright (c) 2024 ktiays. All rights reserved.
//

import Foundation

@inlinable
public func with<T>(@_implicitSelfCapture _ action: () -> T) -> T {
    action()
}

@inlinable
public func with<T, U>(@_implicitSelfCapture _ computation: () -> T, @_implicitSelfCapture _ action: (T) -> U) -> U {
    action(computation())
}

@inlinable
public func with<T0, U0>(_ value: T0, @_implicitSelfCapture action: (T0) -> U0) -> U0 {
    action(value)
}

@inlinable
public func with<T0, T1, U0, U1>(
    _ t0: T0,
    _ t1: T1,
    @_implicitSelfCapture action: (T0, T1) -> (U0, U1)
) -> (U0, U1) {
    action(t0, t1)
}

@inlinable
public func with<T0, T1, T2, U0, U1, U2>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    @_implicitSelfCapture action: (T0, T1, T2) -> (U0, U1, U2)
) -> (U0, U1, U2) {
    action(t0, t1, t2)
}

@inlinable
public func with<T0, T1, T2, T3, U0, U1, U2, U3>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    _ t3: T3,
    @_implicitSelfCapture action: (T0, T1, T2, T3) -> (U0, U1, U2, U3)
) -> (U0, U1, U2, U3) {
    action(t0, t1, t2, t3)
}

@inlinable
public func with<T0, T1, T2, T3, T4, U0, U1, U2, U3, U4>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    _ t3: T3,
    _ t4: T4,
    @_implicitSelfCapture action: (T0, T1, T2, T3, T4) -> (U0, U1, U2, U3, U4)
) -> (
    U0, U1, U2, U3, U4
) {
    action(t0, t1, t2, t3, t4)
}

@inlinable
public func with<T0, T1, T2, T3, T4, T5, U0, U1, U2, U3, U4, U5>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    _ t3: T3,
    _ t4: T4,
    _ t5: T5,
    @_implicitSelfCapture action: (T0, T1, T2, T3, T4, T5) -> (U0, U1, U2, U3, U4, U5)
) -> (U0, U1, U2, U3, U4, U5) {
    action(t0, t1, t2, t3, t4, t5)
}

@inlinable
public func with<T0, T1, T2, T3, T4, T5, T6, U0, U1, U2, U3, U4, U5, U6>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    _ t3: T3,
    _ t4: T4,
    _ t5: T5,
    _ t6: T6,
    @_implicitSelfCapture action: (T0, T1, T2, T3, T4, T5, T6) -> (U0, U1, U2, U3, U4, U5, U6)
) -> (U0, U1, U2, U3, U4, U5, U6) {
    action(t0, t1, t2, t3, t4, t5, t6)
}

@inlinable
public func with<T0, T1, T2, T3, T4, T5, T6, T7, U0, U1, U2, U3, U4, U5, U6, U7>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    _ t3: T3,
    _ t4: T4,
    _ t5: T5,
    _ t6: T6,
    _ t7: T7,
    @_implicitSelfCapture action: (T0, T1, T2, T3, T4, T5, T6, T7) -> (U0, U1, U2, U3, U4, U5, U6, U7)
) -> (U0, U1, U2, U3, U4, U5, U6, U7) {
    action(t0, t1, t2, t3, t4, t5, t6, t7)
}

@inlinable
public func with<T0, T1, T2, T3, T4, T5, T6, T7, T8, U0, U1, U2, U3, U4, U5, U6, U7, U8>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    _ t3: T3,
    _ t4: T4,
    _ t5: T5,
    _ t6: T6,
    _ t7: T7,
    _ t8: T8,
    @_implicitSelfCapture action: (T0, T1, T2, T3, T4, T5, T6, T7, T8) -> (U0, U1, U2, U3, U4, U5, U6, U7, U8)
) -> (U0, U1, U2, U3, U4, U5, U6, U7, U8) {
    action(t0, t1, t2, t3, t4, t5, t6, t7, t8)
}

@inlinable
public func with<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, U0, U1, U2, U3, U4, U5, U6, U7, U8, U9>(
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
    @_implicitSelfCapture action: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9) -> (U0, U1, U2, U3, U4, U5, U6, U7, U8, U9)
) -> (U0, U1, U2, U3, U4, U5, U6, U7, U8, U9) {
    action(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9)
}
