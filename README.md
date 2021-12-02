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
