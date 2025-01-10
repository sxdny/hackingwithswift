## Sets and Enums

### Set

Set – they are similar to arrays, except **you can’t add duplicate items**, and they don’t store their items in a particular order.

```swift
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
```

To add elements you can use:

```swift
var people = Set<String>()
people.insert("Denzel Washington")
```

Now we are using `insert()` instead of `append()` because we are no longer adding the elements to the end of the array, the `insert()` will store the items in whatever order.

If you use `contains()`, it will find the item very fast.

### Enums

They let us define a new data type with a handful of specific values that it can have. Think of a Boolean, that can only have true or false – you can’t set it to “maybe” or “probably”, because that isn’t in the range of values it understands. Enums are the same: we get to list up front the range of values it can have, and Swift will make sure you never make a mistake using them.

```swift
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

// or
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}
```

Now, rather than using String, we could use the enum:

```swift
var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

// or

var day = Weekday.monday
day = .tuesday
day = .friday
```
