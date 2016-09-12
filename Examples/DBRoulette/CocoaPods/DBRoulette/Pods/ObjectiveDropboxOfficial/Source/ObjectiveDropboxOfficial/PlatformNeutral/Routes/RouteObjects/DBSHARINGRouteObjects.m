///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGRouteObjects.h"
#import "DBSHARINGRoutes.h"
#import "DBStoneBase.h"

@implementation DBSHARINGRouteObjects

static DBRoute *DBSHARINGAddFileMember;
static DBRoute *DBSHARINGAddFolderMember;
static DBRoute *DBSHARINGChangeFileMemberAccess;
static DBRoute *DBSHARINGCheckJobStatus;
static DBRoute *DBSHARINGCheckRemoveMemberJobStatus;
static DBRoute *DBSHARINGCheckShareJobStatus;
static DBRoute *DBSHARINGCreateSharedLink;
static DBRoute *DBSHARINGCreateSharedLinkWithSettings;
static DBRoute *DBSHARINGGetFileMetadata;
static DBRoute *DBSHARINGGetFileMetadataBatch;
static DBRoute *DBSHARINGGetFolderMetadata;
static DBRoute *DBSHARINGGetSharedLinkFile;
static DBRoute *DBSHARINGGetSharedLinkMetadata;
static DBRoute *DBSHARINGGetSharedLinks;
static DBRoute *DBSHARINGListFileMembers;
static DBRoute *DBSHARINGListFileMembersBatch;
static DBRoute *DBSHARINGListFileMembersContinue;
static DBRoute *DBSHARINGListFolderMembers;
static DBRoute *DBSHARINGListFolderMembersContinue;
static DBRoute *DBSHARINGListFolders;
static DBRoute *DBSHARINGListFoldersContinue;
static DBRoute *DBSHARINGListMountableFolders;
static DBRoute *DBSHARINGListMountableFoldersContinue;
static DBRoute *DBSHARINGListReceivedFiles;
static DBRoute *DBSHARINGListReceivedFilesContinue;
static DBRoute *DBSHARINGListSharedLinks;
static DBRoute *DBSHARINGModifySharedLinkSettings;
static DBRoute *DBSHARINGMountFolder;
static DBRoute *DBSHARINGRelinquishFileMembership;
static DBRoute *DBSHARINGRelinquishFolderMembership;
static DBRoute *DBSHARINGRemoveFileMember;
static DBRoute *DBSHARINGRemoveFileMember2;
static DBRoute *DBSHARINGRemoveFolderMember;
static DBRoute *DBSHARINGRevokeSharedLink;
static DBRoute *DBSHARINGShareFolder;
static DBRoute *DBSHARINGTransferFolder;
static DBRoute *DBSHARINGUnmountFolder;
static DBRoute *DBSHARINGUnshareFile;
static DBRoute *DBSHARINGUnshareFolder;
static DBRoute *DBSHARINGUpdateFolderMember;
static DBRoute *DBSHARINGUpdateFolderPolicy;

+ (DBRoute *)DBSHARINGAddFileMember {
  if (!DBSHARINGAddFileMember) {
    DBSHARINGAddFileMember = [[DBRoute alloc] init:@"add_file_member"
        namespace_:@"sharing"
        deprecated:@NO
        resultType:[NSArray<DBSHARINGFileMemberActionResult *> class]
        errorType:[DBSHARINGAddFileMemberError class]
        attrs:@{
          @"host" : @"api",
          @"style" : @"rpc"
        }
        arraySerialBlock:nil
        arrayDeserialBlock:^id(id array) {
          return [DBArraySerializer deserialize:array
                                      withBlock:^id(id elem) {
                                        return [DBSHARINGFileMemberActionResultSerializer deserialize:elem];
                                      }];
        }];
  }
  return DBSHARINGAddFileMember;
}

