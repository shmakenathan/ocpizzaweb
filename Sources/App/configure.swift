import Vapor
import Leaf
import Fluent
import FluentPostgresDriver
// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    app.databases.use(.postgres(hostname: "localhost", username: "vapor", password: "vapor", database: "vapor"), as: .psql)
    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    try app.databases.use(.postgres(url: "<connection string>"), as: .psql)
    // register routes
    try routes(app)
    
    app.views.use(.leaf)
}
