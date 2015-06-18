//
//  ViewController.swift
//  CFClassRoster
//
//  Created by Joey Nessif on 6/3/15.
//  Copyright (c) 2015 Joey Nessif. All rights reserved.
//

import UIKit

class ClassRosterTableViewController: UITableViewController {
  
  var people = [Person]()
  
  required init(coder aDecoder: NSCoder) {
    let person1 = Person(firstName: "Ann", lastName: "Smith")
    people.append(person1)
  
    let person2 = Person(firstName: "Bob", lastName: "Jones")
    people.append(person2)
  
    let person3 = Person(firstName: "Chris", lastName: "Martin")
    people.append(person3)
  
    let person4 = Person(firstName: "David", lastName: "House")
    people.append(person4)
  
    let person5 = Person(firstName: "Eddie", lastName: "Newton")
    people.append(person5)
    
    let person6 = Person(firstName: "Joey", lastName: "Nessif")
    people.append(person6)
    
    super.init(coder: aDecoder)
  }

  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return people.count
  }
  
  override func tableView(tableView: UITableView,cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("Persons", forIndexPath: indexPath) as! UITableViewCell
    
    let fullName = people[indexPath.row].firstName + " " + people[indexPath.row].lastName
    cell.textLabel?.text = fullName
   
    return cell
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowPerson" {
          var detailViewController = segue.destinationViewController as! DetailViewController
          var selectedIndexPath = self.tableView.indexPathForSelectedRow()
          var selectedPerson = self.people[selectedIndexPath!.row]
          detailViewController.person = selectedPerson
      
        }
  }
  
  
  
  
  

}

