//
//  HellaMasterTableViewController.swift
//  HellaCells
//
//  Created by Missy Allan on 10/9/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaMasterTableViewController: UITableViewController {
    
    var numbersArray = [Int]()
    



    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1...100 {
        let number = numbersArray.count + 1
        self.numbersArray.append(number)
            
        }

        self.tableView.backgroundColor = UIColor.purple
        
        
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return numbersArray.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)
        
        cell.textLabel?.text = String(numbersArray[indexPath.row])
        cell.backgroundColor = UIColor.getRandomColor()
      

        return cell
    }
    

    // MARK: - Navigation


 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "showDetail" {
        let destinationViewController = segue.destination as! HellaDetailViewController
        
        let  selectedNumberIndex = self.tableView.indexPathForSelectedRow?.row
        
        if let selectNumber = selectedNumberIndex{
            destinationViewController.number = String(self.numbersArray[selectNumber])
        }
        
 
      }

    }
  
}



extension UIColor {
    class func getRandomColor() -> UIColor {
        // var color: UIColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        
        let red: CGFloat = CGFloat(drand48())
        let green: CGFloat = CGFloat(drand48())
        let blue: CGFloat = CGFloat(drand48())
        
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        
    }
 
    
    
}