+ (DBRoute *)DBSHARINGAddFolderMember {
  if (!DBSHARINGAddFolderMember) {
    DBSHARINGAddFolderMember = [[DBRoute alloc] init:@"add_folder_member"
                                          namespace_:@"sharing"
                                          deprecated:@NO
                                          resultType:nil
                                           errorType:[DBSHARINGAddFolderMemberError class]
                                               attrs:@{
                                                 @"host" : @"api",
                                                 @"style" : @"rpc"
                                               }
                                    arraySerialBlock:nil
                                  arrayDeserialBlock:nil];
  }
  return DBSHARINGAddFolderMember;
}

+ (DBRoute *)DBSHARINGChangeFileMemberAccess {
  if (!DBSHARINGChangeFileMemberAccess) {
    DBSHARINGChangeFileMemberAccess = [[DBRoute alloc] init:@"change_file_member_access"
                                                 namespace_:@"sharing"
                                                 deprecated:@NO
                                                 resultType:[DBSHARINGFileMemberActionResult class]
                                                  errorType:[DBSHARINGFileMemberActionError class]
                                                      attrs:@{
                                                        @"host" : @"api",
                                                        @"style" : @"rpc"
                                                      }
                                           arraySerialBlock:nil
                                         arrayDeserialBlock:nil];
  }
  return DBSHARINGChangeFileMemberAccess;
}

+ (DBRoute *)DBSHARINGCheckJobStatus {
  if (!DBSHARINGCheckJobStatus) {
    DBSHARINGCheckJobStatus = [[DBRoute alloc] init:@"check_job_status"
                                         namespace_:@"sharing"
                                         deprecated:@NO
                                         resultType:[DBSHARINGJobStatus class]
                                          errorType:[DBASYNCPollError class]
                                              attrs:@{
                                                @"host" : @"api",
                                                @"style" : @"rpc"
                                              }
                                   arraySerialBlock:nil
                                 arrayDeserialBlock:nil];
  }
  return DBSHARINGCheckJobStatus;
}

+ (DBRoute *)DBSHARINGCheckRemoveMemberJobStatus {
  if (!DBSHARINGCheckRemoveMemberJobStatus) {
    DBSHARINGCheckRemoveMemberJobStatus = [[DBRoute alloc] init:@"check_remove_member_job_status"
                                                     namespace_:@"sharing"
                                                     deprecated:@NO
                                                     resultType:[DBSHARINGRemoveMemberJobStatus class]
                                                      errorType:[DBASYNCPollError class]
                                                          attrs:@{
                                                            @"host" : @"api",
                                                            @"style" : @"rpc"
                                                          }
                                               arraySerialBlock:nil
                                             arrayDeserialBlock:nil];
  }
  return DBSHARINGCheckRemoveMemberJobStatus;
}

+ (DBRoute *)DBSHARINGCheckShareJobStatus {
  if (!DBSHARINGCheckShareJobStatus) {
    DBSHARINGCheckShareJobStatus = [[DBRoute alloc] init:@"check_share_job_status"
                                              namespace_:@"sharing"
                                              deprecated:@NO
                                              resultType:[DBSHARINGShareFolderJobStatus class]
                                               errorType:[DBASYNCPollError class]
                                                   attrs:@{
                                                     @"host" : @"api",
                                                     @"style" : @"rpc"
                                                   }
                                        arraySerialBlock:nil
                                      arrayDeserialBlock:nil];
  }
  return DBSHARINGCheckShareJobStatus;
}

+ (DBRoute *)DBSHARINGCreateSharedLink {
  if (!DBSHARINGCreateSharedLink) {
    DBSHARINGCreateSharedLink = [[DBRoute alloc] init:@"create_shared_link"
                                           namespace_:@"sharing"
                                           deprecated:@YES
                                           resultType:[DBSHARINGPathLinkMetadata class]
                                            errorType:[DBSHARINGCreateSharedLinkError class]
                                                attrs:@{
                                                  @"host" : @"api",
                                                  @"style" : @"rpc"
                                                }
                                     arraySerialBlock:nil
                                   arrayDeserialBlock:nil];
  }
  return DBSHARINGCreateSharedLink;
}

