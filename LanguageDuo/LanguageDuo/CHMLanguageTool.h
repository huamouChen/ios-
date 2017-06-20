//
//  CHMLanguageTool.h
//  LanguageDuo
//
//  Created by 陈华谋 on 2017/6/20.
//  Copyright © 2017年 陈华谋. All rights reserved.
//

#import <Foundation/Foundation.h>

#define CHMGetStringWithKeyFromTable(key, tbl) [[CHMLanguageTool sharedInstance] getStringForKey:key withTable:tbl]

@interface CHMLanguageTool : NSObject

+(id)sharedInstance;

/**
 *  返回table中指定的key的值
 *
 *  @param key   key
 *  @param table table
 *
 *  @return 返回table中指定的key的值
 */
-(NSString *)getStringForKey:(NSString *)key withTable:(NSString *)table;

/**
 *  改变当前语言
 */
-(void)changeNowLanguage;

/**
 *  设置新的语言
 *
 *  @param language 新语言
 */
-(void)setNewLanguage:(NSString*)language;


@end
