///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBTEAMLOGFolderOverviewItemPinnedDetails;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - API Object

///
/// The `FolderOverviewItemPinnedDetails` struct.
///
/// Pinned item to folder overview.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMLOGFolderOverviewItemPinnedDetails : NSObject <DBSerializable, NSCopying>

#pragma mark - Instance fields

/// Folder Overview location position in the Assets list.
@property (nonatomic, readonly) NSNumber *folderOverviewLocationAsset;

/// Pinned items positions in the Assets list.
@property (nonatomic, readonly) NSArray<NSNumber *> *pinnedItemsAssetIndices;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param folderOverviewLocationAsset Folder Overview location position in the
/// Assets list.
/// @param pinnedItemsAssetIndices Pinned items positions in the Assets list.
///
/// @return An initialized instance.
///
- (instancetype)initWithFolderOverviewLocationAsset:(NSNumber *)folderOverviewLocationAsset
                            pinnedItemsAssetIndices:(NSArray<NSNumber *> *)pinnedItemsAssetIndices;

- (instancetype)init NS_UNAVAILABLE;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `FolderOverviewItemPinnedDetails` struct.
///
@interface DBTEAMLOGFolderOverviewItemPinnedDetailsSerializer : NSObject

///
/// Serializes `DBTEAMLOGFolderOverviewItemPinnedDetails` instances.
///
/// @param instance An instance of the
/// `DBTEAMLOGFolderOverviewItemPinnedDetails` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBTEAMLOGFolderOverviewItemPinnedDetails` API object.
///
+ (nullable NSDictionary<NSString *, id> *)serialize:(DBTEAMLOGFolderOverviewItemPinnedDetails *)instance;

///
/// Deserializes `DBTEAMLOGFolderOverviewItemPinnedDetails` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMLOGFolderOverviewItemPinnedDetails` API object.
///
/// @return An instantiation of the `DBTEAMLOGFolderOverviewItemPinnedDetails`
/// object.
///
+ (DBTEAMLOGFolderOverviewItemPinnedDetails *)deserialize:(NSDictionary<NSString *, id> *)dict;

@end

NS_ASSUME_NONNULL_END
