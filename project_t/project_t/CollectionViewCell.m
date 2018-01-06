//
//  CollectionViewCell.m
//  project_t
//
//  Created by 徐晨淼 on 2017/9/7.
//  Copyright © 2017年 Christian. All rights reserved.
//

#import "CollectionViewCell.h"
@implementation CollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
     
        UILabel *newsTitle = [[UILabel alloc]init];
        newsTitle.text = @"易中天品三国";
        newsTitle.font = [UIFont systemFontOfSize:HEIGHTX(40)];
        [self.contentView addSubview:newsTitle];
        self.newsTitle = newsTitle;
        [newsTitle mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(WIDTHX(360), HEIGHTX(40)));
            make.top.equalTo(self.contentView).with.offset(HEIGHTX(20));;
            make.left.equalTo(self.contentView).with.offset(WIDTHX(13));
            
        }];
        
        UIView *line = [[UIView alloc]init];
        line.backgroundColor = [UIColor blackColor];
        [self.contentView addSubview:line];
        self.line = line;
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(WIDTHX(360), 0.5));
            make.top.equalTo(newsTitle.mas_bottom).with.offset(HEIGHTX(22));
            make.left.equalTo(self.contentView).with.offset(WIDTHX(13));
        }];
       
        
        UILabel *subTitle = [[UILabel alloc]init];
        subTitle.font = [UIFont systemFontOfSize:HEIGHTX(38)];
        subTitle.text = @"预知后事如何,且听下回分解..";
        subTitle.numberOfLines = 0;
        subTitle.textColor = [UIColor lightGrayColor];
        [self.contentView addSubview:subTitle];
        self.subTitle = subTitle;
        [subTitle mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.size.mas_equalTo(CGSizeMake(WIDTHX(360), HEIGHTX(105)));
            make.top.equalTo(line.mas_bottom).with.offset(HEIGHTX(18));
            make.left.equalTo(self.contentView).with.offset(WIDTHX(13));
        }];
        
        
        UIImageView *newsImg = [[UIImageView alloc]init];
        newsImg.image = [UIImage imageNamed:@"qqIcon"];
        newsImg.layer.cornerRadius = 5;
        newsImg.layer.masksToBounds = YES;
        [self.contentView addSubview:newsImg];
        self.newsImg = newsImg;
        [newsImg mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(WIDTHX(232), HEIGHTX(150)));
            make.top.equalTo(self.contentView).with.offset(HEIGHTX(45));
            make.left.equalTo(line.mas_right).with.offset(WIDTHX(22));
        }];
        
        self.layer.shadowOffset = CGSizeMake(0, 2);
        
        self.layer.shadowColor = [UIColor grayColor].CGColor;
        
        self.layer.shadowOpacity = 0.3;
        
        self.layer.shadowRadius = 4;
        
        self.layer.masksToBounds = NO;
        
        self.backgroundColor = [UIColor whiteColor];
        
    }
    return self;
}


@end
