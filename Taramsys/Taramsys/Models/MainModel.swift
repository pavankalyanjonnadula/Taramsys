//
//  MainModel.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on July 03, 2020
//
import Foundation

struct MainModel {

	let casesTimeSeries: [CasesTimeSeries]?
	let statewise: [Statewise]?
	let tested: [Tested]?

    
    init(casesTimeSeries: [CasesTimeSeries]?, statewise: [Statewise]?, tested: [Tested]?) {
        self.casesTimeSeries = casesTimeSeries
        self.statewise = statewise
        self.tested = tested
    }
    
	init(_ dict: [String: Any]) {
        var casesTimeSeries1: [CasesTimeSeries]?
        var statewise1: [Statewise]?
        var tested1: [Tested]?
        
		if let casesTimeSeriesDictArray = dict["cases_time_series"] as? [[String: Any]] {
			casesTimeSeries1 = casesTimeSeriesDictArray.map { CasesTimeSeries($0) }
		}

		if let statewiseDictArray = dict["statewise"] as? [[String: Any]] {
			statewise1 = statewiseDictArray.map { Statewise($0) }
		}

		if let testedDictArray = dict["tested"] as? [[String: Any]] {
			tested1 = testedDictArray.map { Tested($0) }
		}
        self.init(casesTimeSeries: casesTimeSeries1, statewise: statewise1, tested: tested1)
	}

}
