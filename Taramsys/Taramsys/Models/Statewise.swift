//
//  Statewise.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on July 03, 2020
//
import Foundation

struct Statewise {

	let active: String?
	let confirmed: String?
	let deaths: String?
	let deltaconfirmed: String?
	let deltadeaths: String?
	let deltarecovered: String?
	let lastupdatedtime: String?
	let migratedother: String?
	let recovered: String?
	let state: String?
	let statecode: String?
	let statenotes: String?

	init(_ dict: [String: Any]) {
		active = dict["active"] as? String
		confirmed = dict["confirmed"] as? String
		deaths = dict["deaths"] as? String
		deltaconfirmed = dict["deltaconfirmed"] as? String
		deltadeaths = dict["deltadeaths"] as? String
		deltarecovered = dict["deltarecovered"] as? String
		lastupdatedtime = dict["lastupdatedtime"] as? String
		migratedother = dict["migratedother"] as? String
		recovered = dict["recovered"] as? String
		state = dict["state"] as? String
		statecode = dict["statecode"] as? String
		statenotes = dict["statenotes"] as? String
	}

}