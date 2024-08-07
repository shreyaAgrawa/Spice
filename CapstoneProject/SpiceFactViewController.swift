//
//  SpiceFactViewController.swift
//  CapstoneProject
//
//  Created by Shreya Agrawal on 5/15/22.
//

import UIKit

class SpiceFactViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var spiceName = ["Basil", "Sage", "Cumin", "Turmeric", "Saffron"]
    var descriptions = ["Basil also called great basil, is a culinary herb of the family Lamiaceae (mints). It is a tender plant, and is used in cuisines worldwide.", "Sage is an herb from an evergreen shrub, Salvia officinalis, in the mint family. Its long, grayish-green leaves take on a velvety, cotton-like texture when rubbed (meaning ground lightly and passed through a coarse sieve). Sage is grown in the United States.", "Cumin is the pale green seed of Cuminum cyminum, a small herb in the parsley family. The seed is uniformly eliptical and deeply furrowed. Iran and India. Cumin is frequently used in Mexican dishes such as chili con carne and hot tamales. Cumin has a distinctive, slightly bitter yet warm flavor.", "Turmeric is a common spice that comes from the root of Curcuma longa. It contains a chemical called curcumin, which might reduce swelling. Turmeric has a warm, bitter taste and is frequently used to flavor or color curry powders, mustards, butters, and cheeses.", "Saffron is the dried stigma from the Crocus sativus flower. The name “saffron” derives from an Arabic word meaning “to become yellow” which refers to saffron's use as a bright yellow dye. The Latin name “crocus” most likely stems from an ancient Sanskrit word for saffron."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func NewFactPressed(_ sender: Any) {
        
        var index = Int.random(in: 0 ..< 5)
        nameLabel.text = spiceName[index]
        descriptionLabel.text = descriptions[index]
        imageView.image = UIImage(named: spiceName[index])
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
