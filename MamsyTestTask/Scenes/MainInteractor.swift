//
//  MainInteractor.swift
//  MamsyTestTask
//
//  Created by  Kostantin Zarubin on 21.07.2018.
//  Copyright (c) 2018  Kostantin Zarubin. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates
//  https://github.com/HelmMobile/clean-swift-templates

protocol MainInteractorInput {
    func getResult(number: Int)
}

protocol MainInteractorOutput {
    func presentResult(response: MainScene.getResult.Response)
}

protocol MainDataSource {
    
}

protocol MainDataDestination {
    
}

class MainInteractor: MainInteractorInput, MainDataSource, MainDataDestination {
    var output: MainInteractorOutput?
    
    // MARK: Business logic
    func getResult(number: Int) {
        let worker = MainWorker()
        let data = worker.calculate(number: number)
        let response = MainScene.getResult.Response(primeNumber: data)
        output?.presentResult(response: response)
    }

}
