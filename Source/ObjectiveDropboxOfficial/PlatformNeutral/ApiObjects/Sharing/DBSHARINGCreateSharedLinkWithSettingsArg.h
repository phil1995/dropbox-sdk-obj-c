///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSerializableProtocol.h"
#import <Foundation/Foundation.h>

@class DBSHARINGSharedLinkSettings;

#pragma mark - API Object

///
/// The `CreateSharedLinkWithSettingsArg` struct.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBSHARINGCreateSharedLinkWithSettingsArg : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The path to be shared by the shared link
@property(nonatomic, readonly, copy) NSString * _Nonnull path;

/// The requested settings for the newly created shared link
@property(nonatomic, readonly) DBSHARINGSharedLinkSettings * _Nullable settings;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param path The path to be shared by the shared link
/// @param settings The requested settings for the newly created shared link
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path settings:(DBSHARINGSharedLinkSettings * _Nullable)settings;

///
/// Convenience constructor (exposes only non-nullable instance variables with
/// no default value).
///
/// @param path The path to be shared by the shared link
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `CreateSharedLinkWithSettingsArg` struct.
///
@interface DBSHARINGCreateSharedLinkWithSettingsArgSerializer : NSObject

///
/// Serializes `DBSHARINGCreateSharedLinkWithSettingsArg` instances.
///
/// @param instance An instance of the
/// `DBSHARINGCreateSharedLinkWithSettingsArg` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBSHARINGCreateSharedLinkWithSettingsArg` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBSHARINGCreateSharedLinkWithSettingsArg * _Nonnull)instance;

///
/// Deserializes `DBSHARINGCreateSharedLinkWithSettingsArg` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBSHARINGCreateSharedLinkWithSettingsArg` API object.
///
/// @return An instantiation of the `DBSHARINGCreateSharedLinkWithSettingsArg`
/// object.
///
+ (DBSHARINGCreateSharedLinkWithSettingsArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end