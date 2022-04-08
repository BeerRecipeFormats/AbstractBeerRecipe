//
//  BeerRecipe+Yeast.swift
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
  
  struct Yeast {
    
    // MARK: - Public enums
    
    public enum `Type`{
      case lager
      case ale
      case wheat
      case wine
      case champagne
    }
    
    public enum Form {
      case liquid
      case dry
      case slant
      case culture
    }
    
    public enum Flocculation {
      case low
      case medium
      case high
      case veryHigh
    }
    
    
    // MARK: - Public Properties


    /// Name of the yeast.
    private var name: String

    /// Version of the standard.  Should be "1" for this version.
    private var version: Int = 1

    /// May be "Ale", "Lager", "Wheat", "Wine" or "Champagne"
    private var type: `Type`

    /// May be "Liquid", "Dry", "Slant" or "Culture"
    private var form: Form

    /// The amount of yeast, measured in liters.  For a starter this is the size of the starter.  If the flag
    /// AMOUNT_IS_WEIGHT is set to TRUE then this measurement is in kilograms and not liters.
    private var amount: Float? = nil

    /// TRUE if the amount measurement is a weight measurement and FALSE if the amount is a volume measurement.  Default
    /// value (if not present) is assumed to be FALSE – therefore the yeast measurement is a liquid amount by default.
    private var amountIsWeight = false

    /// The name of the laboratory that produced the yeast.
    private var laboratory: String? = nil

    /// The manufacturer’s product ID label or number that identifies this particular strain of yeast.
    private var productId: String? = nil

    /// The minimum recommended temperature for fermenting this yeast strain in degrees Celsius.
    private var minTemperature: Float? = nil

    /// The maximum recommended temperature for fermenting this yeast strain in Celsius.
    private var maxTemperature: Float? = nil

    /// May be "Low", "Medium", "High" or "Very High"
    private var flocculation: Flocculation? = nil

    /// Average attenuation for this yeast strain.
    private var attenuation: UInt16? = nil

    /// Notes on this yeast strain.  May be a multiline entry.
    private var notes: String? = nil

    /// Styles or types of beer this yeast strain is best suited for.
    private var bestFor: String? = nil

    /// Number of times this yeast has been reused as a harvested culture.  This number should be zero if this is a
    /// product directly from the manufacturer.
    private var timesCultured: UInt16? = nil

    /// Recommended of times this yeast can be reused (recultured from a previous batch)
    private var maxReuse: UInt16? = nil

    /// Flag denoting that this yeast was added for a secondary (or later) fermentation as opposed to the primary
    /// fermentation.  Useful if one uses two or more yeast strains for a single brew (eg: Lambic).  Default value is
    /// FALSE.
    private var addToSecondary = false
  }
}
