public protocol SessionProvider {
    var session: Session? { get nonmutating set }
}
