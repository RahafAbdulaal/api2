
import UIKit

class ViewController: UIViewController {

    class ViewController: UIViewController {
      override func viewDidLoad() {
        super.viewDidLoad()
        getCharacter()
      }
      func getCharacter(){
          
        var urlComponent = URLComponents()
        urlComponent.scheme = "https"
        urlComponent.host = "cat-fact.herokuapp.com"
        urlComponent.path = "/facts"
     
          
        let urlSession = URLSession.shared
        let URLRequest = URLRequest(url: urlComponent.url!)
        let task = urlSession.dataTask(with: URLRequest) {(data: Data?,response: URLResponse?, errore :Error?) in
            print("hh")
           print(String(data: data!, encoding: .utf8))
//            let jsonDecoder = JSONDecoder()
//            let character = try jsonDecoder.decode(wetherRespon.self, from: data!)
//             print(character.weather)
     
        }
        task.resume()
      }
    }
}

