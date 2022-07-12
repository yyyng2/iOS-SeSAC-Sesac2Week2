import UIKit

// Raw String

var greeting = "Hello, \nplayground!"

print(greeting) // Hello,
                // playground!

var greeting2 = #"Hello, \nplayground!"#

print(greeting2) // Hello, \nplayground!

var greetingValue = "playground"
var greeting3 = #"Hello, \(greetingValue)!"#

print(greeting3) // Hello, \(playground)!

var greeting4 = #"Hello, \#(greetingValue)!"#

print(greeting4) // Hello, playground!

var greeting5 = #"Hello, \#n\#(greetingValue)!"#

print(greeting5) // Hello,
                 // playground!
