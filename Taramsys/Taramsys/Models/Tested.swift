//
//  Tested.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on July 03, 2020
//
import Foundation

struct Tested {

	let individualstestedperconfirmedcase: String?
	let positivecasesfromsamplesreported: String?
	let samplereportedtoday: String?
	let source: String?
	let source1: String?
	let testedasof: String?
	let testpositivityrate: String?
	let testsconductedbyprivatelabs: String?
	let testsperconfirmedcase: String?
	let testspermillion: String?
	let totalindividualstested: String?
	let totalpositivecases: String?
	let totalsamplestested: String?
	let updatetimestamp: String?

	init(_ dict: [String: Any]) {
		individualstestedperconfirmedcase = dict["individualstestedperconfirmedcase"] as? String
		positivecasesfromsamplesreported = dict["positivecasesfromsamplesreported"] as? String
		samplereportedtoday = dict["samplereportedtoday"] as? String
		source = dict["source"] as? String
		source1 = dict["source1"] as? String
		testedasof = dict["testedasof"] as? String
		testpositivityrate = dict["testpositivityrate"] as? String
		testsconductedbyprivatelabs = dict["testsconductedbyprivatelabs"] as? String
		testsperconfirmedcase = dict["testsperconfirmedcase"] as? String
		testspermillion = dict["testspermillion"] as? String
		totalindividualstested = dict["totalindividualstested"] as? String
		totalpositivecases = dict["totalpositivecases"] as? String
		totalsamplestested = dict["totalsamplestested"] as? String
		updatetimestamp = dict["updatetimestamp"] as? String
	}

}