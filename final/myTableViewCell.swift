//
//  myTableViewCell.swift
//  final
//
//  Created by Adarsh Singh on 28/11/1942 Saka.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet weak var mylabel1: UILabel!
    @IBOutlet weak var myview1: UIView!
    @IBOutlet weak var mylabel2: UILabel!
    @IBOutlet weak var myview2: UIView!
    @IBOutlet weak var mylabel3: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.startingcell()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func startingcell(){
        self.mylabel1.font = UIFont(name:"Bag", size:10)
        self.mylabel1.textColor = UIColor.black
        self.mylabel1.text = "Bag"
        self.mylabel2.font = UIFont(name:"Address", size:10)
        self.mylabel2.textColor = UIColor.black
        self.mylabel2.text = "Address"
        self.mylabel3.font = UIFont(name:"Payment", size:14)
        self.mylabel3.textColor = UIColor.black
        self.mylabel3.text = "Payment"
        myview1.addDashedBorder()
        myview2.addDashedBorder()
    }
}
    extension UIView{
        func addDashedBorder(){
            let color = UIColor.black.cgColor
            let shapeLayer:CAShapeLayer = CAShapeLayer()
            let frameSize = self.frame.size
            let shapeRect = CGRect(x: 0, y: 0, width: frameSize.width, height: 0 )
            shapeLayer.bounds = shapeRect
            shapeLayer.position = CGPoint(x: frameSize.width/2, y: frameSize.height/2)
            shapeLayer.fillColor = UIColor.clear.cgColor
            shapeLayer.strokeColor = color
            shapeLayer.lineWidth = 2
            shapeLayer.lineJoin = CAShapeLayerLineJoin.round
            shapeLayer.lineDashPattern = [4,4]
            shapeLayer.path = UIBezierPath(roundedRect: shapeRect, cornerRadius: 4).cgPath
            
            self.layer.addSublayer(shapeLayer)
                    
            
        }
    }
    

