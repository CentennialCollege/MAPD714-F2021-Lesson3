/*
 * Author   : Tom Tsiliopoulos
 * StudentID: 100100100
 * Date     : September 23, 2021
 *
 * Author   : John Smith
 * StudentID: 101101101
 * Date     : September 23, 2021
 */

import UIKit

class ViewController: UIViewController
{
    // Variables to consider
    var operand1:String = ""
    var operand2:String = ""
    var currentOperator:String = ""
    
    // Outlets
    @IBOutlet weak var ResultLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    // Actions

    @IBAction func OnSpecialButton_Pressed(_ sender: UIButton)
    {
        
    }
    
    @IBAction func OnNumberButton_Pressed(_ sender: UIButton)
    {
        var button_text = sender.titleLabel!.text!
        
        switch button_text
        {
        case ".":
            if !operand1.contains(".")
            {
                operand1.append(button_text)
            }
        case "0":
            if operand1 != "0"
            {
                operand1.append(button_text)
                
            }
            
        default:
            operand1.append(button_text)
            
        }
        
        
        ResultLabel.text = operand1
        
        
        
    }
    
    
    @IBAction func OnOperatorButton_Pressed(_ sender: UIButton)
    {
        
    }
    
    
}

