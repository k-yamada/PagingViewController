//
//  ViewController.swift
//  PagingViewController
//
//  Created by Kazuhiro Yamada on 2016/09/08.
//  Copyright © 2016年 Kazuhiro Yamada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    let cardWidth: CGFloat  = 300
    let cardHeight: CGFloat = 300
    var cardViews: [UIView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initScrollView()
    }

    private func initScrollView() {
        cardViews.append(createCardViewFromImageName("image1", index: 0))
        cardViews.append(createCardViewFromImageName("image2", index: 1))
        cardViews.append(createCardViewFromImageName("image3", index: 2))
        cardViews.forEach {
            scrollView.addSubview($0)
        }
        scrollView.contentSize = CGSizeMake(view.frame.width * CGFloat(cardViews.count), cardHeight)
    }

    private func createCardViewFromImageName(imageName: String, index: Int) -> UIView {
        let imageView = UIImageView(frame: CGRectMake(0, 0, cardWidth, cardHeight))
        imageView.image = UIImage(named: imageName)?.roundedImage(5)
        imageView.contentMode = UIViewContentMode.ScaleAspectFit
        imageView.center.x = view.frame.width / 2
        let cardX: CGFloat = CGFloat(index) * view.frame.width
        let cardView = UIView(frame: CGRectMake(cardX, 0, view.frame.width, cardHeight))
        cardView.addSubview(imageView)
        return cardView
    }
}

