import UIKit

class Customcell: UITableViewCell {
    
    
    @IBOutlet weak var AvatarImageView: UIImageView!
    @IBOutlet weak var TitleLabel: UILabel!
    
    
    func resetCell() {
        
        AvatarImageView.alpha = 0
        self.AvatarImageView.transform = CGAffineTransformMakeScale(0, 0)
        self.TitleLabel.textColor = .blackColor()
        
    }

    
    func animateCell() {
       resetCell()
        
        
        UIView.animateWithDuration(2.0, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations:  {
            self.AvatarImageView.alpha = 1
            self.AvatarImageView.transform = CGAffineTransformMakeScale(1, 1)
            self.TitleLabel.center.x = self.TitleLabel.center.x + 200

            }) {  completion in
                
                self.TitleLabel.textColor = .redColor()
        
        
        }
            
        
        
    }
    
    
}
    
    
