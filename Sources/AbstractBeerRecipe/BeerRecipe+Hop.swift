//
//  BeerRecipe+Hop.swift
//  AbstractBeerRecipe
//
//  Created by Thomas Bonk on 08.04.22.
//  Copyright © 2022 Thomas Bonk <thomas@meandmymac.de>
//
//  Licensed under the Apache License, Version 2.0 (the "License"):
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation

public extension BeerRecipe {
  
  struct Hop {
    
    // MARK: - Public Enums
    
    public enum Usage: String, RawRepresentable {
      public typealias RawValue = String
      
      case boil = "Boil"
      case dryHop = "Dry Hop"
      case mash = "Mash"
      case firstWort = "First Wort"
      case aroma = "Aroma"
    }
    
    public enum HopType: String, RawRepresentable {
      public typealias RawValue = String
      
      case bittering = "Bittering"
      case aroma = "Aroma"
      case both = "Both"
    }
    
    public enum Form: String, RawRepresentable {
      public typealias RawValue = String
      
      case pellet = "Pellet"
      case plug = "Plug"
      case leaf = "Leaf"
    }
    
    
    // MARK: - Initialization
    
    public init(name: String) {
      self.name = name
    }
    
    
    // MARK: - Public Properties
    
    /// Hop name.
    public var name: String

    /// Version of the record.  Should always be "1" for this version of the XML standard.
    public var version: Int = 1

    /// Alpha acid in percent
    public var alpha: Float? = nil

    /// Amount in gramms
    public var amount: Float? = nil

    /// Hop usage
    public var use: Usage? = nil

    /// Boiling time
    public var time: UInt16? = nil

    /// Notes, might be multiline
    public var notes: String? = nil

    /// Hop type
    public var type: HopType? = nil

    /// Hop form
    public var form: Form? = nil

    /// Beate acid in percent
    public var beta: Float? = nil

    /// TODO
    public var hsi: Float? = nil

    /// Origin of the hop
    public var origin: String? = nil

    /// Hops that can substitue this hop
    public var substitutes: String? = nil

    /// TODO
    public var humulene: Float? = nil

    /// TODO
    public var caryophyllene: Float? = nil

    /// TODO
    public var cohumulone: Float? = nil

    /// TODO
    public var myrcene: Float? = nil
  }
}
