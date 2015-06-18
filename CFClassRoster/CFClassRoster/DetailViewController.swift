//
//  DetailViewController.swift
//  CFClassRoster
//
//  Created by Joey Nessif on 6/14/15.
//  Copyright (c) 2015 Joey Nessif. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  var person = Person(firstName: "", lastName: "")
  @IBOutlet weak var firstName: UILabel!
  
  @IBOutlet weak var lastName: UILabel!
  
  override func viewDidLoad() {
      super.viewDidLoad()
      firstName.text! = person.firstName
      lastName.text! = person.lastName
      // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