+ (DBRoute *)DBSHARINGCreateSharedLinkWithSettings {
  if (!DBSHARINGCreateSharedLinkWithSettings) {
    DBSHARINGCreateSharedLinkWithSettings = [[DBRoute alloc] init:@"create_shared_link_with_settings"
                                                       namespace_:@"sharing"
                                                       deprecated:@NO
                                                       resultType:[DBSHARINGSharedLinkMetadata class]
                                                        errorType:[DBSHARINGCreateSharedLinkWithSettingsError class]
                                                            attrs:@{
                                                              @"host" : @"api",
                                                              @"style" : @"rpc"
                                                            }
                                                 arraySerialBlock:nil
                                               arrayDeserialBlock:nil];
  }
  return DBSHARINGCreateSharedLinkWithSettings;
}

+ (DBRoute *)DBSHARINGGetFileMetadata {
  if (!DBSHARINGGetFileMetadata) {
    DBSHARINGGetFileMetadata = [[DBRoute alloc] init:@"get_file_metadata"
                                          namespace_:@"sharing"
                                          deprecated:@NO
                                          resultType:[DBSHARINGSharedFileMetadata class]
                                           errorType:[DBSHARINGGetFileMetadataError class]
                                               attrs:@{
                                                 @"host" : @"api",
                                                 @"style" : @"rpc"
                                               }
                                    arraySerialBlock:nil
                                  arrayDeserialBlock:nil];
  }
  return DBSHARINGGetFileMetadata;
}

+ (DBRoute *)DBSHARINGGetFileMetadataBatch {
  if (!DBSHARINGGetFileMetadataBatch) {
    DBSHARINGGetFileMetadataBatch = [[DBRoute alloc] init:@"get_file_metadata/batch"
        namespace_:@"sharing"
        deprecated:@NO
        resultType:[NSArray<DBSHARINGGetFileMetadataBatchResult *> class]
        errorType:[DBSHARINGSharingUserError class]
        attrs:@{
          @"host" : @"api",
          @"style" : @"rpc"
        }
        arraySerialBlock:nil
        arrayDeserialBlock:^id(id array) {
          return [DBArraySerializer deserialize:array
                                      withBlock:^id(id elem) {
                                        return [DBSHARINGGetFileMetadataBatchResultSerializer deserialize:elem];
                                      }];
        }];
  }
  return DBSHARINGGetFileMetadataBatch;
}

+ (DBRoute *)DBSHARINGGetFolderMetadata {
  if (!DBSHARINGGetFolderMetadata) {
    DBSHARINGGetFolderMetadata = [[DBRoute alloc] init:@"get_folder_metadata"
                                            namespace_:@"sharing"
                                            deprecated:@NO
                                            resultType:[DBSHARINGSharedFolderMetadata class]
                                             errorType:[DBSHARINGSharedFolderAccessError class]
                                                 attrs:@{
                                                   @"host" : @"api",
                                                   @"style" : @"rpc"
                                                 }
                                      arraySerialBlock:nil
                                    arrayDeserialBlock:nil];
  }
  return DBSHARINGGetFolderMetadata;
}

+ (DBRoute *)DBSHARINGGetSharedLinkFile {
  if (!DBSHARINGGetSharedLinkFile) {
    DBSHARINGGetSharedLinkFile = [[DBRoute alloc] init:@"get_shared_link_file"
                                            namespace_:@"sharing"
                                            deprecated:@NO
                                            resultType:[DBSHARINGSharedLinkMetadata class]
                                             errorType:[DBSHARINGGetSharedLinkFileError class]
                                                 attrs:@{
                                                   @"host" : @"content",
                                                   @"style" : @"download"
                                                 }
                                      arraySerialBlock:nil
                                    arrayDeserialBlock:nil];
  }
  return DBSHARINGGetSharedLinkFile;
}

