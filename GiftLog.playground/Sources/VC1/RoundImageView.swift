import UIKit

class RoundImageView: UIImageView
{
    required init()
    {
        super.init(frame: CGRect.zero)
        layer.borderWidth = 0
        layer.masksToBounds = false
        layer.borderColor = UIColor.black.cgColor
        clipsToBounds = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}