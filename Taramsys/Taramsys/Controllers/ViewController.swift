//
//  ViewController.swift
//  Taramsys
//
//  Created by Pavan Kalyan Jonnadula on 02/07/20.
//  Copyright © 2020 Pavan Kalyan Jonnadula. All rights reserved.
//

import UIKit

class ViewController: UIViewController , HADropDownDelegate{
    
    @IBOutlet weak var deathsCases: UILabel!
    @IBOutlet weak var stateName: UILabel!
    @IBOutlet weak var statesDropDown: HADropDown!
    @IBOutlet weak var progressSpinner: UIActivityIndicatorView!
    @IBOutlet weak var recoveredCases: UILabel!
    @IBOutlet weak var confirmedCasesLabel: UILabel!
    @IBOutlet weak var activeCases: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    var allStateStrings = [String]()
    var stateWiseStattitics = [Statewise]()
    
    //MARK: UIViewController Delegate Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        getAllStatesStatitics()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        statesDropDown.layer.borderWidth = 1.0
        statesDropDown.layer.borderColor = UIColor.black.cgColor
        statesDropDown.delegate = self
        dateLabel.font = UIFont.italicSystemFont(ofSize: 14)
    }
    //MARK: API Call to fetch data
    func getAllStatesStatitics(){
        progressSpinner.isHidden = false
        WebService.shared.getRequest(urlString: "https://api.covid19india.org/data.json") { (jsonData, response, error) in
            do {
                if let dict = try JSONSerialization.jsonObject(with: jsonData ?? Data(), options: .allowFragments) as? [String: Any] {
                    let model = MainModel(dict)
                    self.stateWiseStattitics = model.statewise ?? []
                    self.filterAndAssignDataToDropDown()
                }
            } catch {
                // Handle error
            }
        }
    }
    
    //MARK: Methods for initialization of data and filter the statitics accodring to state
    func initializeDataFromApi(slectedState : Statewise){
        deathsCases.text = slectedState.deaths ?? "0"
        activeCases.text = slectedState.active ?? "0"
        confirmedCasesLabel.text = slectedState.confirmed ?? "0"
        recoveredCases.text = slectedState.recovered ?? "0"
        dateLabel.text =  "As on \(slectedState.lastupdatedtime ?? "No Date")"

    }
    func filterAndAssignDataToDropDown(){
        allStateStrings = stateWiseStattitics.map { (stateData) -> String in
            if stateData.state == "Total"{
                self.initializeDataFromApi(slectedState: stateData)
            }
            return (stateData.state ?? "All")
        }
        statesDropDown.items = allStateStrings
        self.progressSpinner.isHidden = true

    }
    func didSelectItem(dropDown: HADropDown, at index: Int) {
        dropDown.title = ""
        stateName.text = allStateStrings[index]
        progressSpinner.isHidden = false
        let filterStateDetailsAccordingToSelection = stateWiseStattitics.filter { (stateData) -> Bool in
            if stateData.state == allStateStrings[index] {
                return true
            }
            return false
        }
        progressSpinner.isHidden = true
        initializeDataFromApi(slectedState: filterStateDetailsAccordingToSelection[0])
    }
}

