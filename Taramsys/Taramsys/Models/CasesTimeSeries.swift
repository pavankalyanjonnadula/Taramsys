//
//  CasesTimeSeries.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on July 03, 2020
//
import Foundation

struct CasesTimeSeries {

	let dailyconfirmed: String?
	let dailydeceased: String?
	let dailyrecovered: String?
	let date: String?
	let totalconfirmed: String?
	let totaldeceased: String?
	let totalrecovered: String?

	init(_ dict: [String: Any]) {
		dailyconfirmed = dict["dailyconfirmed"] as? String
		dailydeceased = dict["dailydeceased"] as? String
		dailyrecovered = dict["dailyrecovered"] as? String
		date = dict["date"] as? String
		totalconfirmed = dict["totalconfirmed"] as? String
		totaldeceased = dict["totaldeceased"] as? String
		totalrecovered = dict["totalrecovered"] as? String
	}

}