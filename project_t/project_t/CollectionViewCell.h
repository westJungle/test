//
//  CollectionViewCell.h
//  project_t
//
//  Created by 徐晨淼 on 2017/9/7.
//  Copyright © 2017年 Christian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell

@property (nonatomic,weak) UILabel *newsTitle;
@property (nonatomic,weak) UIView *line;
@property (nonatomic,weak) UILabel *subTitle;
@property (nonatomic,weak) UIImageView *newsImg;

@end