+ (DBRoute *)DBSHARINGGetSharedLinkMetadata {
  if (!DBSHARINGGetSharedLinkMetadata) {
    DBSHARINGGetSharedLinkMetadata = [[DBRoute alloc] init:@"get_shared_link_metadata"
                                                namespace_:@"sharing"
                                                deprecated:@NO
                                                resultType:[DBSHARINGSharedLinkMetadata class]
                                                 errorType:[DBSHARINGSharedLinkError class]
                                                     attrs:@{
                                                       @"host" : @"api",
                                                       @"style" : @"rpc"
                                                     }
                                          arraySerialBlock:nil
                                        arrayDeserialBlock:nil];
  }
  return DBSHARINGGetSharedLinkMetadata;
}

+ (DBRoute *)DBSHARINGGetSharedLinks {
  if (!DBSHARINGGetSharedLinks) {
    DBSHARINGGetSharedLinks = [[DBRoute alloc] init:@"get_shared_links"
                                         namespace_:@"sharing"
                                         deprecated:@YES
                                         resultType:[DBSHARINGGetSharedLinksResult class]
                                          errorType:[DBSHARINGGetSharedLinksError class]
                                              attrs:@{
                                                @"host" : @"api",
                                                @"style" : @"rpc"
                                              }
                                   arraySerialBlock:nil
                                 arrayDeserialBlock:nil];
  }
  return DBSHARINGGetSharedLinks;
}

+ (DBRoute *)DBSHARINGListFileMembers {
  if (!DBSHARINGListFileMembers) {
    DBSHARINGListFileMembers = [[DBRoute alloc] init:@"list_file_members"
                                          namespace_:@"sharing"
                                          deprecated:@NO
                                          resultType:[DBSHARINGSharedFileMembers class]
                                           errorType:[DBSHARINGListFileMembersError class]
                                               attrs:@{
                                                 @"host" : @"api",
                                                 @"style" : @"rpc"
                                               }
                                    arraySerialBlock:nil
                                  arrayDeserialBlock:nil];
  }
  return DBSHARINGListFileMembers;
}

+ (DBRoute *)DBSHARINGListFileMembersBatch {
  if (!DBSHARINGListFileMembersBatch) {
    DBSHARINGListFileMembersBatch = [[DBRoute alloc] init:@"list_file_members/batch"
        namespace_:@"sharing"
        deprecated:@NO
        resultType:[NSArray<DBSHARINGListFileMembersBatchResult *> class]
        errorType:[DBSHARINGSharingUserError class]
        attrs:@{
          @"host" : @"api",
          @"style" : @"rpc"
        }
        arraySerialBlock:nil
        arrayDeserialBlock:^id(id array) {
          return [DBArraySerializer deserialize:array
                                      withBlock:^id(id elem) {
                                        return [DBSHARINGListFileMembersBatchResultSerializer deserialize:elem];
                                      }];
        }];
  }
  return DBSHARINGListFileMembersBatch;
}

+ (DBRoute *)DBSHARINGListFileMembersContinue {
  if (!DBSHARINGListFileMembersContinue) {
    DBSHARINGListFileMembersContinue = [[DBRoute alloc] init:@"list_file_members/continue"
                                                  namespace_:@"sharing"
                                                  deprecated:@NO
                                                  resultType:[DBSHARINGSharedFileMembers class]
                                                   errorType:[DBSHARINGListFileMembersContinueError class]
                                                       attrs:@{
                                                         @"host" : @"api",
                                                         @"style" : @"rpc"
                                                       }
                                            arraySerialBlock:nil
                                          arrayDeserialBlock:nil];
  }
  return DBSHARINGListFileMembersContinue;
}

+ (DBRoute *)DBSHARINGListFolderMembers {
  if (!DBSHARINGListFolderMembers) {
    DBSHARINGListFolderMembers = [[DBRoute alloc] init:@"list_folder_members"
                                            namespace_:@"sharing"
                                            deprecated:@NO
                                            resultType:[DBSHARINGSharedFolderMembers class]
                                             errorType:[DBSHARINGSharedFolderAccessError class]
                                                 attrs:@{
                                                   @"host" : @"api",
                                                   @"style" : @"rpc"
                                                 }
                                      arraySerialBlock:nil
                                    arrayDeserialBlock:nil];
  }
  return DBSHARINGListFolderMembers;
}

