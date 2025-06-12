//
//  KeyboardCell.swift
//  Wordle
//
//  Created by Mari Batilando on 2/12/23.
//

import UIKit

class KeyboardCell: UICollectionViewCell {

  @IBOutlet weak var label: UILabel!
  @IBOutlet weak var labelContainerView: UIView!
  private var string: String!
  var didSelectString: ((String) -> Void)!

  required init?(coder: NSCoder) {
    super.init(coder: coder)
    let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTapString))
    contentView.addGestureRecognizer(tapGestureRecognizer)
  }

  func configure(with string: String) {
    labelContainerView.layer.cornerRadius = 4.0
    labelContainerView.backgroundColor = .gray

    // Exercise 2:
    // 1. Assign the argument string to the self.string property
    // 2. Set the label text to this string
    // START YOUR CODE HERE
    self.string = string
    label.text = string
    // END YOUR CODE HERE
  }

  // Exercise 5:
  // Call the didSelectString closure and pass in the string this cell holds
  @objc private func didTapString() {
    // START YOUR CODE HERE
    didSelectString?(string)
    // END YOUR CODE HERE
  }
}
