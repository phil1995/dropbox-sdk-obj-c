///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSerializableProtocol.h"
#import <Foundation/Foundation.h>

#pragma mark - API Object

///
/// The `ListFilesContinueArg` struct.
///
/// Arguments for `listReceivedFilesContinue`.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBSHARINGListFilesContinueArg : NSObject <DBSerializable>

#pragma mark - Instance fields

/// Cursor in `cursor` in `DBSHARINGListFilesResult`
@property(nonatomic, readonly, copy) NSString * _Nonnull cursor;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param cursor Cursor in `cursor` in `DBSHARINGListFilesResult`
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithCursor:(NSString * _Nonnull)cursor;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `ListFilesContinueArg` struct.
///
@interface DBSHARINGListFilesContinueArgSerializer : NSObject

///
/// Serializes `DBSHARINGListFilesContinueArg` instances.
///
/// @param instance An instance of the `DBSHARINGListFilesContinueArg` API
/// object.
///
/// @return A json-compatible dictionary representation of the
/// `DBSHARINGListFilesContinueArg` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBSHARINGListFilesContinueArg * _Nonnull)instance;

///
/// Deserializes `DBSHARINGListFilesContinueArg` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBSHARINGListFilesContinueArg` API object.
///
/// @return An instantiation of the `DBSHARINGListFilesContinueArg` object.
///
+ (DBSHARINGListFilesContinueArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end