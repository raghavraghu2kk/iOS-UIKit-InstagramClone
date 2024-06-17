//
//  FeedCell.swift
//  InstagramFirestore
//
//  Created by Raghavendra Mirajkar on 09/06/24.
//

import UIKit

class FeedCell: UICollectionViewCell {
    
    private let profileImageView : UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.backgroundColor = .systemPurple
        iv.isUserInteractionEnabled = true
        iv.image = .venom7
        return iv
    }()
    
    private lazy var usernameButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Venom", for: .normal)
        button.addTarget(self, action: #selector(didTapUsername), for: .touchUpInside)
        return button
    }()
    
//  In Swift, the lazy keyword is used to declare a property as a "lazy stored property." This means that the property's initial value is not calculated until the first time it is accessed.
    
    private let postImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.backgroundColor = .systemRed
        iv.isUserInteractionEnabled = true
        iv.image = .venom7
        return iv
    }()
    
    private lazy var likeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(.likeUnselected, for: .normal)
        button.tintColor = .black
        return button
    }()
    
    private lazy var commentButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(.comment, for: .normal)
        button.tintColor = .black
        return button
    }()
    
    private lazy var shareButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(.send2, for: .normal)
        button.tintColor = .black
        return button
    }()
    
    private lazy var saveButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(.ribbon, for: .normal)
        button.tintColor = .black
        return button
    }()
    
    private let likesLabel: UILabel = {
        let label = UILabel()
        label.text = "1 likes"
        label.font = UIFont.boldSystemFont(ofSize: 13)
        return label
    }()
    
    private let captionLabel : UILabel = {
        let label = UILabel()
        label.text = "\("Venom") Some text caption for now to test"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    private let postTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "2 days ago"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .lightGray
        return label
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        // Adding the subview
        // Adding the profile image
        addSubview(profileImageView)
        
        // Size - Dimensions of the profile image
        profileImageView.anchor(top: topAnchor, left: leftAnchor, paddingTop: 12, paddingLeft: 12)
        profileImageView.setDimensions(height: 40, width: 40)
        profileImageView.layer.cornerRadius = 40 / 2
        
        // Adding the Username button
        addSubview(usernameButton)
        usernameButton.centerY(inView: profileImageView, leftAnchor: profileImageView.rightAnchor, paddingLeft: 8)
        
        // Adding the PostPhoto
        addSubview(postImageView)
        postImageView.anchor(top: profileImageView.bottomAnchor, left: leftAnchor, right: rightAnchor, paddingTop: 8)
        postImageView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 1).isActive = true
        
        configureActionButtons()
        
        // Adding the save button
        addSubview(saveButton)
        saveButton.centerY(inView: likeButton)
        saveButton.anchor(right: rightAnchor, paddingRight: 12)
        saveButton.setDimensions(height: 22, width: 18)
        
        // Adding the Likes button
        addSubview(likesLabel)
        likesLabel.anchor(top: likeButton.bottomAnchor, left: leftAnchor, paddingTop: 8, paddingLeft: 8)
        
        // Adding the caption button
        addSubview(captionLabel)
        captionLabel.anchor(top: likesLabel.bottomAnchor, left: leftAnchor, paddingTop: 8, paddingLeft: 8)
        
        addSubview(postTimeLabel)
        postTimeLabel.anchor(top: captionLabel.bottomAnchor, left: leftAnchor, paddingTop: 8, paddingLeft: 8)
        
        // Adding the like button
        
//        addSubview(likeButton)
//        likeButton.anchor(top: postImageView.bottomAnchor, left: leftAnchor, paddingTop: 12, paddingLeft: 12)
//        
//        // Adding the comment button
//        addSubview(commentButton)
//        commentButton.centerY(inView: likeButton, leftAnchor: likeButton.rightAnchor, paddingLeft: 12)
//        
//        // Adding the share button
//        addSubview(shareButton)
//        shareButton.centerY(inView: likeButton, leftAnchor: commentButton.rightAnchor, paddingLeft: 12)
//        
//        // Adding the save button
//        addSubview(saveButton)
//        saveButton.centerY(inView: likeButton)
//        saveButton.anchor(right: rightAnchor, paddingRight: 12)
//        saveButton.setDimensions(height: 22, width: 18)
//        
//        
//        // Adding the Likes button
//        addSubview(likesLabel)
//        likesLabel.anchor(top: likeButton.bottomAnchor, left: leftAnchor, paddingTop: 12, paddingLeft: 12)
//        
//        // Adding the caption button
//        addSubview(captionLabel)
//        captionLabel.anchor(top: likesLabel.bottomAnchor, left: leftAnchor, paddingTop: 12, paddingLeft: 12)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Mark: - ACTIONS
    
    @objc func didTapUsername() {
        print("DEBUG: did tap username")
    }
    
    func configureActionButtons() {
        let stackView = UIStackView(arrangedSubviews: [likeButton, commentButton, shareButton])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        
        addSubview(stackView)
        stackView.anchor(top: postImageView.bottomAnchor, width: 120, height: 50)
    }
    
}

#Preview {
    FeedCell()
}
