

import Fluent
import Vapor


final class Pizza: Model, Content {
    static let schema = "pizzas"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String
    
    init () { }
    
    init (id: UUID? = nil, name: String) {
        self.id = id
        self.name = name
    }
}
