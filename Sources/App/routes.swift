import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world! C'est nathan qui parle"
    }
    
    app.get("welcome") { req -> String in
        return "Bienvenue"
    }
    
    
    app.get("leaftest") { req -> EventLoopFuture<View> in
        return req.view.render("nathantest", ["name": "Nathan"])
    }
}
