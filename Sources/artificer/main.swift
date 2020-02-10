import artificerCore

let tool = Artificer()

do {
    try tool.run()
} catch {
    print("Whoops! An error occurred: \(error)")
}
