//
//  ViewController.swift
//  First
//
//  Created by FurkiSelos on 20.03.2023.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var buttonPref: UIButton!
    @IBOutlet weak var countLAbel: UILabel!
    
    private let viewModel: ViewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }
    
}

extension ViewController {
    
    private func setupUI(){
        buttonPref.setTitle("Zikir Çek", for: .normal)
        countLAbel.text = "Zikir çekmeye hazırmısın ?"
        countLAbel.textColor = .white
        view.backgroundColor = .black
    }
    
}


extension ViewController {
    @IBAction func countPlus(_ sender: Any) {
        print(viewModel.countCycle())
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
            self.view.backgroundColor = .black
            self.countLAbel.textColor = .white
        }
        
        if viewModel.reloadCycle(){
            countLAbel.text = "Evet tamamladın tespihi at"
        }else{
            countLAbel.text = "Kaç defa zikir çektin : \(viewModel.countCycle())"
            view.backgroundColor = .white
            countLAbel.textColor = .black
        }
    }
}
