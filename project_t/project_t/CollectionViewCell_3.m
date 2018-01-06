//
//  CollectionViewCell_3.m
//  project_t
//
//  Created by 徐晨淼 on 2017/9/11.
//  Copyright © 2017年 Christian. All rights reserved.
//

#import "CollectionViewCell_3.h"

@implementation CollectionViewCell_3

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
     
        UIImageView *videoContent = [[UIImageView alloc]init];
        [self.contentView addSubview:videoContent];
        self.videoContent = videoContent;
        [videoContent mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(WIDTHX(400), HEIGHTX(335)));
            make.top.equalTo(self.contentView).with.offset(0);
            make.left.equalTo(self.contentView).with.offset(0);

        }];
        
        UIButton *showBtn = [[UIButton alloc]init];
        showBtn.layer.cornerRadius = WIDTHX(90)/2;
        showBtn.layer.masksToBounds = YES;
        showBtn.alpha = 0.7;
        [showBtn setImage:[UIImage imageNamed:@"组-50"] forState:UIControlStateNormal];
        [videoContent addSubview:showBtn];
        self.showBtn = showBtn;
        [showBtn mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(WIDTHX(90), WIDTHX(90)));
            make.left.equalTo(videoContent).with.offset(WIDTHX(10));
            make.bottom.equalTo(videoContent.mas_bottom).with.offset(-HEIGHTX(25));
            
        }];
        
        
        UILabel *videoTitle = [[UILabel alloc]init];
        videoTitle.text = @"3D音乐";
        videoTitle.font = [UIFont systemFontOfSize:HEIGHTX(40)];
        [self.contentView addSubview:videoTitle];
        videoTitle = videoTitle;
        [videoTitle mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(WIDTHX(260), HEIGHTX(40)));
            make.left.equalTo(self.contentView).with.offset(0);
            make.top.equalTo(videoContent.mas_bottom).with.offset(HEIGHTX(30));
        }];
        
        UILabel *videoSubT = [[UILabel alloc]init];
        videoSubT.text = @"3D环绕清新小电音";
        videoSubT.font = [UIFont systemFontOfSize:HEIGHTX(35)];
        videoSubT.textColor = [UIColor lightGrayColor];
        [self.contentView addSubview:videoSubT];
        self.videoSubT = videoSubT;
        
        [videoSubT mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(WIDTHX(300), HEIGHTX(35)));
            make.left.equalTo(self.contentView).with.offset(0);
            make.top.equalTo(videoTitle.mas_bottom).with.offset(HEIGHTX(15));
            
        }];
        
        self.backgroundColor = [UIColor whiteColor];
        
        
    }
    return self;
}




@end
