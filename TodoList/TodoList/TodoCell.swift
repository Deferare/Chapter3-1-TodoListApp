

import UIKit

class TodoCell: UITableViewCell {
    @IBOutlet weak var titleView: UILabel!
    var data: Todo?
    var tapAction: (() -> ())?

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        titleView.text = data?.title
        
        if data?.isCompleted == true {
            self.contentView.layer.opacity = 0.25
        } else {
            self.contentView.layer.opacity = 1
        }
    }

    @IBAction func completeTodo(_ sender: Any) {
        tapAction?()
    }
}
