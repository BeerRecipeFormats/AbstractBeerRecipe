//
//  BeerRecipe+Water.swift
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
  
  struct Water {
    
    // MARK: - Public Properties
    
    /// Name of the water profile – usually the city and country of the water profile.
    public var name: String

    /// Version of the water record.  Should always be "1" for this version of the XML standard.
    public var version: Int = 1

    /// Volume of water to use in a recipe in liters.
    public var amount: Float? = nil

    /// The amount of calcium (Ca) in parts per million.
    public var calcium: Float? = nil

    /// The amount of bicarbonate (HCO3) in parts per million.
    public var bicarbonate: Float? = nil

    /// The amount of Sulfate (SO4) in parts per million.
    public var sulfate: Float? = nil

    /// The amount of Chloride (Cl) in parts per million.
    public var chloride: Float? = nil

    /// The amount of Sodium (Na) in parts per million.
    public var sodium: Float? = nil

    /// The amount of Magnesium (Mg) in parts per million.
    public var magnesium: Float? = nil

    /// The PH of the water.
    public var pH: Float? = nil

    /// Notes about the water profile.  May be multiline.
    public var notes: String? = nil
  }
}
