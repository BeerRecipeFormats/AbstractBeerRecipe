//
//  BeerRecipe+Style.swift
//  AbstractBeerRecipe
//
//  Created by Thomas Bonk on 07.04.22.
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
  
  struct Style {
    
    // MARK: - Public Enums
    
    public enum StyleType: String {
      case lager = "Lager"
      case ale   = "Ale"
      case mead  = "Mead"
      case wheat = "Wheat"
      case mixed = "Mixed"
      case cider = "Cider"
    }
    
    
    // MARK: - Initialization
    
    public init(name: String) {
      self.name = name
    }
    
    
    // MARK: - Public Properties

    /// Name of the style profile – usually this is the specific name of the style – for example "Scottish Wee Heavy Ale"
    /// and not the Category which in this case might be "Scottish Ale"
    public var name: String

    /// Category that this style belongs to – usually associated with a group of styles such as "English Ales" or
    /// "Amercian Lagers".
    public var category: String? = nil

    /// Version of the style record.  Should always be "1" for this version of the XML standard.
    public var version: Int = 1

    /// Number or identifier associated with this style category.  For example in the BJCP style guide, the
    /// "American Lager" category has a category number of "1".
    public var categoryNumber: String? = nil

    /// The specific style number or subcategory letter associated with this particular style.  For example in the BJCP
    /// style guide, an American Standard Lager would be style letter "A" under the main category.  Letters should be
    /// upper case.
    public var styleLetter: String? = nil

    /// The name of the style guide that this particular style or category belongs to.  For example "BJCP" might denote
    /// the BJCP style guide, and "AHA" would be used for the AHA style guide.
    public var styleGuide:  String? = nil

    /// May be "Lager", "Ale", "Mead", "Wheat", "Mixed" or "Cider".  Defines the type of beverage associated with this
    /// category.
    public var type: StyleType? = nil

    /// The minimum specific gravity as measured relative to water.  For example "1.040" might be a reasonable minimum
    /// for a Pale Ale.
    public var ogMin: Float? = nil

    /// The maximum specific gravity as measured relative to water.
    public var ogMax: Float? = nil

    /// The minimum final gravity as measured relative to water.
    public var fgMin: Float? = nil

    /// The maximum final gravity as measured relative to water.
    public var fgMax: Float? = nil

    /// The recommended minimum bitterness for this style as measured in International Bitterness Units (IBUs)
    public var ibuMin: Float? = nil

    /// The recommended maximum bitterness for this style as measured in International Bitterness Units (IBUs)
    public var ibuMax: Float? = nil

    /// The minimum recommended color in SRM
    public var colorMin: Int? = nil

    /// The maximum recommended color in SRM.
    public var colorMax: Int? = nil

    /// Minimum recommended carbonation for this style in volumes of CO2
    public var carbMin: Float? = nil

    /// The maximum recommended carbonation for this style in volumes of CO2
    public var carbMax: Float? = nil

    /// The minimum recommended alcohol by volume as a percentage.
    public var abvMin: Float? = nil

    /// The maximum recommended alcohol by volume as a percentage.
    public var abvMax: Float? = nil

    /// Description of the style, history
    public var notes: String? = nil

    /// Flavor and aroma profile for this style
    public var profile: String? = nil

    /// Suggested ingredients for this style
    public var ingredients: String? = nil

    /// Example beers of this style.
    public var examples: String? = nil
  }
}
