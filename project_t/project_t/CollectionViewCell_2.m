//
//  CollectionViewCell_2.m
//  project_t
//
//  Created by 徐晨淼 on 2017/9/9.
//  Copyright © 2017年 Christian. All rights reserved.
//

#import "CollectionViewCell_2.h"

@implementation CollectionViewCell_2

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        UIImageView *userImg = [[UIImageView alloc]init];
        userImg.layer.cornerRadius = 5;
        [self.contentView addSubview:userImg];
        self.userImg = userImg;
        [userImg mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(WIDTHX(400), HEIGHTX(335)));
            make.top.equalTo(self.contentView).with.offset(0);
            make.left.equalTo(self.contentView).with.offset(0);
        }];
        
        UILabel *likeCount = [[UILabel alloc]init];
        likeCount.text = @"666";
        likeCount.textColor = [UIColor whiteColor];
        likeCount.font = [UIFont systemFontOfSize:HEIGHTX(30)];
        [userImg addSubview:likeCount];
        self.likeCount = likeCount;
        [likeCount mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(WIDTHX(80), HEIGHTX(30)));
            make.bottom.equalTo(userImg.mas_bottom).with.offset(-HEIGHTX(5));
            make.right.equalTo(userImg.mas_right).with.offset(-WIDTHX(5));
            
        }];
        
        UIButton *heart = [[UIButton alloc]init];
        [heart setImage:[UIImage imageNamed:@"形状-751"] forState:UIControlStateNormal];
        [heart setImage:[UIImage imageNamed:@"hert---(red)"] forState:UIControlStateSelected];
        [userImg addSubview:heart];
        self.heart = heart;
        [heart mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.size.mas_equalTo(CGSizeMake(HEIGHTX(35), HEIGHTX(35)));
            make.right.equalTo(likeCount.mas_left).with.offset(-WIDTHX(15));
            make.bottom.equalTo(userImg.mas_bottom).with.offset(-HEIGHTX(1));
        }];
        
        
        UIView *showTime = [[UIView alloc]init];
        showTime.backgroundColor = [UIColor blackColor];
        showTime.alpha = 0.5;
        showTime.layer.cornerRadius = HEIGHTX(30);
        [userImg addSubview:showTime];
        self.showTime = showTime;
        [showTime mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(WIDTHX(245), HEIGHTX(70)));
            make.left.equalTo(userImg.mas_left).with.offset(0);
            make.bottom.equalTo(userImg.mas_bottom).with.offset(-HEIGHTX(20));
        }];
        
        UILabel *show = [[UILabel alloc]init];
        show.text = @"直播中";
        show.textAlignment = NSTextAlignmentCenter;
        show.font = [UIFont systemFontOfSize:HEIGHTX(40)];
        show.textColor = [UIColor redColor];
        [showTime addSubview:show];
        [show mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.size.mas_equalTo(CGSizeMake(WIDTHX(160), HEIGHTX(55)));
            make.left.equalTo(showTime.mas_left).with.offset(0);
            make.top.equalTo(showTime).with.offset(HEIGHTX(10));
            
        }];
        
        UIButton *bos = [[UIButton alloc]init];
        [bos setImage:[UIImage imageNamed:@"组-50"] forState:UIControlStateNormal];
        bos.layer.cornerRadius = WIDTHX(48)/2;
        bos.layer.masksToBounds = YES;
        [showTime addSubview:bos];
        [bos mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(WIDTHX(48), WIDTHX(48)));
            make.left.equalTo(show.mas_right).with.offset(WIDTHX(12));
            make.top.equalTo(showTime).with.offset(HEIGHTX(10));
        }];
        
        
        UILabel *nickName = [[UILabel alloc]init];
        nickName.text = @"俞敏洪";
        nickName.font = [UIFont systemFontOfSize:HEIGHTX(40)];
        [self.contentView addSubview:nickName];
        self.nickName = nickName;
        [nickName mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.size.mas_equalTo(CGSizeMake(WIDTHX(230), HEIGHTX(42)));
            make.left.equalTo(self.contentView).with.offset(0);
            make.top.equalTo(userImg.mas_bottom).with.offset(HEIGHTX(30));
        }];
        
        UILabel *subTitle = [[UILabel alloc]init];
        subTitle.text = @"死磕自己,取悦他人";
        subTitle.font = [UIFont systemFontOfSize:HEIGHTX(35)];
        subTitle.textColor = [UIColor lightGrayColor];
        [self.contentView addSubview:subTitle];
        self.subTitle = subTitle;
        [subTitle mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.size.mas_equalTo(CGSizeMake(WIDTHX(300), HEIGHTX(35)));
            make.left.equalTo(self.contentView).with.offset(0);
            make.top.equalTo(nickName.mas_bottom).with.offset(HEIGHTX(15));
            
        }];
        
        UIButton *attention = [[UIButton alloc]init];
        [attention setImage:[UIImage imageNamed:@"+关注"] forState:UIControlStateNormal];
        [attention setImage:[UIImage imageNamed:@"已关注"] forState:UIControlStateSelected];
        [self.contentView addSubview:attention];
        self.attention = attention;
        [attention mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(WIDTHX(130), HEIGHTX(60)));
            make.top.equalTo(userImg.mas_bottom).with.offset(HEIGHTX(13));
            make.right.equalTo(self.contentView).with.offset(-1);
        }];
        
        self.backgroundColor = [UIColor whiteColor];
    }
         
    return self;
}


@end
