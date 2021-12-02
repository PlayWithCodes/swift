# Swift
Swift는 macOS, iOS, watchOS, tvOS를 위한 강력하고 직관적인 프로그래밍 언어입니다. Apple WWDC14#에서 공개된 프로그래밍 언어. 기존 Objective-C의 단점을 보완하고, LLVM/Clang[3] 컴파일러로 빌드되는 애플의 신규 프로그래밍 언어이다. 기존 Objective-C에 비해 클로저, 다중 리턴 타입, 네임스페이스, 제네릭, 타입 인터페이스 등 Objective-C에는 없었던 현대 프로그래밍 언어가 갖고 있는 기능을 많이 포함시켰으며, 다음과 같이 코드의 표현력을 높이기 위한 다른 많은 기능을 제공합니다.  
- 함수 포인터와 통합된 클로저  
- 튜플 및 멀티플 반환 값  
- 제네릭  
- 범위 또는 컬렉션에서의 빠르고 간결한 반복  
- 메소드, 확장 프로그램 및 프로토콜을 지원하는 구조  
- 함수형 프로그래밍 패턴 (예: map 및 filter)  
- try/catch/throw를 사용한 기본 오류 처리    

Swift의 개발자인 크리스 래트너 본인이 직접 언급한 영향을 준 언어로는 Rust, Haskell, C#, Python, Ruby 정도가 있다. 2015년 12월 4일 오픈 소스로 공개되었다. IBM은 서버사이드에서 Swift를 적극적으로 지원하고 있다. IBM은 Swift를 리눅스 서버에서 실행하여 브라우저에서 볼 수 있고 다른 사람과 공유할 수 있는 IBM Swift Sandbox라는 것을 발표했으며[7], 자사의 클라우드 컴퓨팅 플랫폼인 Bluemix에서도 Swift를 지원하고 있다. 또한, Microsoft Windows용 컴파일러도 5.3 버전과 함께 공개했다. Swift 프로젝트에서도 Objective-C는 아무런 제약 없이 사용 가능하다(!!). Swift의 컴파일러 백엔드와 Objective-C의 컴파일러 백엔드는 둘다 LLVM으로 동일하며, 어떤 언어를 사용해서 코드를 작성하더라도 같은 형태의 중간언어로 번역되어 컴파일 된다.

- https://developer.apple.com/kr/swift/
- https://namu.wiki/w/Swift?from=Swift%28%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%B0%8D%20%EC%96%B8%EC%96%B4%29



# LLVM
미국 일리노이 대학교의 크리스 래트너(Chris Lattner)가 2000년에 쓴 석사 논문에서 출발한 프로젝트이며, 이후 2005년에 애플이 크리스 래트너를 스카웃한 뒤 LLVM 프로젝트를 적극적으로 지원하고 있다. 크리스 래트너는 2010년에 iOS용 프로그래밍 언어 Swift를 만들기도 했다.

원래 LLVM은 저레벨 가상머신(Low-Level Virtual Machine)의 약자였지만, 프로젝트가 확장되며 이 용어는 더 이상 사용하지 않고 LLVM 자체가 프로젝트의 정식 명칭이 된다.  

