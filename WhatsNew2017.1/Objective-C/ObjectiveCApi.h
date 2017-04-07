//
// Created by Phil Nash on 06/04/2017.
// Copyright (c) 2017 JetBrains. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

typedef NSString *Constants __attribute__((swift_wrapper(enum)));
Constants const ConstantsOne;
Constants const ConstantsTwo;
Constants const ConstantsThree;

typedef NSString *ErrorDomain __attribute__((swift_wrapper(struct)));

ErrorDomain const CocoaErrorDomain;
ErrorDomain const POSIXErrorDomain;
ErrorDomain const OSStatusErrorDomain;
ErrorDomain const MachErrorDomain;


typedef NS_ENUM(NSInteger, State) {
    StateInProgress, StateImplemented, StateNotStarted
};
typedef NS_OPTIONS(NSInteger, Attributes) {
    AttributesRequired, AttributesOptional
};

__attribute__ ((swift_name("BridgedClass")))
@interface ObjcClass : NSObject
NS_ASSUME_NONNULL_BEGIN
@property(nonatomic, assign) State objcState NS_SWIFT_NAME(state) ;
@property(nonatomic, assign) Attributes objcAttributes CF_SWIFT_NAME(attributes);
@property(nonatomic, retain) NSString* name;
NS_ASSUME_NONNULL_END
@end
