# 스타벅스 스타일 앱

## 구현

### 1) 사용 기능

- SwiftUI
- Combine
- SwiftUI App Life Cycle

### 2) 기본 개념

### (1) List vs LazyHStack

### 3) 새롭게 알게 된 것

#### 👑 enum

##### `Iterating over Enumeration Cases`

```swift
enum Beverage: CaseIterable {
    case coffee, tea, juice
}

let numberOfChoices = Beverage.allCases.count
```

##### `Associated Values`

it's sometimes useful to be able to store values of other types alongside these case values. This additional information is called an associated value, and it varies each time you use that case as a value in your code

```swift
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
```

<https://developer.apple.com/forums/thread/52510>
> enums have computed properties but not stored properties


