# EvilWiki
Testing iOS workshop by Jorge Ortiz attended in [NSSpain 2017, Logroño, Spain](https://2017.nsspain.com/).

He covered from the very basic concepts to more advanced topics about iOS Unit Testing.

## Motivation
The main purpose of this code is to learn the basic concepts about iOS Unit Testing.

## Build and install
### Requirements
* Xcode 9
* iOS 11 SDK
* Swift 3 / Swift 4
### Getting the code
In order to build, run and access the app, the first thing you have to do is to clone my repository:
```
git clone https://github.com/RLRG/EvilWiki.git
```

## Testing notes
Some important notes I would like to highlight:

### FIRST PRINCIPLE: Best Practices for Testing
The acronym FIRST describes a concise set of criteria for effective unit tests. Following the FIRST principles will keep your tests clear and helpful, instead of turning into roadblocks for your app. Those criteria are:

* Fast: Tests should run quickly, so people won’t mind running them.
* Independent/Isolated: Tests should not do setup or teardown for one another.
* Repeatable: You should obtain the same results every time you run a test. External data providers and concurrency issues could cause intermittent failures.
* Self-validating: Tests should be fully automated; the output should be either “pass” or “fail”, rather than a programmer’s interpretation of a log file.
* Timely: Ideally, tests should be written just before you write the production code they test.

### 3 MAIN TYPES OF TESTS
- Test return value (15%)
- Test state: state of the objects (25%)
- Test behaviour: interactions between objects (60%)

### RULES FOR TESTING
- Test your code only
- Only a level of abstraction
- Only public methods
- Only one assertion per test *
- Tests are independent of sequence or state

### TDD Schools
- Detroit:
    * Use Real Objects.
    * Create the architecture from the Bottom to Up
- London:
    * Fake Objects: Mocking ---> When we refer to TEST DOUBLES (see next section) we refer to fake objects.
    * Creating the architecture from Top to Down

### TEST DOUBLES TYPES
- Dummy:
  You don’t care about the real objects, minimum amount of code. Necessary but no behaviour.
- Stub:
  Returns expected data. It is usually a provider of data (emulates APIs and other data sources). We provide data to test another part of the code, for example, JSON.
- Spy:
  Captures input. Very similar to what it is done with the buttonEnabled example in the code. It remembers what it is the state I want you to keep. Is it right? A way of remembering the behaviour.
- Mock:
  A little bit advanced. It remembers the state and it has a method that verifies expected behaviour. It will assert through the verify method that it is ok or not.
- Fake:
  Behaves similarly (simplified). CoreData small part.

### Is it a good idea to use a DEPENDENCY INJECTION FRAMEWORK ?
In Android, developers use Dagger 2 to inject dependencies, whereas in iOS we have Typhoon which is quite similar but not exactly the same because of the following two great differences:
  1. Annotations: In Java they have annotations, which are part of the standard of the objects. In iOS we don't have that !
  2. Owner: Google is the owner of the framework so that when a new version of the language, IDE, O.S. or whatever changes, the framework is ready an up to date to these changes. In iOS, it doesn't happen necessarily the same because Apple is not the owner and maintainer of Typhoon or other possible frameworks.
Therefore, as a conclusion I would not recommend to use a DEPENDENCY INJECTION FRAMEWORK in iOS since I find it riskier than using it in Java/Kotlin.

### Is it a good idea to use a MOCKING FRAMEWORK ?
There are many articles and tutorials that debate this topic and almost all agree on the same idea of creating tests in a 'manual' way; anyway, I would like to point out this interesting article that talks about the concept of 'reflection' in programming languages, establishing it as a limiting factor when using 'mocking frameworks' in Swift:
http://blog.pragmaticengineer.com/swift-the-only-modern-language-with-no-mocking-framework/

Some possible MOCKING FRAMEWORKS to be used in iOS:
-	SwiftMock
-	mockFive
-	Dobby
-	Mockit
-	Cuckoo

In my opinion and after reading the documentation of the frameworks listed above, I got to the conclusion that to use a MOCKING FRAMEWORK does not ease our life in iOS because of the 'reflection' concept and because of reasons such as the frameworks are not updated to the latests versions of Swift / iOS / XCode or having to code too much boiler-plate code among others.

### What about ASSERTION FRAMEWORKS ?
Although the basic testing framework is more than enough to do what you need when testing, they provide extra and richer semantics so that it could be a nice idea to use one of them.
Examples:
- OCHAMCREST
- EXPECTA
- QUICK/NIMBLE
- ...

## Where to go from here ?
- Clean Architecture.
- TDD. Test Driven Development.
- Other types of tests: integration, ui, performance.
- Execute tests in CI / CD: Travis CI, Jenkins, CircleCI, macOS Server….

## Contribution & Feedback
I would like to indicate that everything I have written here are opinions and conclusions that I have after having analyzed / read articles, documentation, spoken with other developers and so on. Therefore, you may not agree with everything written; I am also aware that there may be cases in which using Dependency Injection or Mocking frameworks could be useful.

If you would like to discuss something with me or provide me with useful examples using Dependency Injection and/or mocking frameworks, please, do not hesitate to contact me since it will be a pleasure for me :) !
Contact: rodri.lopezromero@gmail.com
