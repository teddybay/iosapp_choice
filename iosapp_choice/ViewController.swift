//
//  ViewController.swift
//  iosapp_choice
//
//  Created by 陳伯墉 on 2018/12/4.
//  Copyright © 2018年 00457006. All rights reserved.
//

import UIKit

struct questionstruct{
    var question:String
    var choose:[String]
    var answer:String
}
var questionArray:[questionstruct]=[]
var count=0
var score=0
var check=0
func set_questionArray(){
    questionArray.append(questionstruct(question:"連城訣是誰的作品？", choose:["古龍","金庸","黃易","倪匡"], answer: "金庸"))
    questionArray.append(questionstruct(question:"唐朝的開國皇帝是？", choose:["唐高祖","唐太宗","唐高宗","唐玄宗"], answer:"唐高祖"))
    questionArray.append(questionstruct(question:"被稱為花中皇后的是？", choose:["玫瑰花","菊花","月季花","富貴花"], answer: "月季花"))
    questionArray.append(questionstruct(question:"電是誰發明的？", choose:["法拉第","奧斯特","福蘭克林","無解"], answer: "無解"))
    questionArray.append(questionstruct(question:"被稱為英雄樹的是？", choose:["梧桐樹","鐵樹","木棉","毒箭木"], answer: "木棉"))
    questionArray.append(questionstruct(question:"榕樹是屬於哪類植物？", choose:["指示植物","絞殺植物","纖維植物","高山植物"], answer: "絞殺植物"))
    questionArray.append(questionstruct(question:"《百家姓》成書於哪朝？", choose:["唐朝","宋朝","元朝","明朝"], answer: "宋朝"))
    questionArray.append(questionstruct(question:"端月是農曆的幾月？", choose:["1","3","5","7"], answer: "1"))
    questionArray.append(questionstruct(question:"釋迦摩尼是是哪位國王的兒子？", choose:["孔雀明王","阿育王","淨飯王","悟飯王"], answer: "淨飯王"))
    questionArray.append(questionstruct(question:"人有多少對肋骨？", choose:["10","12","14","16"], answer: "12"))
    questionArray.append(questionstruct(question:"美國最早的紙幣叫什麼?", choose:["大陸幣","美幣","星幣","綠幣"], answer: "大陸幣"))
    questionArray.append(questionstruct(question:"哥斯達黎加在哪個洲?", choose:["歐洲","亞洲","南美洲","拉丁美洲"], answer: "拉丁美洲"))
    questionArray.append(questionstruct(question:"古詩《題西林壁》的作者是?", choose:["蘇東坡","王國維","李白","杜甫"], answer: "蘇東坡"))
    questionArray.append(questionstruct(question:"玉皇太后(猜地名)", choose:["天母","永和","學甲","新店"], answer: "天母"))
    questionArray.append(questionstruct(question:"飲水思源(猜地名)", choose:["知本","北投","新營","新莊"], answer: "知本"))
    questionArray.append(questionstruct(question:"仙女下凡(猜地名)", choose:["白沙","湖西","七美","望安"], answer: "七美"))
    questionArray.append(questionstruct(question:"雨後春筍(猜地名)", choose:["新竹","台北","彰化","嘉義"], answer: "新竹"))
    questionArray.append(questionstruct(question:"花中之王(猜地名)", choose:["牡丹","蓮花","玫瑰","梅花"], answer: "牡丹"))
    questionArray.append(questionstruct(question:"有家歸不得(猜地名)", choose:["望鄉","思鄉","天母","新竹"], answer: "望鄉"))
    questionArray.append(questionstruct(question:"歌劇「費加洛婚禮」為何者作品？", choose:["莫札特","貝多芬","巴哈","柴可夫斯基"], answer: "莫札特"))
    questionArray.append(questionstruct(question:"被稱為“第七藝術”的是？", choose:["馬戲團","話劇","電影","網路"], answer: "話劇"))
}
class ViewController: UIViewController {
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var totalscore: UILabel!
    @IBOutlet var select: [UIButton]!
    @IBOutlet weak var enter: UIButton!
    
