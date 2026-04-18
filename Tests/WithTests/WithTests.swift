import Testing

@testable import With

struct WithTests {

    @Test
    func syncNoArguments() {
        let result = with {
            let a: Int = 40
            let b: Int = 2
            return a + b
        }
        #expect(result == 42)
    }

    @Test
    func syncOneArgument() {
        let result = with(7) { $0 * 6 }
        #expect(result == 42)
    }

    @Test
    func syncTwoArguments() {
        let result = with(6, 7) { $0 * $1 }
        #expect(result == 42)
    }

    @Test
    func syncMultipleArguments() {
        let result = with(1, 2, 3, 4, 5) { a, b, c, d, e in
            a + b + c + d + e
        }
        #expect(result == 15)
    }

    @Test
    func syncManyArguments() {
        let args = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
        let result = with(args.0, args.1, args.2, args.3, args.4, args.5, args.6, args.7, args.8, args.9) {
            (a: Int, b: Int, c: Int, d: Int, e: Int, f: Int, g: Int, h: Int, i: Int, j: Int) in
            a + b + c + d + e + f + g + h + i + j
        }
        #expect(result == 55)
    }

    @Test
    func syncChainedClosures() {
        let result = with({ 6 }, { $0 * 7 })
        #expect(result == 42)
    }

    @Test
    func syncChainedClosuresTypeConversion() {
        let result = with({ 42 }, { String($0) })
        #expect(result == "42")
    }

    @Test
    func syncChainedClosuresComplexTransformation() {
        let result = with(
            { [1, 2, 3, 4, 5] },
            { $0.reduce(0, +) * 2 }
        )
        #expect(result == 30)
    }

    @Test
    func syncThrowingNoArguments() throws {
        struct MyError: Error {}
        #expect(throws: MyError.self) {
            try with { throw MyError() }
        }
    }

    @Test
    func syncThrowingWithArguments() throws {
        struct MyError: Error {}
        #expect(throws: MyError.self) {
            try with(1) { _ in throw MyError() }
        }
    }

    @Test
    func syncThrowingChainedClosures() throws {
        struct MyError: Error {}
        #expect(throws: MyError.self) {
            try with({ throw MyError() }, { $0 })
        }
    }

    @Test
    func asyncNoArguments() async {
        let result = await with {
            try? await Task.sleep(nanoseconds: 1)
            let a: Int = 40
            let b: Int = 2
            return a + b
        }
        #expect(result == 42)
    }

    @Test
    func asyncOneArgument() async {
        let result = await with(7) {
            try? await Task.sleep(nanoseconds: 1)
            return $0 * 6
        }
        #expect(result == 42)
    }

    @Test
    func asyncTwoArguments() async {
        let result = await with(6, 7) {
            try? await Task.sleep(nanoseconds: 1)
            return $0 * $1
        }
        #expect(result == 42)
    }

    @Test
    func asyncMultipleArguments() async {
        let result = await with(1, 2, 3, 4, 5) { a, b, c, d, e in
            try? await Task.sleep(nanoseconds: 1)
            return a + b + c + d + e
        }
        #expect(result == 15)
    }

    @Test
    func asyncManyArguments() async {
        let args = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
        let result = await with(args.0, args.1, args.2, args.3, args.4, args.5, args.6, args.7, args.8, args.9) {
            (a: Int, b: Int, c: Int, d: Int, e: Int, f: Int, g: Int, h: Int, i: Int, j: Int) in
            try? await Task.sleep(nanoseconds: 1)
            return a + b + c + d + e + f + g + h + i + j
        }
        #expect(result == 55)
    }

    @Test
    func asyncChainedClosures() async {
        let result = await with(
            {
                try? await Task.sleep(nanoseconds: 1)
                return 6
            },
            {
                try? await Task.sleep(nanoseconds: 1)
                return $0 * 7
            }
        )
        #expect(result == 42)
    }

    @Test
    func asyncChainedClosuresTypeConversion() async {
        let result = await with(
            {
                try? await Task.sleep(nanoseconds: 1)
                return 42
            },
            {
                try? await Task.sleep(nanoseconds: 1)
                return String($0)
            }
        )
        #expect(result == "42")
    }

    @Test
    func asyncChainedClosuresComplexTransformation() async {
        let result = await with(
            {
                try? await Task.sleep(nanoseconds: 1)
                return [1, 2, 3, 4, 5]
            },
            {
                try? await Task.sleep(nanoseconds: 1)
                return $0.reduce(0, +) * 2
            }
        )
        #expect(result == 30)
    }

    @Test
    func asyncThrowingNoArguments() async throws {
        struct MyError: Error {}
        await #expect(throws: MyError.self) {
            try await with {
                try? await Task.sleep(nanoseconds: 1)
                throw MyError()
            }
        }
    }

    @Test
    func asyncThrowingWithArguments() async throws {
        struct MyError: Error {}
        await #expect(throws: MyError.self) {
            try await with(1) { _ in
                try? await Task.sleep(nanoseconds: 1)
                throw MyError()
            }
        }
    }

    @Test
    func asyncThrowingChainedClosures() async throws {
        struct MyError: Error {}
        await #expect(throws: MyError.self) {
            try await with(
                {
                    try? await Task.sleep(nanoseconds: 1)
                    throw MyError()
                },
                { $0 }
            )
        }
    }
}
