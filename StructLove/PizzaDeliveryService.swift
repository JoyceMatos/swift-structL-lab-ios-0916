//
//  PizzaDeliveryService.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class PizzaDeliveryService {
    var location: Coordinate
    var pizzasAvailable: Int
    
    init(location: Coordinate) {
        self.location = location
        self.pizzasAvailable = 10
    }
    
    func isInRange(to destination: Coordinate) -> Bool {
        if destination.distance(to: self.location) < 5000 {
            return true
        } else {
            return false
        }
        
    }
    
    func deliverPizza(to destination: Coordinate) -> Bool {
        if isInRange(to: destination) == true {
            if pizzasAvailable > 0 {
                pizzasAvailable -= 1
                return true
            }
        }
        else if pizzasAvailable == 0 {
            return false
        }
        return false
    }
}
