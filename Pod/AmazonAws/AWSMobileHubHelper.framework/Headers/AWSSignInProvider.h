//
//  AWSSignInProvider.h
//
// Copyright 2017 Amazon.com, Inc. or its affiliates (Amazon). All Rights Reserved.
//
// Code generated by AWS Mobile Hub. Amazon gives unlimited permission to
// copy, distribute and modify it.
//

#import <UIKit/UIKit.h>
#import <AWSCore/AWSCore.h>
#import "AWSIdentityProfile.h"

NS_ASSUME_NONNULL_BEGIN

@class AWSIdentityManager;

typedef NS_ENUM(NSInteger, AWSIdentityManagerAuthState) {
    AWSIdentityManagerAuthStateAuthenticated,
    AWSIdentityManagerAuthStateUnauthenticated,
    AWSIdentityManagerAuthStateUnknown,
};

/**
 * `AWSSignInProvider` protocol defines a list of methods and properties which a Sign-In Provider should implement.
 *
 * The AWSSignInProvider is implemented by difference Sign-In Providers like FacbookSignInProvider, GoogleSignInProvider, etc.
 *
 */
@protocol AWSSignInProvider <AWSIdentityProvider>

/**
 Determines if a user is logged in.
 */
@property (nonatomic, readonly, getter=isLoggedIn) BOOL loggedIn;

/**
 The login handler method for the Sign-In Provider.
 The completionHandler will bubble back errors to the developers.
 */
- (void)login:(void (^)(id _Nullable result, AWSIdentityManagerAuthState authState, NSError * _Nullable error))completionHandler;

/**
 The logout handler method for the Sign-In Provider.
 */
- (void)logout;

/**
 The handler method for managing the session reload for the Sign-In Provider.
 The completionHandler will bubble back errors to the developers.
 */
- (void)reloadSession;

@end

NS_ASSUME_NONNULL_END
