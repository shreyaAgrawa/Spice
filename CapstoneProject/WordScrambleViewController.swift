//
//  WordScrambleViewController.swift
//  CapstoneProject
//
//  Created by Shreya Agrawal on 5/15/22.
//

import UIKit

class WordScrambleViewController: UIViewController {
    var numQuestions = 5
    var questionsFinished = 0
    var numRight = 0
    @IBOutlet weak var ImageViewSmile: UIImageView!
    @IBOutlet weak var ScrambledWord: UILabel!
    @IBOutlet weak var WordTF: UITextField!
    @IBOutlet weak var NextButton: UIButton!
    @IBOutlet weak var ResultsLabel: UILabel!
    var scrambledWords = ["goernoa", "ranodeirc", "yaracwa", "cnuim", "laanilv", "ardcaomm", "repepp", "fafnros", "sblai", "maalsa", "rast nisae", "mcnaonni", "bya elfa", "kapriap", "erd iiclh", "nfnele", "engutm", "rgieng", "rgiacl", "aumstdr dese", "utcrrmei", "ncaeney"]
    var rightWords = ["oregano", "coriander", "caraway", "cumin", "vanilla", "cardamom", "pepper", "saffron", "basil", "masala", "star anise", "cinnamon", "bay leaf", "paprika", "red chili", "fennel", "nutmeg", "ginger", "garlic", "mustard seed", "turmeric", "cayenne"]
    var currentIndex = Int.random(in: 0 ..< 22)
    
    override func viewWillAppear(_ animated: Bool) {
        ScrambledWord.text = scrambledWords[currentIndex]
    }
    
    @IBAction func NextPressed(_ sender: Any) {
        var answer = WordTF.text
        if (rightWords[currentIndex] == WordTF.text?.lowercased())
        {
            numRight = numRight + 1
            ImageViewSmile.image = UIImage(named: "Smile")
        }
        else
        {
        ImageViewSmile.image = UIImage(named: "Sad")
        }
        questionsFinished = questionsFinished + 1
        if (questionsFinished == numQuestions)
        {
            ResultsLabel.text = "You got \(numRight) out of \(numQuestions)"
            numRight = 0
            questionsFinished = 0
            WordTF.text = ""
        }
        else
        {
            currentIndex = Int.random(in: 0 ..< 21)
            ScrambledWord.text = scrambledWords[currentIndex]
            WordTF.text = ""
            
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
