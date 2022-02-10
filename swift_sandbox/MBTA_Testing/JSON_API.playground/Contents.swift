import Foundation

struct APIResponse: Codable {
    var data: [Prediction]
}

struct Prediction: Codable {
    var attributes: PredictionAttributes
    
    struct PredictionAttributes: Codable {
        var arrival_time: Date
        var departure_time: Date
    }
}

let urlString = "https://api-v3.mbta.com/predictions?filter%5Bstop%5D=70130"

guard let url = URL(string: urlString) else { exit(1) } // Valid URL

guard let data = try? Data(contentsOf: url) else { exit(2) } // Got response

let decoder = JSONDecoder()
decoder.dateDecodingStrategy = .iso8601

var predictions: APIResponse?

do {
    predictions = try decoder.decode(APIResponse.self, from: data)
}

for prediction in predictions!.data {
    print(prediction.attributes.departure_time)
}