+ (DBRoute *)DBSHARINGListFolderMembersContinue {
  if (!DBSHARINGListFolderMembersContinue) {
    DBSHARINGListFolderMembersContinue = [[DBRoute alloc] init:@"list_folder_members/continue"
                                                    namespace_:@"sharing"
                                                    deprecated:@NO
                                                    resultType:[DBSHARINGSharedFolderMembers class]
                                                     errorType:[DBSHARINGListFolderMembersContinueError class]
                                                         attrs:@{
                                                           @"host" : @"api",
                                                           @"style" : @"rpc"
                                                         }
                                              arraySerialBlock:nil
                                            arrayDeserialBlock:nil];
  }
  return DBSHARINGListFolderMembersContinue;
}

+ (DBRoute *)DBSHARINGListFolders {
  if (!DBSHARINGListFolders) {
    DBSHARINGListFolders = [[DBRoute alloc] init:@"list_folders"
                                      namespace_:@"sharing"
                                      deprecated:@NO
                                      resultType:[DBSHARINGListFoldersResult class]
                                       errorType:nil
                                           attrs:@{
                                             @"host" : @"api",
                                             @"style" : @"rpc"
                                           }
                                arraySerialBlock:nil
                              arrayDeserialBlock:nil];
  }
  return DBSHARINGListFolders;
}

+ (DBRoute *)DBSHARINGListFoldersContinue {
  if (!DBSHARINGListFoldersContinue) {
    DBSHARINGListFoldersContinue = [[DBRoute alloc] init:@"list_folders/continue"
                                              namespace_:@"sharing"
                                              deprecated:@NO
                                              resultType:[DBSHARINGListFoldersResult class]
                                               errorType:[DBSHARINGListFoldersContinueError class]
                                                   attrs:@{
                                                     @"host" : @"api",
                                                     @"style" : @"rpc"
                                                   }
                                        arraySerialBlock:nil
                                      arrayDeserialBlock:nil];
  }
  return DBSHARINGListFoldersContinue;
}

+ (DBRoute *)DBSHARINGListMountableFolders {
  if (!DBSHARINGListMountableFolders) {
    DBSHARINGListMountableFolders = [[DBRoute alloc] init:@"list_mountable_folders"
                                               namespace_:@"sharing"
                                               deprecated:@NO
                                               resultType:[DBSHARINGListFoldersResult class]
                                                errorType:nil
                                                    attrs:@{
                                                      @"host" : @"api",
                                                      @"style" : @"rpc"
                                                    }
                                         arraySerialBlock:nil
                                       arrayDeserialBlock:nil];
  }
  return DBSHARINGListMountableFolders;
}

+ (DBRoute *)DBSHARINGListMountableFoldersContinue {
  if (!DBSHARINGListMountableFoldersContinue) {
    DBSHARINGListMountableFoldersContinue = [[DBRoute alloc] init:@"list_mountable_folders/continue"
                                                       namespace_:@"sharing"
                                                       deprecated:@NO
                                                       resultType:[DBSHARINGListFoldersResult class]
                                                        errorType:[DBSHARINGListFoldersContinueError class]
                                                            attrs:@{
                                                              @"host" : @"api",
                                                              @"style" : @"rpc"
                                                            }
                                                 arraySerialBlock:nil
                                               arrayDeserialBlock:nil];
  }
  return DBSHARINGListMountableFoldersContinue;
}

+ (DBRoute *)DBSHARINGListReceivedFiles {
  if (!DBSHARINGListReceivedFiles) {
    DBSHARINGListReceivedFiles = [[DBRoute alloc] init:@"list_received_files"
                                            namespace_:@"sharing"
                                            deprecated:@NO
                                            resultType:[DBSHARINGListFilesResult class]
                                             errorType:[DBSHARINGSharingUserError class]
                                                 attrs:@{
                                                   @"host" : @"api",
                                                   @"style" : @"rpc"
                                                 }
                                      arraySerialBlock:nil
                                    arrayDeserialBlock:nil];
  }
  return DBSHARINGListReceivedFiles;
}

