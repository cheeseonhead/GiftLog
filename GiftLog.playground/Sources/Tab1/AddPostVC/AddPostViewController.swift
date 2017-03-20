import UIKit

class AddPostViewController: UIViewController
{
    var groupView = AddPostScrollViewWrapperView()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        navigationItem.title = "Add Post"
        view.backgroundColor = UIColor.cyan
        
        print(navigationItem)
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelButtonPressed))
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveButtonPressed))
        
        groupView.delegate = self
        view.addSubview(groupView)
        
        let constraints = [
            NSLayoutConstraint(item: groupView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: groupView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottomMargin, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: groupView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: groupView, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1.0, constant: 0)
        ]
        
        view.addConstraints(constraints)
    }
    
    func cancelButtonPressed()
    {
        navigationController?.dismiss(animated: true, completion: nil)
    }
    
    func saveButtonPressed()
    {
        let post = groupView.contentView.cardView.generatePost()
        DummyData.existingPosts.append(post)
        navigationController?.dismiss(animated: true, completion: nil)
    }
}

extension AddPostViewController: AddPostScrollViewWrapperViewDelegate
{
    func pickImageButtonTapped() {
    }
}