![This is an image](https://w.namu.la/s/86c3523d8f26a4f259c43cea6c9d91d3f84cd91bcb026f37fabbf3ba79bfa7346efcb4d37379b3b841a8d5b438968bdc0dfb8a28ca816d8e98c172ab1bc86466da19a1ebf900a8d1bc2a60deceb9e2fbacc5517df0a2d5e554cb7644600d6acb0ed1e64ef5b1c21a36df9d665b97a0c4)

컴파일러는 프론트엔드-미들엔드-백엔드의 단계로 구성되어 있다. 보통 이 세 단계는 하나의 프로그램으로 일괄 처리되는데, 이럴 경우 '언어의 종류 x 아키텍처의 종류'만큼 복수의 컴파일러가 필요하게 된다. 다양한 언어와 다양한 아키텍처에 대응할 수 있는 이식성이 중요한 요즘 이러한 컴파일러 구조는 재사용성을 떨어뜨린다는 문제가 있다. 바로 이것을 해결할 수 있는 컴파일러 구조가 LLVM이다.
- https://namu.wiki/w/LLVM



# SwiftUI
SwiftUI is Apple's incredible new user interface framework for building apps for iOS, macOS, tvOS, and even watchOS, and brings with it a new, declarative way of building apps that makes it faster and safer to build software.  

If you're already using UIKit there's a bit of a speed bump at first because we’re all so programmed to think in terms of UIKit’s flow, but once you’re past that – once you start thinking in the SwiftUI mindset – then everything becomes much clearer.  

At the launch of SwiftUI at WWDC19, Apple described it as being four things:  

- Declarative, meaning that we say what we want rather than how we get there.
- Automatic, meaning that it takes care of many things we had to do by hand previously.
- Compositional, meaning that we build small things and combine them together into larger things.
- Consistent, meaning that we don’t see strange fault lines between Swift and Objective-C like we did previously, or very old APIs mixed up with very new ones.

Having now written tens of thousands of lines of code with SwiftUI I can tell you they missed one important point off: concise. Your SwiftUI code will be maybe 10-20% of what your UIKit code was – almost all of it disappears because we no longer repeat ourselves, no longer need to handle so many lifecycle methods, and more.  
- https://www.hackingwithswift.com/articles/194/get-started-with-swiftui



# Understanding the basic structure of a SwiftUI app
- ~App.swift contains code for launching your app. If you create something when the app launches and keep it alive the entire time, you’ll put it here.

- ContentView.swift contains the initial user interface (UI) for your program, and is where we’ll be doing all the work in this project.

- Assets.xcassets is an asset catalog – a collection of pictures that you want to use in your app. You can also add colors here, along with app icons, iMessage stickers, and more.

- Preview Content is a group, with Preview Assets.xcassets inside – this is another asset catalog, this time specifically for example images you want to use when you’re designing your user interfaces, to give you an idea of how they might look when the program is running.

<pre>
import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
</pre>

- struct ContentView: View creates a new struct called ContentView, saying that it conforms to the View protocol. View comes from SwiftUI, and is the basic protocol that must be adopted by anything you want to draw on the screen – all text, buttons, images, and more are all views, including your own layouts that combine other views.

- var body: some View defines a new computed property called body, which has an interesting type: some View. This means it will return something that conforms to the View protocol, which is our layout. Behind the scenes this will actually result in a very complicated data type being returned based on all the things in our layout, but some View means we don’t need to worry about that.

- The View protocol has only one requirement, which is that you have a computed property called body that returns some View. You can (and will) add more properties and methods to your view structs, but body is the only thing that’s required.

- You’ll see the .padding() method is being called on the text view. This is what Swift calls a modifier, which are regular methods with one small difference: they always return a new view that contains both your original data, plus the extra modification you asked for. In our case that means body will return a padded text view, not just a regular text view.

- the ContentView struct you’ll see a ContentView_Previews struct, which conforms to the PreviewProvider protocol. This piece of code won’t actually form part of your final app that goes to the App Store, but is instead specifically for Xcode to use so it can show a preview of your UI design alongside your code.

- These previews use an Xcode feature called the canvas, which is usually visible directly to the right of your code. You can customize the preview code if you want, and they will only affect the way the canvas shows your layouts – it won’t change the actual app that gets run.

- Very often you’ll find that an error in your code stops Xcode’s canvas from updating – you’ll see something like “Automatic preview updating paused”, and can press Resume to fix it. As you’ll be doing this a lot, let me recommend an important shortcut: Option+Cmd+P does the same as clicking Resume.

- https://www.hackingwithswift.com/books/ios-swiftui/understanding-the-basic-structure-of-a-swiftui-app



# Protocols
A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation of those requirements. Any type that satisfies the requirements of a protocol is said to conform to that protocol.
- https://docs.swift.org/swift-book/LanguageGuide/Protocols.html



# Structures and Classes
- In Swift, you define a structure or class in a single file, and the external interface to that class or structure is automatically made available for other code to use.

- Structures and classes in Swift have many things in common. Both can:
  - Define properties to store values
  - Define methods to provide functionality
  - Define subscripts to provide access to their values using subscript syntax
  - Define initializers to set up their initial state
  - Be extended to expand their functionality beyond a default implementation
  - Conform to protocols to provide standard functionality of a certain kind

- Classes have additional capabilities that structures don’t have:
  - Inheritance enables one class to inherit the characteristics of another.
  - Type casting enables you to check and interpret the type of a class instance at runtime.
  - Deinitializers enable an instance of a class to free up any resources it has assigned.
  - Reference counting allows more than one reference to a class instance.

- https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html



# Modifying program state

- There’s a saying among SwiftUI developers that our “views are a function of their state,” but while that’s only a handful of words it might be quite meaningless to you at first.

- Let’s put this into practice with a button, which in SwiftUI can be created with a title string and an action closure that gets run when the button is tapped:

<pre>
struct ContentView: View {
    var tapCount = 0

    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
        }
    }
}
</pre>

