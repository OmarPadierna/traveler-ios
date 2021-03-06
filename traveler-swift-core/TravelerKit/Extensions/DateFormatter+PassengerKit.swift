//
//  DateFormatter+PassengerKit.swift
//  TravelerKit
//
//  Created by Ata Namvari on 2018-10-01.
//  Copyright © 2018 Ata Namvari. All rights reserved.
//

import Foundation

extension DateFormatter {

    public static var withFullDate: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.calendar = Calendar(identifier: .iso8601)
        dateFormatter.dateFormat = "yyyymmdd"
        return dateFormatter
    }()

    public static var yearMonthDay: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.calendar = Calendar(identifier: .iso8601)
        dateFormatter.dateFormat = "yyyy/MM/dd"
        return dateFormatter
    }()

    public static var withoutTimezone: DateFormatter = {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        return formatter
    }()

    public static var timeFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.locale = Locale.current
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter
    }()

    public static var longFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.dateFormat = "EEEE, MMMM d, yyyy"
        return formatter
    }()

    public static var monthAsTextFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.dateFormat = "MMMM d, yyyy"
        return formatter
    }()

    public static var dateOnlyFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()

    public static var shortDisplayFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()

    public func fullFormatter(with timeZone: TimeZone) -> DateFormatter {
        let dateFormatter = self.copy() as! DateFormatter
        dateFormatter.calendar = Calendar(identifier: .iso8601)
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = timeZone
        return dateFormatter
    }
}

extension ISO8601DateFormatter {
    public static var dateOnlyFormatter: ISO8601DateFormatter = {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withFullDate, .withDashSeparatorInDate]
        return formatter
    }()

    public static var fullFormatter: ISO8601DateFormatter = {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withFullDate, .withFullTime]
        return formatter
    }()
}
