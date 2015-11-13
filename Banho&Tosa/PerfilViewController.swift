//
//  PerfilViewController.swift
//  Banho&Tosa
//
//  Created by Marcio Moritz on 11/13/15.
//  Copyright © 2015 Training. All rights reserved.
//

import UIKit

class PerfilViewController: UIViewController {

    @IBAction func cadastrarPetsPressed(sender: UIButton) {
        
        let cadastroPetsVC = CadastroPetsViewController()
        presentViewController(cadastroPetsVC, animated: true, completion: nil)
        
    }
    
    @IBAction func okPressed(sender: UIButton) {
        
        // salvar dados do cliente
        // e voltar para tela anterior
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