- However, it won’t build; that’s not valid Swift code. You see, ContentView is a struct, which might be created as a constant. If you think back to when you learned about structs, that means it’s immutable – we can’t change its values freely.

- When creating struct methods that want to change properties, we need to add the mutating keyword: mutating func doSomeWork(), for example. However, Swift doesn’t let us make mutating computed properties, which means we can’t write mutating var body: some View – it just isn’t allowed.

- Fortunately, Swift gives us a special solution called a property wrapper: a special attribute we can place before our properties that effectively gives them super-powers. In the case of storing simple program state like the number of times a button was tapped, we can use a property wrapper from SwiftUI called @State, like this:

<pre>
struct ContentView: View {
    @State var tapCount = 0

    var body: some View {
        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
        }
    }
}
</pre>

- @State allows us to work around the limitation of structs: we know we can’t change their properties because structs are fixed, but @State allows that value to be stored separately by SwiftUI in a place that can be modified.

- Yes, it feels a bit like a cheat, and you might wonder why we don’t use classes instead – they can be modified freely. But trust me, it’s worthwhile: as you progress you’ll learn that SwiftUI destroys and recreates your structs frequently, so keeping them small and simple is important for performance.

- Tip: There are several ways of storing program state in SwiftUI, and you’ll learn all of them. @State is specifically designed for simple properties that are stored in one view. As a result, Apple recommends we add private access control to those properties, like this: @State private var tapCount = 0

- https://www.hackingwithswift.com/books/ios-swiftui/modifying-program-state



# Binding state to user interface controls

- In Swift, we mark these two-way bindings with a special symbol so they stand out: we write a dollar sign before them. This tells Swift that it should read the value of the property but also write it back as any changes happen.

<pre>
struct ContentView: View {
    @State private var name = ""

    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Hello, world!")
        }
    }
}
</pre>

- https://www.hackingwithswift.com/books/ios-swiftui/binding-state-to-user-interface-controls



# Closures
- Closures can capture and store references to any constants and variables from the context in which they’re defined. This is known as closing over those constants and variables. Swift handles all of the memory management of capturing for you.

- Global and nested functions, as introduced in Functions, are actually special cases of closures. Closures take one of three forms:
  - Global functions are closures that have a name and don’t capture any values.
  - Nested functions are closures that have a name and can capture values from their enclosing function.
  - Closure expressions are unnamed closures written in a lightweight syntax that can capture values from their surrounding context.

- Swift’s closure expressions have a clean, clear style, with optimizations that encourage brief, clutter-free syntax in common scenarios. These optimizations include:
  - Inferring parameter and return value types from context
  - Implicit returns from single-expression closures
  - Shorthand argument names
  - Trailing closure syntax

- Capturing Values
  - A closure can capture constants and variables from the surrounding context in which it’s defined. The closure can then refer to and modify the values of those constants and variables from within its body, even if the original scope that defined the constants and variables no longer exists.



# ForEach

- It’s common to want to create several SwiftUI views inside a loop. For example, we might want to loop over an array of names and have each one be a text view, or loop over an array of menu items and have each one be shown as an image.

- ForEach will run a closure once for every item it loops over, passing in the current loop item. For example, if we looped from 0 to 100 it would pass in 0, then 1, then 2, and so on.

- Because ForEach passes in a closure, we can use shorthand syntax for the parameter name, like this:

<pre>
Form {
    ForEach(0 ..< 100) {
        Text("Row \($0)")
    }
}
</pre>



# What’s the difference between @ObservedObject, @State, @StateObject, and @EnvironmentObject?

## @State
- State is inevitable in any modern app, but with SwiftUI it’s important to remember that all of our views are simply functions of their state. We don’t change the views directly, but instead manipulate the state and let that dictate the result.

- The simplest way of working with state is the @State property wrapper, used like this:

<pre>
struct ContentView: View {
    @State private var tapCount = 0

    var body: some View {
        Button("Tap count: \(tapCount)") {
            tapCount += 1
        }
    }
}
</pre>

- This creates a property inside a view, but it uses the @State property wrapper to ask SwiftUI to manage the memory. This matters: all our views are structs, which means they can’t be changed, and if we weren’t even able to modify an integer in our apps then there wouldn’t be much we could do.

