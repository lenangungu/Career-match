//
//  SkillsViewController.swift
//  Career Match
//
//  Created by Lena Ngungu on 10/29/16.
//  Copyright © 2016 Lena Ngungu. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  //  @IBOutlet weak var skillsCellLabel: UILabel!

    var index: Int?
    var skills: [String] = ["Working with your hands"," Building and fixing things", "Solving problems and puzzles",
        "Singing, acting, dancing, playing music" ,
        "Speaking or performing in front of others",
        "Helping others feel better",
        "Leading projects and people",
        "Being in charge of people",
        "Being organized",
        "Learning about history and geography",
        "Taking industrial technology classes",
        "Working with machines and tools",
        "Studying math and science",
        "Working with computers",
        "Being creative (writing, art, etc.)",
        "Helping people solve problems",
        "Teaching people how to do things",
        "Selling things or ideas",
        "Working with numbers",
        "Following a set plan",
        "Caring for a family or home "]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return skills.count
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SkillsTableViewCell") as! SkillsTableViewCell

        cell.skillsCellLabel.text = skills[indexPath.row]
        cell.cellIndex = indexPath.row
        index = indexPath.row

    return cell 
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "career")
        {
            let nextVC = segue.destination as! CareerViewController
            let sender =  SkillsTableViewCell()
            nextVC.index = sender.cellIndex
        }
        
        
        
    }
    
}

