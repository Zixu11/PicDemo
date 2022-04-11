//
//  TextSearchViewController.swift
//  PicDemo
//
//  Created by 王梓旭 on 2022/4/10.
//

import UIKit

class TextSearchViewController: UIViewController {
    
    
    @IBOutlet weak var substanceKeywordTextField: UITextField!
    @IBOutlet weak var colorKeywordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func searchNow(_ sender: UIButton) {
        self.performSegue(withIdentifier: K.segues.textToImage, sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == K.segues.textToImage {
            let destinationVC = segue.destination as! ImageReturnViewController
            destinationVC.color = colorKeywordTextField.text ?? "red"
            destinationVC.text = substanceKeywordTextField.text ?? "dog"
        }
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