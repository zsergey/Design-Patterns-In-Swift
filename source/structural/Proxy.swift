/*:
☔ Proxy
------------------

The proxy pattern is used to provide a surrogate or placeholder object, which references an underlying object. 

### Example
*/
protocol Project {
  func run()
}

struct RealProject: Project {
  var url: String
  
  func load() {
    print("Loading project from url \(url) ...")
  }
  
  init(url: String) {
    self.url = url
    load()
  }
  
  func run() {
    print("Running project \(url) ...")
  }
}

class ProxyProject: Project {
  var url: String
  var realProject: RealProject?
  
  func run() {
    if realProject == nil {
      realProject = RealProject(url: url)
    }
    realProject!.run()
  }
  
  init(url: String) {
    self.url = url
  }
}
/*:
### Usage
*/
var project = ProxyProject(url: "https://github.com/zsergey/realProject")
project.run()
