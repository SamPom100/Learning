import Foundation
 
let json = """
{"coord":{"lon":-71.0598,"lat":42.3584},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"base":"stations","main":{"temp":22.8,"feels_like":15.28,"temp_min":19.45,"temp_max":26.4,"pressure":1034,"humidity":39},"visibility":10000,"wind":{"speed":5.99,"deg":284,"gust":11.99},"clouds":{"all":0},"dt":1644944348,"sys":{"type":2,"id":2003257,"country":"US","sunrise":1644925256,"sunset":1644963363},"timezone":-18000,"id":4930956,"name":"Boston","cod":200}
"""
 

struct Prediction: Decodable {
    var main: PredictionAttributes
    let name: String
    struct PredictionAttributes: Decodable {
        var temp: Double
    }
}
 

func test() -> Double{
    let urlString = "https://api.openweathermap.org/data/2.5/weather?q=BOSTON&APPID=9581e38eae9390c82ece6c4d09f43b8f&units=imperial"
    guard let url = URL(string: urlString) else { return -1 } // Valid URL
    guard let data = try? Data(contentsOf: url) else { return -1 } // Got response
    let decoder = JSONDecoder()
    let launch = try? decoder.decode(Prediction.self, from: data)
    return launch!.main.temp
}
 
print(test())