    func set(){
        number.text="第"+String(count+1)+"題"
        questionArray[count].choose.shuffle()
        question.text=questionArray[count].question
        select[0].setTitle(questionArray[count].choose[0], for:UIControl.State.normal)
        select[1].setTitle(questionArray[count].choose[1], for:UIControl.State.normal)
        select[2].setTitle(questionArray[count].choose[2], for:UIControl.State.normal)
        select[3].setTitle(questionArray[count].choose[3], for:UIControl.State.normal)
        totalscore.text="分數："+String(score)
    }
    @IBAction func selectA(_ sender: UIButton) {
        if  (questionArray[count].choose[0]==questionArray[count].answer) {
            score += 10
            
            select[1].isHidden = true
            select[2].isHidden = true
            select[3].isHidden = true
            
            next()
        }else{
            
            select[1].isHidden = true
            select[2].isHidden = true
            select[3].isHidden = true
            
            next()
        }
        if count == 10{
            warning()
        }
    }
    @IBAction func selectB(_ sender: UIButton) {
        if  (questionArray[count].choose[1]==questionArray[count].answer) {
            score += 10
            
            select[0].isHidden = true
            select[2].isHidden = true
            select[3].isHidden = true
            
            next()
        }else{
            
            select[0].isHidden = true
            select[2].isHidden = true
            select[3].isHidden = true
            
            next()
        }
        if count == 10{
            warning()
        }
    }
    @IBAction func selectC(_ sender: UIButton) {
        if  (questionArray[count].choose[2]==questionArray[count].answer) {
            score += 10
            
            select[0].isHidden = true
            select[1].isHidden = true
            select[3].isHidden = true
            
            next()
        }else{
            
            select[0].isHidden = true
            select[1].isHidden = true
            select[3].isHidden = true
            
            next()
        }
        if count == 10{
            warning()
        }
    }
    @IBAction func selectD(_ sender: UIButton) {
        if  (questionArray[count].choose[3]==questionArray[count].answer) {
            score += 10
            
            select[0].isHidden = true
            select[1].isHidden = true
            select[2].isHidden = true
            
            next()
        }else{
            
            select[0].isHidden = true
            select[1].isHidden = true
            select[2].isHidden = true
            
            next()
        }
        if count == 10{
            warning()
        }
    }
    func next(){
        if count == 10{
            warning()
        }
        else{
            count=count+1
            question.isHidden = false
            question.text = questionArray[count].question
            set()
            select[0].isHidden = false
            select[1].isHidden = false
            select[2].isHidden = false
            select[3].isHidden = false
        }
    }
    @IBAction func restartButton(_ sender: UIButton) {
        count=0
        score=0
        set_questionArray()
        questionArray.shuffle()
        set()
        question.isHidden = false
        number.isHidden = false
        select[0].isHidden = false
        select[1].isHidden = false
        select[2].isHidden = false
        select[3].isHidden = false
    }
    func restart(){
        question.isHidden = true
        number.isHidden = true
        select[0].isHidden = true
        select[1].isHidden = true
        select[2].isHidden = true
        select[3].isHidden = true
        totalscore.text = "分數：---"
        count=0
        score=0
    }
    func warning () {
        var test = ""
        if  score < 60{
            test = "可惜了，下次再加油吧！"
        }else if score <= 90 && score >= 60 {
            test = "哇！真是厲害呢，下次可能就全對囉"
        }else if score == 100 {
            test = "！！！太棒了，竟然能全答對，看來這點小知識難不倒你呢"
        }
        let alert =  UIAlertController(title: test, message: "\(score)分", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "再來一次", style: .default, handler:{ UIAlertAction in  self.restart()})
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
        check=1
        questionArray.shuffle()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        set_questionArray()
        questionArray.shuffle()
        set()
    }
    
}