+ (DBRoute *)DBSHARINGListReceivedFilesContinue {
  if (!DBSHARINGListReceivedFilesContinue) {
    DBSHARINGListReceivedFilesContinue = [[DBRoute alloc] init:@"list_received_files/continue"
                                                    namespace_:@"sharing"
                                                    deprecated:@NO
                                                    resultType:[DBSHARINGListFilesResult class]
                                                     errorType:[DBSHARINGListFilesContinueError class]
                                                         attrs:@{
                                                           @"host" : @"api",
                                                           @"style" : @"rpc"
                                                         }
                                              arraySerialBlock:nil
                                            arrayDeserialBlock:nil];
  }
  return DBSHARINGListReceivedFilesContinue;
}

+ (DBRoute *)DBSHARINGListSharedLinks {
  if (!DBSHARINGListSharedLinks) {
    DBSHARINGListSharedLinks = [[DBRoute alloc] init:@"list_shared_links"
                                          namespace_:@"sharing"
                                          deprecated:@NO
                                          resultType:[DBSHARINGListSharedLinksResult class]
                                           errorType:[DBSHARINGListSharedLinksError class]
                                               attrs:@{
                                                 @"host" : @"api",
                                                 @"style" : @"rpc"
                                               }
                                    arraySerialBlock:nil
                                  arrayDeserialBlock:nil];
  }
  return DBSHARINGListSharedLinks;
}

+ (DBRoute *)DBSHARINGModifySharedLinkSettings {
  if (!DBSHARINGModifySharedLinkSettings) {
    DBSHARINGModifySharedLinkSettings = [[DBRoute alloc] init:@"modify_shared_link_settings"
                                                   namespace_:@"sharing"
                                                   deprecated:@NO
                                                   resultType:[DBSHARINGSharedLinkMetadata class]
                                                    errorType:[DBSHARINGModifySharedLinkSettingsError class]
                                                        attrs:@{
                                                          @"host" : @"api",
                                                          @"style" : @"rpc"
                                                        }
                                             arraySerialBlock:nil
                                           arrayDeserialBlock:nil];
  }
  return DBSHARINGModifySharedLinkSettings;
}

+ (DBRoute *)DBSHARINGMountFolder {
  if (!DBSHARINGMountFolder) {
    DBSHARINGMountFolder = [[DBRoute alloc] init:@"mount_folder"
                                      namespace_:@"sharing"
                                      deprecated:@NO
                                      resultType:[DBSHARINGSharedFolderMetadata class]
                                       errorType:[DBSHARINGMountFolderError class]
                                           attrs:@{
                                             @"host" : @"api",
                                             @"style" : @"rpc"
                                           }
                                arraySerialBlock:nil
                              arrayDeserialBlock:nil];
  }
  return DBSHARINGMountFolder;
}

+ (DBRoute *)DBSHARINGRelinquishFileMembership {
  if (!DBSHARINGRelinquishFileMembership) {
    DBSHARINGRelinquishFileMembership = [[DBRoute alloc] init:@"relinquish_file_membership"
                                                   namespace_:@"sharing"
                                                   deprecated:@NO
                                                   resultType:nil
                                                    errorType:[DBSHARINGRelinquishFileMembershipError class]
                                                        attrs:@{
                                                          @"host" : @"api",
                                                          @"style" : @"rpc"
                                                        }
                                             arraySerialBlock:nil
                                           arrayDeserialBlock:nil];
  }
  return DBSHARINGRelinquishFileMembership;
}

