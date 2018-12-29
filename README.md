# ObjectCustomStringConvertible

## Usage

```
struct User: ObjectCustomStringConvertible {
    let id: UUID
    let username: String
    let firstName: String
    let lastName: String
}

let user = User(id: UUID(), username: "john.wick", firstName: "John", lastName: "Wick")
print(user)

// User{username=john.wick, lastName=Wick, firstName=John, id=F63E7644-DDAD-4874-9A2B-C792B419B119}
```
