//
//  ViewController.swift
//  Calculater
//
//  Created by Prashant Pol on 2017-01-15.
//  Copyright © 2017 Polorg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number :Double=0
    var previousnumber :Double=0
    var actionoperation=false
    var opertation=0
    
    @IBOutlet weak var lblresult: UILabel!
    @IBAction func numbers(_ sender: UIButton) {
       
        if actionoperation==true
        {
            
                lblresult.text=String(sender.tag)
                actionoperation=false
                number=Double(lblresult.text!)!
            
          
        }
        else{
            
           
                
                if(sender.tag==19)
                {
                    var n:Double=0
                    n=Double(lblresult.text!)!
                    print(n)
                    let dbl = 2.0
                    let isInteger = floor(n) == n
                    print(isInteger)
                    if (isInteger==false) {
                        print("already double cannot put more decimal")
                    }
                    else{
                    
                    if lblresult.text == ""
                    {
                        lblresult.text = "0."
                        number=Double(lblresult.text!)!
                    }
                        
                    else{
                        lblresult.text=lblresult.text! + "."
                        number=Double(lblresult.text!)!
                    }
                    
                    }
                }
                else{
                  
                    
                    
                        lblresult.text=lblresult.text! + String(sender.tag)
                        if (number - floor(number) > 0.000001) {
                            number=Double(lblresult.text!)!
                        }
                    
                   
                }
                
            
        }
       
    }
    
    
    @IBAction func button(_ sender: UIButton) {
     
        if(sender.tag==12){
            if(lblresult.text != "")
            {            print("sdfs")

                var num :Double=0
                num=Double(lblresult.text!)!
                if(num>0)
                {
                   lblresult.text=String(num * -1)
                }
                else if(num<0)
                {
                    lblresult.text=String(num * -1)

                }
            }
            
            
        }
       if lblresult.text != "" && sender.tag != 11 && sender.tag != 18
       {
       // print(previousnumber)
        
        if(lblresult.text=="+" || lblresult.text=="-" || lblresult.text=="/" || lblresult.text=="x")
        {
        }
        else
        {
            previousnumber = Double(lblresult.text!)!
            
        }
       // print(">>>>")
        //print(previousnumber)

        if sender.tag==14 { //divide
            lblresult.text="/"
 
        }
        else if sender.tag==15//multiply
        {
            lblresult.text="x"

        }
        else if sender.tag==16//minus
        {
            lblresult.text="-"

        }
        else if sender.tag==17//plus
        {
            lblresult.text = "+"
        }
        
        opertation=sender.tag
        actionoperation=true
        
      
       }
       else if sender.tag==18{
        if opertation==14
        {            number=Double(lblresult.text!)!

            lblresult.text = String(previousnumber/number)

        }
        else if opertation==15
        {            number=Double(lblresult.text!)!

            number=Double(lblresult.text!)!

            lblresult.text = String(previousnumber*number)

        }
        else if opertation==16
        {
            number=Double(lblresult.text!)!

            lblresult.text = String(previousnumber-number)

        }
        else if opertation==17
        {            number=Double(lblresult.text!)!

            lblresult.text = String(previousnumber+number)

            
        }
        else{
            
        }
      
        }
        else if sender.tag==11
       {
        lblresult.text=""
        previousnumber=0
        number=0
        opertation=0
        }
        
        if sender.tag==13//plus
        {
            number=Double(lblresult.text!)!
            print("percentage",number)
            lblresult.text = String(number * 0.01)
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

