import Foundation

final class Weather {
    static let shared = Weather()
    private(set) var current: Current?
    private(set) var forecast: Forecast?

    func requestCurrentWeatherWithCompletion(completion: @escaping Networking.CurrentCoditionsCompletion) {
        Networking.getCurrentConditions(completion: completion)
    }

    func requestForecastWithCompletion(completion: @escaping Networking.ForecastCompletion){
        Networking.getForecast {
            (forecast) in
            self.forecast = forecast
            completion(forecast)
        }
    }
    private init() { }

    struct Current: Decodable {
        private enum TopLevelCodingKeys: String, CodingKey {
            case weather, main
        }

        private enum WeatherCodingKeys: String, CodingKey {
            case main, description
        }

        private enum MainCodingKeys: String, CodingKey {
            case temp, humidity
        }

        let conditions: String
        let imageName: String
        let temp: Float

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: TopLevelCodingKeys.self)

            let mainNestedContainer = try container.nestedContainer(keyedBy: MainCodingKeys.self, forKey: .main)
            temp = try mainNestedContainer.decode(Float.self, forKey: .temp)

            var weatherNestedContainer = try container.nestedUnkeyedContainer(forKey: .weather)

            let weatherValueContainer = try weatherNestedContainer.nestedContainer(keyedBy: WeatherCodingKeys.self)

            conditions = try weatherValueContainer.decode(String.self, forKey: .description)
            imageName = try weatherValueContainer.decode(String.self, forKey: .main).lowercased()
        }
    }

    
  
        
    struct Forecast: Decodable {
        struct Item: Decodable {
            private enum TopLevelCodingKeys: String, CodingKey {
                case weather, main, time = "dt_txt"
            }
            private enum MainCodingKeys: String, CodingKey {
                       case temp, tempMin = "temp_min", tempMax = "temp_max"
                   }
            private enum WeatherCodingKeys: String, CodingKey {
                case main, description
            }
            
           let time: String
           let temp: Float
           let imageName: String
           let conditions: String
            
            init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: TopLevelCodingKeys.self)
                
                time = try container.decode(String.self, forKey: .time)
                
                let mainNestedContainer = try container.nestedContainer(keyedBy: MainCodingKeys.self, forKey: .main)
                
                temp = try mainNestedContainer.decode(Float.self, forKey: .temp)
                
                var weatherNestedContainer = try container.nestedUnkeyedContainer(forKey: .weather)

                let weatherValueContainer = try weatherNestedContainer.nestedContainer(keyedBy: WeatherCodingKeys.self)
                
                conditions = try weatherValueContainer.decode(String.self, forKey: .description)
                
                imageName = try weatherValueContainer.decode(String.self, forKey: .main).lowercased()
            }
        }
        
        let list: [Item]
      
        
    }
}
