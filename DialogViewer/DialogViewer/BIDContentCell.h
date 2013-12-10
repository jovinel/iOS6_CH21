//
//  BIDContentCell.h
//  DialogViewer
//
//  Created by Crescens Techstars on 12/10/13.
//  Copyright (c) 2013 Crescens Techstars. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDContentCell : UICollectionViewCell

@property (strong, nonatomic) UILabel *label;
@property (copy, nonatomic) NSString *text;

+ (CGSize)sizeForContentString:(NSString *)s;

@end
