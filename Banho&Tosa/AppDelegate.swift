//
//  AppDelegate.swift
//  Banho&Tosa
//
//  Created by Marcio Moritz on 11/13/15.
//  Copyright © 2015 Training. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // constante para teste existe usuário?
    let existeUsuario = false

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)

        // checar se usuário existe, se sim vai logo para tela principal
        if existeUsuario {
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
        
            self.window?.rootViewController = petTabsController
        } else {
            // senão faz codigo abaixo e vai para tela login
            
            window?.rootViewController = LoginViewController()
            
            }
        
        
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

