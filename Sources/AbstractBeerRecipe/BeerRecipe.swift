//
//  BeerRecipe.swift
//  AbstractBeerRecipe
//
//  Created by Thomas Bonk on 06.04.22.
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

public struct BeerRecipe {
  
  // MARK: - Enums
  
  public enum RecipeType: String, RawRepresentable {
    public typealias RawValue = String
    
    case extract      = "Extract"
    case partialMash  = "Partial Mash"
    case allGrain     = "All Grain"
  }
  
  
  // MARK: - Initialization
  
  public init(name: String, type: RecipeType) {
    self.name = name
    self.type = type
  }
  
  
  // MARK: - Public Properties
  
  /// Name of the recipe.
  public var name: String

  /// Version of the recipe record.  Should always be "1" for this version of the XML standard.
  public var version: Int = 1

  /// May be one of "Extract", "Partial Mash" or "All Grain"
  public var type: RecipeType

  /// The style of the beer this recipe is associated with.
  public var style: Style? = nil

  /// An equipment record is optional.  If included the BATCH_SIZE and BOIL_SIZE in the equipment record must match
  /// the values in this recipe record.
  public var equipment: Equipment? = nil

  /// Name of the brewer
  public var brewer: String? = nil

  /// Optional name of the assistant brewer
  public var asstBrewer: String? = nil

  /// Target size of the finished batch in liters.
  public var batchSize: Float? = nil

  /// Starting size for the main boil of the wort in liters.
  public var boilSize: Float? = nil

  /// The total time to boil the wort in minutes.
  public var boilTime: UInt16? = nil

  /// The percent brewhouse efficiency to be used for estimating the starting gravity of the beer. Not required for
  /// "Extract" recipes, but is required for "Partial Mash" and "All Grain" recipes.
  public var efficiency: Float? = nil

  /// Zero or more HOP ingredient records.
  public var hops: [Hop] = []

  /// Zero or more FERMENTABLE ingredients
  public var fermentables: [Fermentable] = []

  /// Zero or more MISC records
  public var miscs: [Misc] = []

  /// Zero or more YEAST records
  public var yeasts: [Yeast] = []

  /// Zero or more WATER records
  public var waters: [Water] = []

  /// A MASH profile record containing one or more MASH_STEPs.  NOTE: No Mash record is needed for "Extract" type.
  public var mash: [MashStep] = []

  /// Notes associated with this recipe – may be multiline.
  public var notes: String? = nil

  /// Tasting notes – may be multiline.
  public var tasteNotes: String? = nil

  /// Number between zero and 50.0 denoting the taste rating – corresponds to the 50 point BJCP rating system.
  public var tasteRating: Float? = nil

  /// The measured original (pre-fermentation) specific gravity of the beer.
  public var og: Float? = nil

  /// The measured final gravity of the finished beer.
  public var fg: Float? = nil

  /// The number of fermentation stages used – typically a number between one and three
  public var fermentationStages: UInt8? = nil

  /// Time spent in the primary in days
  public var primaryAge: UInt8? = nil

  /// Temperature in degrees Celsius for the primary fermentation.
  public var primaryTemp: UInt8? = nil

  /// Time spent in the secondary in days.
  public var secondaryAge: UInt16? = nil

  /// Temperature in degrees Celsius for the secondary fermentation.
  public var secondaryTemp: UInt8? = nil

  /// Time spent in the third fermenter in days.
  public var tertiaryAge: UInt16? = nil

  /// Temperature in the tertiary fermenter.
  public var tertiaryTemp: UInt8? = nil

  /// The time to age the beer in days after bottling.
  public var age: UInt16? = nil

  /// Temperature for aging the beer after bottling.
  public var ageTemp: UInt8? = nil

  /// Date brewed
  public var date: Date? = nil

  /// Floating point value corresponding to the target volumes of CO2 used to carbonate this beer.
  public var carbonation: Float? = nil

  /// TRUE if the batch was force carbonated using CO2 pressure, FALSE if the batch was carbonated using a priming
  /// agent.  Default is FALSE
  public var forcedCarbonation = false

  /// Text describing the priming agent such as "Honey" or "Corn Sugar" – used only if this is not a forced carbonation
  public var primingSugarName: String? = nil

  /// The temperature for either bottling or forced carbonation.
  public var carbonationTemp: UInt8? = nil

  /// Factor used to convert this priming agent to an equivalent amount of corn sugar for a bottled scenario.  For
  /// example, "Dry Malt Extract" would have a value of 1.4 because it requires 1.4 times as much DME as corn sugar to
  /// carbonate.  To calculate the amount of DME needed, the program can calculate the amount of corn sugar needed and
  /// then multiply by this factor.
  public var primingSugarEquiv: Float? = nil

  /// Used to factor in the smaller amount of sugar needed for large containers.  For example, this might be 0.5 for a
  /// typical 5 gallon keg since naturally priming a keg requires about 50% as much sugar as priming bottles.
  public var kegPrimingFactor: Float? = nil
}
