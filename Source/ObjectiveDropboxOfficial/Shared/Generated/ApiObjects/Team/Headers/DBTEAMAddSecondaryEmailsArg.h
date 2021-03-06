///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBTEAMAddSecondaryEmailsArg;
@class DBTEAMUserSecondaryEmailsArg;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - API Object

///
/// The `AddSecondaryEmailsArg` struct.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMAddSecondaryEmailsArg : NSObject <DBSerializable, NSCopying>

#pragma mark - Instance fields

/// List of users and secondary emails to add.
@property (nonatomic, readonly) NSArray<DBTEAMUserSecondaryEmailsArg *> *dNewSecondaryEmails;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param dNewSecondaryEmails List of users and secondary emails to add.
///
/// @return An initialized instance.
///
- (instancetype)initWithDNewSecondaryEmails:(NSArray<DBTEAMUserSecondaryEmailsArg *> *)dNewSecondaryEmails;

- (instancetype)init NS_UNAVAILABLE;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `AddSecondaryEmailsArg` struct.
///
@interface DBTEAMAddSecondaryEmailsArgSerializer : NSObject

///
/// Serializes `DBTEAMAddSecondaryEmailsArg` instances.
///
/// @param instance An instance of the `DBTEAMAddSecondaryEmailsArg` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBTEAMAddSecondaryEmailsArg` API object.
///
+ (nullable NSDictionary<NSString *, id> *)serialize:(DBTEAMAddSecondaryEmailsArg *)instance;

///
/// Deserializes `DBTEAMAddSecondaryEmailsArg` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMAddSecondaryEmailsArg` API object.
///
/// @return An instantiation of the `DBTEAMAddSecondaryEmailsArg` object.
///
+ (DBTEAMAddSecondaryEmailsArg *)deserialize:(NSDictionary<NSString *, id> *)dict;

@end

NS_ASSUME_NONNULL_END
