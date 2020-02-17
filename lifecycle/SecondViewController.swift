//
//  SecondViewController.swift
//  lifecycle
//
//  Created by Valeriy Kovalevskiy on 2/17/20.
//  Copyright © 2020 v.kovalevskiy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var someProperties: String? {
        didSet {
            print("someProperties")
        }
    }
    
    @IBOutlet weak var closeButton: UIButton! {
        didSet {
            print("closeButton")
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        print("awakeFromNib")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // срабатывает после загрузки вьюю вью загрузилось, не видим на экране, но есть в памяти.
        
        //инициализация переменных и объектов

        print("viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //cрабатывает перед появлением вью на экране
        
        //для более тонкой настройки вью, которые нужно сделать без анимации

        print("viewWillAppear")
    }
    
    
    override func updateViewConstraints() {
        print("updateViewConstraints")
        
        //вызывается перед вью вил лэйаут сабвьюс
        //обновляем констрейнты, затем обращаемся к суперклассу
        super.updateViewConstraints()
    }
    
    override func viewWillLayoutSubviews() {
        //срабатывает перед тем, как размер вью поменяется под размер экрана
        //изменение размеров сабвью и их положение
        
        print("viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        //срабатывает после того, как размер вью изменился под размер экрана
        //сохранение последнего положения элементов

        print("viewDidLayoutSubviews")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //вью появился на экране
        //появляется больше одного раза
        //лучше не хранить свойства и экземпляры объекта

        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        //сброс значений и параметров, отключение анимаций
        print("viewDidDisappear")
    }
    
    deinit {
        //выгружает объект из памяти
        print("deinit")
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("viewWillTransition")
        //срабатывает при повороте экрана девайса
        //для обратотки констрейнт и анимаций при повороте
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //срабатывает при заполнении памяти устройства
        //обнуление не используемых объектов
    }
    
    
    
    
    
    

    
    
    
    
    
    
    
    
    @IBAction func didTappedCloseButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
