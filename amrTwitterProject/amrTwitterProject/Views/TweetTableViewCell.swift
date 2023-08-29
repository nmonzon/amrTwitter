//
//  TweetTableViewCell.swift
//  amrTwitterProject
//
//  Created by Nicolas Monzon on 29/8/2023.
//

import UIKit

class TweetTableViewCell: UITableViewCell {
    
    static let identifier = "TweetTableViewCell"
    
    private let avatarImageView: UIImageView = {
        let avatarImage = UIImageView(image: UIImage(systemName: "person"))
        avatarImage.layer.cornerRadius = 25
        avatarImage.clipsToBounds = true
        avatarImage.layer.masksToBounds = true
        avatarImage.translatesAutoresizingMaskIntoConstraints = false
        return avatarImage
    }()
    
    private let displayName: UILabel = {
        let displayLbl = UILabel()
        displayLbl.text = "Nico Monzon"
        displayLbl.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        displayLbl.translatesAutoresizingMaskIntoConstraints = false
        return displayLbl
    }()
    
    private let usernameLabel: UILabel = {
        let usernameLbl = UILabel()
        usernameLbl.text = "@amr"
        usernameLbl.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        usernameLbl.textColor = .secondaryLabel
        usernameLbl.translatesAutoresizingMaskIntoConstraints = false
        return usernameLbl
    }()
    
    private let tweetTextContentLabel: UILabel = {
        let tweetTextContentLabel = UILabel()
        tweetTextContentLabel.text = "This is my mockup tweet. It is going to take multiple lines. I believe some more text is enough but lets add some more anyway.. and cheers youtube.!!"
        tweetTextContentLabel.numberOfLines = 0
        tweetTextContentLabel.translatesAutoresizingMaskIntoConstraints = false
        return tweetTextContentLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(avatarImageView)
        addSubview(displayName)
        addSubview(usernameLabel)
        addSubview(tweetTextContentLabel)
        
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: 14),
            avatarImageView.heightAnchor.constraint(equalToConstant: 50),
            avatarImageView.widthAnchor.constraint(equalToConstant: 50),
            displayName.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 20),
            displayName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            usernameLabel.leadingAnchor.constraint(equalTo: displayName.trailingAnchor, constant: 10),
            usernameLabel.centerYAnchor.constraint(equalTo: displayName.centerYAnchor),
            tweetTextContentLabel.leadingAnchor.constraint(equalTo: displayName.leadingAnchor),
            tweetTextContentLabel.topAnchor.constraint(equalTo: displayName.bottomAnchor, constant: 10),
            tweetTextContentLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
            tweetTextContentLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15)
        ])
    }
    
}
