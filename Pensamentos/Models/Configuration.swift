//
//  Configuration.swift
//  Pensamentos
//
//  Created by Henrique Alves Batochi on 26/09/21.
//

import Foundation

enum UserDefaultsKeys: String {
    case timeInterval = "timeInterval"
    case colorScheme  = "colorScheme"
    case autorefresh  = "autorefresh"
}

class Configuration {
    
    let defaults = UserDefaults.standard
    // Singleton
    static var shared: Configuration = Configuration()
    private init(){
        if defaults.double(forKey: UserDefaultsKeys.timeInterval.rawValue) == 0 {
            defaults.set(8.0, forKey: UserDefaultsKeys.timeInterval.rawValue)
        }
    }
    
    var timeInterval: Double {
        get {
            return defaults.double(forKey: UserDefaultsKeys.timeInterval.rawValue)
        }
        set {
            // Quando uma variável computada recebe um valor novo ele é passado por newValue
            defaults.set(newValue, forKey: UserDefaultsKeys.timeInterval.rawValue)
        }
    }
    
    var colorScheme: Int {
        get {
            return defaults.integer(forKey: UserDefaultsKeys.colorScheme.rawValue)
        }
        set {
            // Quando uma variável computada recebe um valor novo ele é passado por newValue
            defaults.set(newValue, forKey: UserDefaultsKeys.colorScheme.rawValue)
        }
    }
    
    var autorefresh: Bool {
        get {
            return defaults.bool(forKey: UserDefaultsKeys.autorefresh.rawValue)
        }
        set {
            // Quando uma variável computada recebe um valor novo ele é passado por newValue
            defaults.set(newValue, forKey: UserDefaultsKeys.autorefresh.rawValue)
        }
    }
}
