//
//  Created by ktiays on 2024/11/5.
//  Copyright (c) 2024 ktiays. All rights reserved.
//

import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public func with<V>(@ViewBuilder _ content: () -> V) -> V where V: View {
    content()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public func with<V, T>(_ value: T, @ViewBuilder _ content: (T) -> V) -> V where V: View {
    content(value)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public func with<V, T0, T1>(_ t0: T0, _ t1: T1, @ViewBuilder _ content: (T0, T1) -> V) -> V where V: View {
    content(t0, t1)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public func with<V, T0, T1, T2>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    @ViewBuilder _ content: (T0, T1, T2) -> V
) -> V where V: View {
    content(t0, t1, t2)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public func with<V, T0, T1, T2, T3>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    _ t3: T3,
    @ViewBuilder _ content: (T0, T1, T2, T3) -> V
) -> V where V: View {
    content(t0, t1, t2, t3)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public func with<V, T0, T1, T2, T3, T4>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    _ t3: T3,
    _ t4: T4,
    @ViewBuilder _ content: (T0, T1, T2, T3, T4) -> V
) -> V where V: View {
    content(t0, t1, t2, t3, t4)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public func with<V, T0, T1, T2, T3, T4, T5>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    _ t3: T3,
    _ t4: T4,
    _ t5: T5,
    @ViewBuilder _ content: (T0, T1, T2, T3, T4, T5) -> V
) -> V where V: View {
    content(t0, t1, t2, t3, t4, t5)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public func with<V, T0, T1, T2, T3, T4, T5, T6>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    _ t3: T3,
    _ t4: T4,
    _ t5: T5,
    _ t6: T6,
    @ViewBuilder _ content: (T0, T1, T2, T3, T4, T5, T6) -> V
) -> V where V: View {
    content(t0, t1, t2, t3, t4, t5, t6)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public func with<V, T0, T1, T2, T3, T4, T5, T6, T7>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    _ t3: T3,
    _ t4: T4,
    _ t5: T5,
    _ t6: T6,
    _ t7: T7,
    @ViewBuilder _ content: (T0, T1, T2, T3, T4, T5, T6, T7) -> V
) -> V where V: View {
    content(t0, t1, t2, t3, t4, t5, t6, t7)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public func with<V, T0, T1, T2, T3, T4, T5, T6, T7, T8>(
    _ t0: T0,
    _ t1: T1,
    _ t2: T2,
    _ t3: T3,
    _ t4: T4,
    _ t5: T5,
    _ t6: T6,
    _ t7: T7,
    _ t8: T8,
    @ViewBuilder _ content: (T0, T1, T2, T3, T4, T5, T6, T7, T8) -> V
) -> V where V: View {
    content(t0, t1, t2, t3, t4, t5, t6, t7, t8)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public func with<V, T0, T1, T2, T3, T4, T5, T6, T7, T8, T9>(
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
    @ViewBuilder _ content: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9) -> V
) -> V where V: View {
    content(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9)
}