+ (DBRoute *)DBSHARINGRelinquishFolderMembership {
  if (!DBSHARINGRelinquishFolderMembership) {
    DBSHARINGRelinquishFolderMembership = [[DBRoute alloc] init:@"relinquish_folder_membership"
                                                     namespace_:@"sharing"
                                                     deprecated:@NO
                                                     resultType:[DBASYNCLaunchEmptyResult class]
                                                      errorType:[DBSHARINGRelinquishFolderMembershipError class]
                                                          attrs:@{
                                                            @"host" : @"api",
                                                            @"style" : @"rpc"
                                                          }
                                               arraySerialBlock:nil
                                             arrayDeserialBlock:nil];
  }
  return DBSHARINGRelinquishFolderMembership;
}

+ (DBRoute *)DBSHARINGRemoveFileMember {
  if (!DBSHARINGRemoveFileMember) {
    DBSHARINGRemoveFileMember = [[DBRoute alloc] init:@"remove_file_member"
                                           namespace_:@"sharing"
                                           deprecated:@YES
                                           resultType:[DBSHARINGFileMemberActionIndividualResult class]
                                            errorType:[DBSHARINGRemoveFileMemberError class]
                                                attrs:@{
                                                  @"host" : @"api",
                                                  @"style" : @"rpc"
                                                }
                                     arraySerialBlock:nil
                                   arrayDeserialBlock:nil];
  }
  return DBSHARINGRemoveFileMember;
}

+ (DBRoute *)DBSHARINGRemoveFileMember2 {
  if (!DBSHARINGRemoveFileMember2) {
    DBSHARINGRemoveFileMember2 = [[DBRoute alloc] init:@"remove_file_member_2"
                                            namespace_:@"sharing"
                                            deprecated:@NO
                                            resultType:[DBSHARINGFileMemberRemoveActionResult class]
                                             errorType:[DBSHARINGRemoveFileMemberError class]
                                                 attrs:@{
                                                   @"host" : @"api",
                                                   @"style" : @"rpc"
                                                 }
                                      arraySerialBlock:nil
                                    arrayDeserialBlock:nil];
  }
  return DBSHARINGRemoveFileMember2;
}

+ (DBRoute *)DBSHARINGRemoveFolderMember {
  if (!DBSHARINGRemoveFolderMember) {
    DBSHARINGRemoveFolderMember = [[DBRoute alloc] init:@"remove_folder_member"
                                             namespace_:@"sharing"
                                             deprecated:@NO
                                             resultType:[DBASYNCLaunchResultBase class]
                                              errorType:[DBSHARINGRemoveFolderMemberError class]
                                                  attrs:@{
                                                    @"host" : @"api",
                                                    @"style" : @"rpc"
                                                  }
                                       arraySerialBlock:nil
                                     arrayDeserialBlock:nil];
  }
  return DBSHARINGRemoveFolderMember;
}

+ (DBRoute *)DBSHARINGRevokeSharedLink {
  if (!DBSHARINGRevokeSharedLink) {
    DBSHARINGRevokeSharedLink = [[DBRoute alloc] init:@"revoke_shared_link"
                                           namespace_:@"sharing"
                                           deprecated:@NO
                                           resultType:nil
                                            errorType:[DBSHARINGRevokeSharedLinkError class]
                                                attrs:@{
                                                  @"host" : @"api",
                                                  @"style" : @"rpc"
                                                }
                                     arraySerialBlock:nil
                                   arrayDeserialBlock:nil];
  }
  return DBSHARINGRevokeSharedLink;
}

+ (DBRoute *)DBSHARINGShareFolder {
  if (!DBSHARINGShareFolder) {
    DBSHARINGShareFolder = [[DBRoute alloc] init:@"share_folder"
                                      namespace_:@"sharing"
                                      deprecated:@NO
                                      resultType:[DBSHARINGShareFolderLaunch class]
                                       errorType:[DBSHARINGShareFolderError class]
                                           attrs:@{
                                             @"host" : @"api",
                                             @"style" : @"rpc"
                                           }
                                arraySerialBlock:nil
                              arrayDeserialBlock:nil];
  }
  return DBSHARINGShareFolder;
}

