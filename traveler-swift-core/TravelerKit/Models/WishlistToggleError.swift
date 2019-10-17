//
//  WishlistToggleError.swift
//  TravelerKit
//
//  Created by Omar Padierna on 2019-09-03.
//  Copyright © 2019 Ata Namvari. All rights reserved.
//

import Foundation

public enum WishlistToggleError: Error {
    /// The traveler is not identified yet. Developer must call `Traveler.identify()` before attempting to wishlsit or unwishlist an item.
    case unidentifiedTraveler
}