- So, when we say @State to make a property, we hand control over it to SwiftUI so that it remains persistent in memory for as long as the view exists. When that state changes, SwiftUI knows to automatically reload the view with the latest changes so it can reflect its new information.

- @State is great for simple properties that belong to a specific view and never get used outside that view, so as a result it’s important to mark those properties as being private to re-enforce the idea that such state is specifically designed never to escape its view.


## @ObservedObject

- For more complex properties – when you have a custom type you want to use that might have multiple properties and methods, or might be shared across multiple views – you will often use @ObservedObject instead.

- This is very similar to @State except now we’re using an external reference type rather than a simple local property like a string or an integer. You’re still saying that your view depends on data that will change, except now it’s data you’re responsible for managing yourself – you need to create an instance of the class, create its own properties, and so on.

- Whatever type you use with @ObservedObject should conform to the ObservableObject protocol. When you add properties to observable objects you get to decide whether changes to each property should force views that are watching your object to refresh or not. You usually will, but it’s not required.

- There are several ways for an observed object to notify views that important data has changed, but the easiest is using the @Published property wrapper. You can also use custom publishers from the Combine framework if you need more control, but realistically this will be very rare. If the observable object happens to have several views using its data, either option will automatically notify them all.

- Warning: When you use a custom publisher to announce that your object has changed, this must happen on the main thread.


## @StateObject

- Somewhere between @State and @ObservedObject lies @StateObject. This is a specialized version of @ObservedObject, and it works in almost exactly the same way: you must conform to the ObservableObject protocol, you can use @Published to mark properties as causing change notifications, and any views that watch an @StateObject will refresh their body when the object changes.

- There is one important difference between @StateObject and @ObservedObject, which is ownership – which view created the object, and which view is just watching it.

- The rule is this: whichever view is the first to create your object must use @StateObject, to tell SwiftUI it is the owner of the data and is responsible for keeping it alive. All other views must use @ObservedObject, to tell SwiftUI they want to watch the object for changes but don’t own it directly.


## @EnvironmentObject

- @EnvironmentObject. This is a value that is made available to your views through the application itself – it’s shared data that every view can read if they want to. So, if your app had some important model data that all views needed to read, you could either hand it from view to view to view or just put it into the environment where every view has instant access to it.

- Think of @EnvironmentObject as a massive convenience for times when you need to pass lots of data around your app. Because all views point to the same model, if one view changes the model all views immediately update – there’s no risk of getting different parts of your app out of sync.


## Summing up the differences

- Use @State for simple properties that belong to a single view. They should usually be marked private.
- Use @ObservedObject for complex properties that might belong to several views. Most times you’re using a reference type you should be using @ObservedObject for it.
- Use @StateObject once for each observable object you use, in whichever part of your code is responsible for creating it.
- Use @EnvironmentObject for properties that were created elsewhere in the app, such as shared data.


- https://www.hackingwithswift.com/quick-start/swiftui/whats-the-difference-between-observedobject-state-and-environmentobject


# Implicit Member Expression

- An implicit member expression is an abbreviated way to access a member of a type, such as an enumeration case or a type method, in a context where type inference can determine the implied type. It has the following form:

<pre>
var x = MyEnumeration.someValue
x = .anotherValue
</pre>

- If the inferred type is an optional, you can also use a member of the non-optional type in an implicit member expression.

<pre>
var someOptional: MyEnumeration? = .someValue
</pre>

- Implicit member expressions can be followed by a postfix operator or other postfix syntax listed in Postfix Expressions. This is called a chained implicit member expression. Although it’s common for all of the chained postfix expressions to have the same type, the only requirement is that the whole chained implicit member expression needs to be convertible to the type implied by its context. Specifically, if the implied type is an optional you can use a value of the non-optional type, and if the implied type is a class type you can use a value of one of its subclasses. For example:

<pre>
class SomeClass {
    static var shared = SomeClass()
    static var sharedSubclass = SomeSubclass()
    var a = AnotherClass()
}
class SomeSubclass: SomeClass { }
class AnotherClass {
    static var s = SomeClass()
    func f() -> SomeClass { return AnotherClass.s }
}
let x: SomeClass = .shared.a.f()
let y: SomeClass? = .shared
let z: SomeClass = .sharedSubclass
</pre>

- In the code above, the type of x matches the type implied by its context exactly, the type of y is convertible from SomeClass to SomeClass?, and the type of z is convertible from SomeSubclass to SomeClass.

- https://docs.swift.org/swift-book/ReferenceManual/Expressions.html#grammar_implicit-member-expression
