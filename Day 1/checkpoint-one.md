Your goal is to write a Swift playground that:

1. Creates a constant holding any temperature in Celsius.
2. Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
3. Prints the result for the user, showing both the Celsius and Fahrenheit values.
4. You already know everything you need to solve that problem, but if you’d like some hints then I’ll add some below.

## Code

```swift
import UIKit

let temperatureInCelsius = 31.0

let temperatureInFahrenheit = temperatureInCelsius * 1.8 + 32

print(temperatureInCelsius)
print(ceil(temperatureInFahrenheit))
```

Note: I use the `ceil()` function to round up the temperature in Fahrenheit.º
