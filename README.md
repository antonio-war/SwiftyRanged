# SwiftyRanged

SwiftyRanged is a simple and lightweight way for creating constricted range variables.
You can use it with each Comparable type like Int, Float, Double, String.

- **Easy to use:** no configuration needed, SwiftyRanged is ready to go.
- **Configurable:** you can define your custom range bounds.
- **SwiftUI like:** the syntax used is very similar to the one used for SwiftUI.

---

# Installation

You can use Swift Package Manager to add SwiftyRanged to your project.

## Add Package Dependency

In Xcode, select File > Add Packages...

## Specify the Repository

Copy and paste the following into the search/input box.

https://github.com/antonio-war/SwiftyRanged

## Specify options

Use **Up to Next Major Version** as dependency rule and enter the current SwiftyRanged version.
Then click **Add Package**.

---

# Usage

The can declare your properties in this way, specifying the two edges of the range and the assigned value.

```swift
@SwiftyRanged(0...5) var yourProperty: Int = 0
```

In some cases you may not prefer to specify an initial value and therefore you can use a default one.

```swift
@SwiftyRanged(0...5) var yourProperty: Int
```

Your property will automatically take the value of the lower bound.

---

# Optionals

In case you need your value to be an optional you need to use the SwiftyOptionalRanged property wrapper, don't worry it has the exact same syntax as the previous one. 

```swift
@SwiftyOptionalRanged(0...5) var yourProperty: Int? = 0
```
---
# License
SwiftyRanged is published under the Apache 2.0 license.
