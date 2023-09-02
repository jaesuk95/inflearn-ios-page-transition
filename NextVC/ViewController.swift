//
//  ViewController.swift
//  NextVC
//
//  Created by Allen H on 2021/12/05.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    // 1) 코드로 화면 이동 (다음화면이 코드로 작성되어있을때만 가능한 방법)
    @IBAction func codeNextButtonTapped(_ sender: UIButton) {
        let firstVC = FirstViewController()
        
        // 여기서 데이터 전달한다.
        firstVC.someString = "데이터 전달 방법 1"
//        firstVC.mainLabel.text = "데이터 전달 방법 2"  // 이렇게 해도 되지만, 문제가 많다. storyBoard 로 만들면 이 방법은 불가능
        
        firstVC.modalPresentationStyle = .fullScreen
        present(firstVC, animated: true, completion: nil)
    }
    
    
    
    
    
    // 2) 코드로 스토리보드 객체를 생성해서, 화면 이동
    @IBAction func storyboardWithCodeButtonTapped(_ sender: UIButton) {
        
        // 방법 1
//        let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController // 실패하지 않을 자신 있으면 'as!'
//        present(secondVC, animated: true, completion: nil)
        
        // 방법 2
//        if let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? SecondViewController {
//            present(secondVC, animated: true, completion: nil)
//        }
        
        // 방법 3
        guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? SecondViewController else {
            // guard let, 성공하지 못하면 여기 클로저 안으로 들어온다
            return
        }
        secondVC.modalPresentationStyle = .fullScreen
        secondVC.someString = "storyboard setting"
        
        // 밑에 있는 코드는 왜 알될까? 생성자로 통해서 secondVC 를 만들었는데도 불구하고,
        // 생성자와, storyboard 는 생성되는 순간이 다르다.
        // 그래서 여기는 연결이 되기 전에 접근을 하고 있어, 에러가 나는거다.
//        secondVC.mainLabel.text = "storyboard setting"  // 에러
        
        present(secondVC, animated: true, completion: nil)
        
    }
    
    
    
    // 3) 스토리보드에서의 화면 이동(간접 세그웨이)
    @IBAction func storyboardWithSegueButtonTapped(_ sender: UIButton) {
        

        
        
        
        
    }
    

    
}

