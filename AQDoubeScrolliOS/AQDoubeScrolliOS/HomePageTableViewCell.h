//
//  HomePageTableViewCell.h
//  AQDoubeScrolliOS
//
//  Created by Alessio on 08/11/16.
//  Copyright © 2016 Alessio. All rights reserved.
//  GNU 3 License
//

#import <UIKit/UIKit.h>

@interface HomePageTableViewCell : UITableViewCell <UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UILabel *titleSectionLbl;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (strong, nonatomic) NSArray *category;

@end