+ (DBRoute *)DBSHARINGTransferFolder {
  if (!DBSHARINGTransferFolder) {
    DBSHARINGTransferFolder = [[DBRoute alloc] init:@"transfer_folder"
                                         namespace_:@"sharing"
                                         deprecated:@NO
                                         resultType:nil
                                          errorType:[DBSHARINGTransferFolderError class]
                                              attrs:@{
                                                @"host" : @"api",
                                                @"style" : @"rpc"
                                              }
                                   arraySerialBlock:nil
                                 arrayDeserialBlock:nil];
  }
  return DBSHARINGTransferFolder;
}

+ (DBRoute *)DBSHARINGUnmountFolder {
  if (!DBSHARINGUnmountFolder) {
    DBSHARINGUnmountFolder = [[DBRoute alloc] init:@"unmount_folder"
                                        namespace_:@"sharing"
                                        deprecated:@NO
                                        resultType:nil
                                         errorType:[DBSHARINGUnmountFolderError class]
                                             attrs:@{
                                               @"host" : @"api",
                                               @"style" : @"rpc"
                                             }
                                  arraySerialBlock:nil
                                arrayDeserialBlock:nil];
  }
  return DBSHARINGUnmountFolder;
}

+ (DBRoute *)DBSHARINGUnshareFile {
  if (!DBSHARINGUnshareFile) {
    DBSHARINGUnshareFile = [[DBRoute alloc] init:@"unshare_file"
                                      namespace_:@"sharing"
                                      deprecated:@NO
                                      resultType:nil
                                       errorType:[DBSHARINGUnshareFileError class]
                                           attrs:@{
                                             @"host" : @"api",
                                             @"style" : @"rpc"
                                           }
                                arraySerialBlock:nil
                              arrayDeserialBlock:nil];
  }
  return DBSHARINGUnshareFile;
}

+ (DBRoute *)DBSHARINGUnshareFolder {
  if (!DBSHARINGUnshareFolder) {
    DBSHARINGUnshareFolder = [[DBRoute alloc] init:@"unshare_folder"
                                        namespace_:@"sharing"
                                        deprecated:@NO
                                        resultType:[DBASYNCLaunchEmptyResult class]
                                         errorType:[DBSHARINGUnshareFolderError class]
                                             attrs:@{
                                               @"host" : @"api",
                                               @"style" : @"rpc"
                                             }
                                  arraySerialBlock:nil
                                arrayDeserialBlock:nil];
  }
  return DBSHARINGUnshareFolder;
}

+ (DBRoute *)DBSHARINGUpdateFolderMember {
  if (!DBSHARINGUpdateFolderMember) {
    DBSHARINGUpdateFolderMember = [[DBRoute alloc] init:@"update_folder_member"
                                             namespace_:@"sharing"
                                             deprecated:@NO
                                             resultType:[DBSHARINGMemberAccessLevelResult class]
                                              errorType:[DBSHARINGUpdateFolderMemberError class]
                                                  attrs:@{
                                                    @"host" : @"api",
                                                    @"style" : @"rpc"
                                                  }
                                       arraySerialBlock:nil
                                     arrayDeserialBlock:nil];
  }
  return DBSHARINGUpdateFolderMember;
}

+ (DBRoute *)DBSHARINGUpdateFolderPolicy {
  if (!DBSHARINGUpdateFolderPolicy) {
    DBSHARINGUpdateFolderPolicy = [[DBRoute alloc] init:@"update_folder_policy"
                                             namespace_:@"sharing"
                                             deprecated:@NO
                                             resultType:[DBSHARINGSharedFolderMetadata class]
                                              errorType:[DBSHARINGUpdateFolderPolicyError class]
                                                  attrs:@{
                                                    @"host" : @"api",
                                                    @"style" : @"rpc"
                                                  }
                                       arraySerialBlock:nil
                                     arrayDeserialBlock:nil];
  }
  return DBSHARINGUpdateFolderPolicy;
}

@end
