//
//  BIDViewController.m
//  DialogViewer
//
//  Created by Crescens Techstars on 12/10/13.
//  Copyright (c) 2013 Crescens Techstars. All rights reserved.
//

#import "BIDViewController.h"
#import "BIDContentCell.h"
#import "BIDHeaderCell.h"

@interface BIDViewController ()
@property (copy, nonatomic) NSArray *sections;
@end

@implementation BIDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.sections = @[
    @{
    @"header" : @"First Witch",
    @"content" : @"Hey, when will the three of us meet up later?"
    },
    @{
    @"header" : @"Second Witch",
    @"content" : @"When everything's straightened out."
    },
    @{
    @"header" : @"Third Witch",
    @"content" : @"That'll be just before sunset."
    },
    @{
    @"header" : @"First Witch",
    @"content" : @"Where?"
    },
    @{
    @"header" : @"Second Witch",
    @"content" : @"The dirt patch."
    },
    @{
    @"header" : @"Third Witch",
    @"content" : @"I guess we'll see Mac there."
    },
    ];
    
    [self.collectionView registerClass:[BIDContentCell class] forCellWithReuseIdentifier:@"CONTENT"];
    self.collectionView.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
}

- (NSArray *)wordsInSection:(NSInteger)section {
    NSString *content = self.sections[section][@"content"];
    NSCharacterSet *space = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSArray *words = [content componentsSeparatedByCharactersInSet:space];
    return words;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [self.sections count];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSArray *words = [self wordsInSection:section];
    return [words count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSArray *words = [self wordsInSection:indexPath.section];
    BIDContentCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"CONTENT" forIndexPath:indexPath];
    cell.text = words[indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
