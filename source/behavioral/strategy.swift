/*:
💡 Strategy
-----------

The strategy pattern is used to create an interchangeable family of algorithms from which the required process is chosen at run-time.

### Example
*/
protocol Activity {
  func justDoIt()
}

struct Coding: Activity {
  func justDoIt() {
    print("Writing code...")
  }
}

struct Reading: Activity {
  func justDoIt() {
    print("Reading book...")
  }
}

struct Sleeping: Activity {
  func justDoIt() {
    print("Sleeping...")
  }
}

struct Training: Activity {
  func justDoIt() {
    print("Training...")
  }
}

struct Developer {
  var activity: Activity
  
  func executeActivity() {
    activity.justDoIt()
  }
}
/*:
### Usage
*/
var developer = Developer(activity: Sleeping())
developer.executeActivity()

developer.activity = Training()
developer.executeActivity()

developer.activity = Coding()
developer.executeActivity()

developer.activity = Reading()
developer.executeActivity()

developer.activity = Sleeping()
developer.executeActivity()
/*:
>**Further Examples:** [Design Patterns in Swift](https://github.com/kingreza/Swift-Strategy)
*/
