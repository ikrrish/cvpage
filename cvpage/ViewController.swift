//
//  ViewController.swift
//  cvpage
//
//  Created by R82 on 02/01/24.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var cv1: UICollectionView!
    @IBOutlet weak var cv2: UICollectionView!
    @IBOutlet weak var cv3: UICollectionView!

    var popular = ["joker","endgame","dune","aquaman",""]
    var action = ["a1","a2","a3","a4","a5","a6"]
    var advenures = ["p1","p2","p3","p4","p5","p6"]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.cv1{
            return popular.count
        }
        else if collectionView == self.cv2{
            return action.count
        }
        else{
            return advenures.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.cv1{
            let cell = cv1
                .dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! CollectionViewCell
            cell.img1.image = UIImage (named: "\(popular[indexPath.row])")
            return cell
        }
        else if collectionView == self.cv2{
            let cell2 = cv2
                .dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell2
            cell2.img1.image = UIImage (named: "\(action[indexPath.row])")
            return cell2
        }
        else{
            let cell3 = cv3
                .dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCell3
            cell3.img1.image = UIImage (named: "\(advenures[indexPath.row])")
            return cell3
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: 200, height: 200)
    }
}

