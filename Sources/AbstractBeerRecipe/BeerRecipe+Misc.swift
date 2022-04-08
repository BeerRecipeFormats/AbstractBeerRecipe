//
//  BeerRecipe+Misc.swift
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
  
  struct Misc {
    
    // MARK: - Public enums
    
    public enum `Type` {
      case spice
      case waterAgent
      case herb
      case flavor
      case other
    }
    
    public enum Use {
      case boil
      case mash
      case primary
      case secondary
      case bottling
    }
    
    
    // MARK: - Public Properties

    /// Name of the misc item.
    public var name: String

    /// Version number of this element.  Should be "1" for this version.
    public var version: Int = 1

    /// May be "Spice", "Fining", "Water Agent", "Herb", "Flavor" or "Other"
    public var type: `Type`? = nil

    /// May be "Boil", "Mash", "Primary", "Secondary", "Bottling"
    public var use: Use? = nil

    /// Amount of time the misc was boiled, steeped, mashed, etc in minutes
    public var time: UInt16? = nil

    /// Amount of item used.  The default measurements are by weight, but this may be the measurement in volume units if
    /// AMOUNT_IS_WEIGHT is set to TRUE for this record.  If a liquid it is in liters, if a solid the weight is measured
    /// in kilograms.
    public var amount: Float? = nil

    /// TRUE if the amount measurement is a weight measurement and FALSE if the amount is a volume measurement.  Default
    /// value (if not present) is assumed to be FALSE.
    public var amountIsWeight = false

    /// Short description of what the ingredient is used for in text
    public var useFor: String? = nil

    /// Detailed notes on the item including usage.  May be multiline.
    public var notes: String? = nil
  }
}
