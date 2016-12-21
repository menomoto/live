import UIKit
import PureLayout

class TopViewController: UIViewController {
    // MARK: - Properties
    
    // MARK: - View Elements
    let button: UIButton
    
    // MARK: - Initializers
    init(
        )
    {
        button = UIButton(type: .Custom)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        
        addSubviews()
        addConstraints()
        configureSubviews()
        
    }
    
    // MARK: - View Setup    
    private func addSubviews() {
        view.addSubview(button)
    }
    
    private func addConstraints() {
        let width = (UIScreen.mainScreen().bounds.size.width - (10 * 5)) / 4
        button.autoPinEdgeToSuperviewEdge(.Top, withInset: 20.0)
        button.autoPinEdgeToSuperviewEdge(.Left, withInset: 10.0)
        button.autoSetDimensionsToSize(CGSize(width: width, height: width))
    }
    
    private func configureSubviews() {
        button.setTitle("A", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        button.backgroundColor = UIColor.lightGrayColor()
    }    
}
