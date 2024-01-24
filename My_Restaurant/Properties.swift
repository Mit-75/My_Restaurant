//
//  Data.swift
//  My_Restaurant
//
//  Created by Dmitry Parhomenko on 23.01.2024.
//

import Foundation

struct Properties {
    let makeOrder: String
    let payment: String
    let thankYou: String
    let hello: String
    let smile: Smil
    
   static func getProperties() -> Properties {
        Properties(
            makeOrder: "Сделать Заказ",
            payment: "Произвести оплату",
            thankYou: "THANK YOU!",
            hello: "WELCOME!",
            smile: Smil.first
            
        )
    }
    enum Smil: Character {
        case first = "🍽️"
        case second = "👋"
        
    }
}
