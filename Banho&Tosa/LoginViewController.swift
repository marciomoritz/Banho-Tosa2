//
//  LoginViewController.swift
//  Banho&Tosa
//
//  Created by Marcio Moritz on 11/13/15.
//  Copyright © 2015 Training. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBAction func loginPressed(sender: UIButton) {
        
        // fazer o login do usuário
        // tratar erros
        // ir para tela principal se tudo OK
        
        let petTabsController = UITabBarController()

        let listaVC = ListaViewController()
        let mapaVC = MapaViewController()
        let historicoVC = HistoricoViewController()
        let meuPerfilVC = MeuPerfilViewController()
        
        petTabsController.viewControllers = [listaVC,mapaVC,historicoVC,meuPerfilVC]
        
        listaVC.tabBarItem = UITabBarItem(title: "Lista", image: nil, tag: 1)
        mapaVC.tabBarItem = UITabBarItem(title: "Mapa", image: nil, tag: 2)
        historicoVC.tabBarItem = UITabBarItem(title: "Histórico", image: nil, tag: 3)
        meuPerfilVC.tabBarItem = UITabBarItem(title: "Meu Perfil", image: nil, tag: 4)
        
        presentViewController(petTabsController, animated: true, completion: nil)
        
        
        
    }
    
    @IBAction func primeiroAcessoPressed(sender: UIButton) {
        
        let perfilVC = PerfilViewController()
        presentViewController(perfilVC, animated: true, completion: nil)
        
        
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
