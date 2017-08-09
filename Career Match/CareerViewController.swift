//
//  CareerViewController.swift
//  Career Match
//
//  Created by Lena Ngungu on 10/29/16.
//  Copyright © 2016 Lena Ngungu. All rights reserved.
//

import UIKit

class CareerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var index: Int?
    var career: [[String]] = [["Carpenter", "Chef", "Electrician", "Engineer", "Firefighter", "Mechanic", "Pilot", "Plumber", "Truck driver"],["Carpenter", "Chef", "Electrician Engineer", "Firefighter", "Mechanic", "Pilot", "Plumber", "Truck driver"], ["Accountant", "Architect", "Astronaut", "Biologist", "Chemist", "Computer programmer", "Computer technician", "Conservationist", "Crime scene investigator", "Data security officer", "Doctor", "Engineer", "Financial advisor", "Geneticist", "Meteorologist", "Pharmacist", "Scientist", "Statistician", "Systems analyst", "Veterinarian", "Video game designer", "Web designer"], ["Actor/actress", "Agent Animator", "Art teacher", "Artist", "Designer", "Director Editor", "Landscaper", "Librarian", "Marketing executive", "Musician", "News anchor", "Photographer", "Producer", "Reporter", "Singer", "Songwriter", "Teacher" ,"Writer"], ["Actor/actress", "Agent", "Animator", "Art teacher", "Artist", "Designer", "Director Editor", "Landscaper", "Librarian", "Marketing executive", "Musician", "News anchor", "Photographer", "Producer", "Reporter", "Singer", "Songwriter", "Teacher", "Writer"],["Chiropractor", "Coach", "Counselor", "Hygienist", "Librarian", "Nurse", "Nutritionist", "Paramedic" ,"Teacher", "Therapist", "Trainer"] ]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CareerTableViewCell") as! CareerTableViewCell
        cell.careerCellLabel.text = career[index!][indexPath.row] 
        return cell 
    }


}
