//
//  CollectionViewCell_4.m
//  project_t
//
//  Created by 徐晨淼 on 2017/9/14.
//  Copyright © 2017年 Christian. All rights reserved.
//

#import "CollectionViewCell_4.h"

@implementation CollectionViewCell_4

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        //活动图片
        UIImageView *activityImg = [[UIImageView alloc]init];
        activityImg.image = [UIImage imageNamed:@"组-13"];
        [self.contentView addSubview:activityImg];
        self.activityImg = activityImg;
        [activityImg mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.size.mas_equalTo(CGSizeMake(WIDTHX(468), HEIGHTX(170)));
            make.top.equalTo(self.contentView).with.offset(0);
            make.left.equalTo(self.contentView).with.offset(0);
            
        }];
        //活动标题
        UILabel *activityTitle = [[UILabel alloc]init];
        activityTitle.text = @"3D多媒体舞台剧《三体》";
        activityTitle.font = [UIFont systemFontOfSize:HEIGHTX(40)];
        [self.contentView addSubview:activityTitle];
        self.activityTitle = activityTitle;
        [activityTitle mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.size.mas_equalTo(CGSizeMake(WIDTHX(468), HEIGHTX(45)));
            make.top.equalTo(activityImg.mas_bottom).with.offset(HEIGHTX(20));
            make.left.equalTo(self.contentView).with.offset(WIDTHX(5));
        }];
        //活动地址图标
        UIImageView *activitySubImg = [[UIImageView alloc]init];
        activitySubImg.image = [UIImage imageNamed:@"location"];
        [self.contentView addSubview:activitySubImg];
        self.activitySubImg = activitySubImg;
        [activitySubImg mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(WIDTHX(55), WIDTHX(55)));
            make.top.equalTo(activityTitle.mas_bottom).with.offset(HEIGHTX(30));
            make.left.equalTo(self.contentView).with.offset(WIDTHX(12));
        }];
        //地址
        UILabel *activitySubT = [[UILabel alloc]init];
        activitySubT.text = @"上海浦东国际展览心";
        activitySubT.font = [UIFont systemFontOfSize:HEIGHTX(40)];
        [self.contentView addSubview:activitySubT];
        self.activitySubT = activitySubT;
        [activitySubT mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.equalTo(activitySubImg.mas_right).with.offset(WIDTHX(17));
            make.right.equalTo(self.contentView).with.offset(-WIDTHX(5));
            make.height.mas_equalTo(HEIGHTX(45));
            make.top.equalTo(activityTitle.mas_bottom).with.offset(HEIGHTX(32));
        }];
        
        UIImageView *activityTimeImg = [[UIImageView alloc]init];
        activityTimeImg.image = [UIImage imageNamed:@"date"];
        [self.contentView addSubview:activityTimeImg];
        self.activityTimeImg = activityTimeImg;
        [activityTimeImg mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(WIDTHX(55), WIDTHX(55)));
            make.top.equalTo(activitySubImg.mas_bottom).with.offset(HEIGHTX(5));
            make.left.equalTo(self.contentView).with.offset(WIDTHX(12));
        }];
        
        UILabel *activityTime = [[UILabel alloc]init];
        activityTime.font = [UIFont systemFontOfSize:HEIGHTX(40)];
        activityTime.text = @"09月30日开始";
        [self.contentView addSubview:activityTime];
        self.activityTime = activityTime;
        
        [activityTime mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.equalTo(activityTimeImg.mas_right).with.offset(WIDTHX(10));
            make.right.equalTo(self.contentView).with.offset(-WIDTHX(5));
            make.height.mas_equalTo(HEIGHTX(45));
            make.top.equalTo(activitySubT.mas_bottom).with.offset(HEIGHTX(18));
        }];
        
        UIButton *joinBtn = [[UIButton alloc]init];
        [joinBtn setImage:[UIImage imageNamed:@"joinBtn"] forState:UIControlStateNormal];
        [self.contentView addSubview:joinBtn];
        self.joinBtn = joinBtn;
        
        [joinBtn mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(WIDTHX(310), HEIGHTX(70)));
            make.top.equalTo(activityTime.mas_bottom).with.offset(HEIGHTX(25));
            make.centerX.equalTo(self.contentView);
        }];
        
        
        self.backgroundColor = [UIColor whiteColor];
        self.layer.borderWidth = 0.5;
        self.layer.borderColor = [UIColor colorWithRed:0.616 green:0.616 blue:0.616 alpha:1.000].CGColor;
        self.layer.cornerRadius = 10;
        self.layer.masksToBounds = YES;
    }
    return self;
}




@end
