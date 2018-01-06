//
//  TableViewCell.h
//  project_t
//
//  Created by 徐晨淼 on 2017/9/7.
//  Copyright © 2017年 Christian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (nonatomic,weak) UIButton *userIcon;
@property (nonatomic,weak) UILabel *nickName;
@property (nonatomic,weak) UILabel *friendGroup;
@property (nonatomic,weak) UILabel *FGCount;
@property (nonatomic,weak) UILabel *fans;
@property (nonatomic,weak) UILabel *FansCount;
@property (nonatomic,weak) UILabel *userIntro;
@property (nonatomic,weak) UIButton *attention;



@end
