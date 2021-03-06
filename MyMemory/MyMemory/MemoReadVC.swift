//
//  MemoReadVC.swift
//  MyMemory
//
//  Created by 이윤수 on 2020/12/02.
//

import UIKit

class MemoReadVC: UIViewController {

    // 콘텐츠 데이터를 저장하는 변수
    var param: MemoData?
    
    @IBOutlet weak var subject: UILabel!
    @IBOutlet weak var contents: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    
    override func viewDidLoad() {
        self.subject.text = param?.title
        self.contents.text = param?.contents
        self.img.image = param?.image
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd일 HH:mm분에 작성됨"
        let dataString = formatter.string(from: (param?.regdate)!)
        
        self.title = dataString
    }
    

    

}
