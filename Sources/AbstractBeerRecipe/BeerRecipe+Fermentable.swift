//
//  BeerRecipe+Fermentable.swift
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
  
  struct Fermentable {
    
    // MARK: - Public Enums
    
    public enum `Type` {
      case grain
      case sugar
      case extract
      case dryExtract
      case adjunct
    }
    
    
    // MARK: - Public Properties

    /// Fermentable name
    public var name: String

    /// Version of the record, should be "1"
    public var version: Int = 1

    /// Fermentable type
    public var type: `Type`? = nil

    /// Amount in kg
    public var amount: Float? = nil

    /// Yield
    public var yield: Float? = nil

    /// Color (Lovibond, or SRM for liquid extract)
    public var color: Float? = nil

    /// Flag that denotes whether the fermentable shall be added after boiling the wort
    public var addAfterBoil = false

    /// Origin of the fermentable
    public var origin: String? = nil

    //7 Supplier of the fermentable
    public var supplier: String? = nil

    /// Notes, can be multiline
    public var notes: String? = nil

    /// TODO
    public var coarseFineDiff: Float? = nil

    /// Moisture of the fermentable
    public var moisture: UInt16? = nil

    /// TODO
    public var diastaticPower: Float? = nil

    /// Protein in percent
    public var protein: Float? = nil

    /// TODO
    public var maxInBatch: Float? = nil

    /// TODO
    public var recommendMash = false

    /// TODO
    public var ibuGalPerLb: Float? = nil
    
  }
}
