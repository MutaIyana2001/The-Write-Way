import UIKit

//MARK:- Global Variables
var userName: String = ""
let userAge = 0
let isUserLoggedIn = false

class AppViewController: UIViewController {
    //MARK:- Properties

    private let backButton = UIButton()
    private let forwardButton = UIButton()
    
    //MARK:- Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    //MARK:- Private
    private func setupViews() {
        //backButton
        self.view.addSubview(backButton)
        backButton.backgroundColor = .gray
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        backButton.snp.makeConstraints({ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(10)
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).offset(20)
            make.width.equalTo(70)
            make.height.equalTo(60)
        })
        //forwardButton
        self.view.addSubview(forwardButton)
        forwardButton.backgroundColor = .gray
        forwardButton.addTarget(self, action: #selector(forwardButtonTapped), for: .touchUpInside)
        forwardButton.snp.makeConstraints({ make in
            make.centerY.equalTo(backButton.snp.centerY)
            make.leading.equalTo(backButton.snp.trailing).offset(20)
            make.width.equalTo(70)
            make.height.equalTo(60)
        })
    }
    
    //MARK:- Actions
    @objc func backButtonTapped() {
        print("Back button tapped")
    }
    
    @objc func forwardButtonTapped() {
        print("Forward button tapped")
    }
}

class UserViewController: UIViewController {
    //MARK:- Properties
    private let userNameLabel = UILabel()
    private let userAgeLabel = UILabel()
    private let userAvatarImageView = UIImageView()
    
    //MARK:- Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    //MARK:- Private
    private func setupViews() {
        //userNameLabel
        self.view.addSubview(userNameLabel)
        userNameLabel.text = userName
        userNameLabel.textColor = .black
        userNameLabel.font = UIFont.systemFont(ofSize: 16)
        userNameLabel.snp.makeConstraints({ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(10)
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).offset(20)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).offset(-20)
        })
        //userAgeLabel
        self.view.addSubview(userAgeLabel)
        userAgeLabel.text = "Age: \(userAge)"
        userAgeLabel.textColor = .gray
        userAgeLabel.font = UIFont.systemFont(ofSize: 14)
        userAgeLabel.snp.makeConstraints({ make in
            make.top.equalTo(userNameLabel.snp.bottom).offset(2)
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).offset(20)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).offset(-20)
        })
        //userAvatarImageView
        self.view.addSubview(userAvatarImageView)
        userAvatarImageView.backgroundColor = .lightGray
        userAvatarImageView.snp.makeConstraints({ make in
            make.centerX.equalTo(self.view.safeAreaLayoutGuide.snp.centerX)
            make.top.equalTo(userAgeLabel.snp.bottom).offset(2)
            make.width.equalTo(100)
            make.height.equalTo(100)
        })
    }
    
    //MARK:- Actions
    func logInUser() {
        if isUserLoggedIn {
            //Log in user
            print("User logged in")
        } else {
            //Show login screen
            print("Show login screen")
        }
    }
}

class ProfileViewController: UIViewController {
    //MARK:- Properties
    private let profileImageView = UIImageView()
    private let userNameLabel = UILabel()
    private let userAgeLabel = UILabel()
    
    //MARK:- Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    //MARK:- Private
    private func setupViews() {
        //profileImageView
        self.view.addSubview(profileImageView)
        profileImageView.backgroundColor = .lightGray
        profileImageView.snp.makeConstraints({ make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(10)
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).offset(20)
            make.width.equalTo(100)
            make.height.equalTo(100)
        })
        //userNameLabel
        self.view.addSubview(userNameLabel)
        userNameLabel.text = userName
        userNameLabel.textColor = .black
        userNameLabel.font = UIFont.systemFont(ofSize: 16)
        userNameLabel.snp.makeConstraints({ make in
            make.top.equalTo(profileImageView.snp.top)
            make.leading.equalTo(profileImageView.snp.trailing).offset(20)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).offset(-20)
        })
        //userAgeLabel
        self.view.addSubview(userAgeLabel)
        userAgeLabel.text = "Age: \(userAge)"
        userAgeLabel.textColor = .gray
        userAgeLabel.font = UIFont.systemFont(ofSize: 14)
        userAgeLabel.snp.makeConstraints({ make in
            make.top.equalTo(userNameLabel.snp.bottom).offset(2)
            make.leading.equalTo(profileImageView.snp.trailing).offset(20)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).offset(-20)
        })
    }
    
    //MARK:- Actions
    func refreshUserProfile() {
        //Refresh views
        userNameLabel.text = userName
        userAgeLabel.text = "Age: \(userAge)"
    }
}