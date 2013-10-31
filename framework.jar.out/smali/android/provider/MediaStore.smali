.class public final Landroid/provider/MediaStore;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaStore$FileExtensionColumns;,
        Landroid/provider/MediaStore$ArtistExtensionColumns;,
        Landroid/provider/MediaStore$AlbumExtensionColumns;,
        Landroid/provider/MediaStore$PlaylistsExtensionColumns;,
        Landroid/provider/MediaStore$AudioExtensionColumns;,
        Landroid/provider/MediaStore$Video;,
        Landroid/provider/MediaStore$Audio;,
        Landroid/provider/MediaStore$Images;,
        Landroid/provider/MediaStore$InternalThumbnails;,
        Landroid/provider/MediaStore$Files;,
        Landroid/provider/MediaStore$MediaColumns;
    }
.end annotation


# static fields
.field public static final ACTION_IMAGE_CAPTURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE"

.field public static final ACTION_MTP_SESSION_END:Ljava/lang/String; = "android.provider.action.MTP_SESSION_END"

.field public static final ACTION_VIDEO_CAPTURE:Ljava/lang/String; = "android.media.action.VIDEO_CAPTURE"

.field public static final AUTHORITY:Ljava/lang/String; = "media"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://media/"

.field public static final EXTRA_DURATION_LIMIT:Ljava/lang/String; = "android.intent.extra.durationLimit"

.field public static final EXTRA_FINISH_ON_COMPLETION:Ljava/lang/String; = "android.intent.extra.finishOnCompletion"

.field public static final EXTRA_FULL_SCREEN:Ljava/lang/String; = "android.intent.extra.fullScreen"

.field public static final EXTRA_MEDIA_ALBUM:Ljava/lang/String; = "android.intent.extra.album"

.field public static final EXTRA_MEDIA_ARTIST:Ljava/lang/String; = "android.intent.extra.artist"

.field public static final EXTRA_MEDIA_FOCUS:Ljava/lang/String; = "android.intent.extra.focus"

.field public static final EXTRA_MEDIA_TITLE:Ljava/lang/String; = "android.intent.extra.title"

.field public static final EXTRA_OUTPUT:Ljava/lang/String; = "output"

.field public static final EXTRA_SCREEN_ORIENTATION:Ljava/lang/String; = "android.intent.extra.screenOrientation"

.field public static final EXTRA_SHOW_ACTION_ICONS:Ljava/lang/String; = "android.intent.extra.showActionIcons"

.field public static final EXTRA_SIZE_LIMIT:Ljava/lang/String; = "android.intent.extra.sizeLimit"

.field public static final EXTRA_VIDEO_QUALITY:Ljava/lang/String; = "android.intent.extra.videoQuality"

.field public static final INTENT_ACTION_MEDIA_PLAY_FROM_SEARCH:Ljava/lang/String; = "android.media.action.MEDIA_PLAY_FROM_SEARCH"

.field public static final INTENT_ACTION_MEDIA_SEARCH:Ljava/lang/String; = "android.intent.action.MEDIA_SEARCH"

.field public static final INTENT_ACTION_MUSIC_PLAYER:Ljava/lang/String; = "android.intent.action.MUSIC_PLAYER"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTENT_ACTION_STILL_IMAGE_CAMERA:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA"

.field public static final INTENT_ACTION_VIDEO_CAMERA:Ljava/lang/String; = "android.media.action.VIDEO_CAMERA"

.field public static final MEDIA_IGNORE_FILENAME:Ljava/lang/String; = ".nomedia"

.field public static final MEDIA_SCANNER_VOLUME:Ljava/lang/String; = "volume"

.field public static final MTP_TRANSFER_FILE_PATH:Ljava/lang/String; = "mtp_transfer_file_path"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_FIELD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation
.end field

.field public static final PARAM_DELETE_DATA:Ljava/lang/String; = "deletedata"

.field private static final TAG:Ljava/lang/String; = "MediaStore"

.field public static final UNHIDE_CALL:Ljava/lang/String; = "unhide"

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"

.field public static sAvailablePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2151
    const/4 v0, 0x0

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore;->getAvailablePath(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore;->sAvailablePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1812
    return-void
.end method

.method public static calRemaining(Ljava/lang/String;)J
    .locals 7
    .parameter "volume"

    .prologue
    .line 2250
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2251
    .local v2, stat:Landroid/os/StatFs;
    const-wide/32 v3, 0x100000

    .line 2252
    .local v3, unit:J
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x4980

    div-float v1, v5, v6

    .line 2254
    .local v1, remaining:F
    float-to-long v5, v1

    .line 2260
    .end local v1           #remaining:F
    .end local v2           #stat:Landroid/os/StatFs;
    .end local v3           #unit:J
    :goto_0
    return-wide v5

    .line 2256
    :catch_0
    move-exception v0

    .line 2260
    .local v0, ex:Ljava/lang/Exception;
    const-wide/16 v5, -0x1

    goto :goto_0
.end method

.method private static checkFsWritable(Ljava/lang/String;)Z
    .locals 7
    .parameter "volume"

    .prologue
    const/4 v4, 0x0

    .line 2218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/DCIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2219
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2220
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2221
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2237
    :cond_0
    :goto_0
    return v4

    .line 2225
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v5, ".probe"

    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    .local v3, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2229
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2231
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2234
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2235
    const/4 v4, 0x1

    goto :goto_0

    .line 2236
    :catch_0
    move-exception v2

    .line 2237
    .local v2, ex:Ljava/io/IOException;
    goto :goto_0
.end method

.method public static getAvailablePath(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "limit"
    .parameter "isSDFirst"

    .prologue
    .line 2157
    new-instance v0, Ljava/io/File;

    const-string v7, "EXTERNAL_STORAGE"

    const-string v8, "/mnt/sdcard"

    invoke-static {v7, v8}, Landroid/provider/MediaStore;->getStoragePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    const-string v8, "external_sd"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2158
    .local v0, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 2159
    .local v2, mExternal_Volume:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2160
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 2162
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 2164
    .local v5, mInternal_Volume:Ljava/lang/String;
    invoke-static {v2}, Landroid/provider/MediaStore;->checkFsWritable(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2165
    const-string v7, "MediaStore"

    const-string/jumbo v8, "mExternal_Volume is not available and return sdcard path"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v5

    .line 2199
    :goto_0
    return-object v7

    .line 2171
    :cond_1
    invoke-static {}, Landroid/provider/MediaStore;->getExternelSdcardMountStatus()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v5

    .line 2172
    goto :goto_0

    .line 2173
    :cond_2
    invoke-static {v5}, Landroid/provider/MediaStore;->checkFsWritable(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2174
    const-string v7, "MediaStore"

    const-string/jumbo v8, "mExternal_Volume is not available"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v2

    .line 2175
    goto :goto_0

    .line 2177
    :cond_3
    const/4 v1, 0x1

    .line 2178
    .local v1, location:I
    if-eqz p0, :cond_4

    .line 2180
    const/4 v1, 0x0

    .line 2183
    :cond_4
    if-eqz v1, :cond_5

    if-eqz p2, :cond_6

    .line 2184
    :cond_5
    move-object v6, v2

    .line 2185
    .local v6, temp:Ljava/lang/String;
    move-object v2, v5

    .line 2186
    move-object v5, v6

    .line 2190
    .end local v6           #temp:Ljava/lang/String;
    :cond_6
    invoke-static {v5}, Landroid/provider/MediaStore;->calRemaining(Ljava/lang/String;)J

    move-result-wide v3

    .line 2191
    .local v3, mInternal_Size:J
    int-to-long v7, p1

    cmp-long v7, v3, v7

    if-lez v7, :cond_7

    move-object v7, v5

    .line 2192
    goto :goto_0

    .line 2193
    :cond_7
    invoke-static {v2}, Landroid/provider/MediaStore;->calRemaining(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-lez v7, :cond_8

    .line 2194
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not enough space"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v2

    .line 2195
    goto :goto_0

    .line 2197
    :cond_8
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not enough space"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not enough space"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v5

    .line 2199
    goto/16 :goto_0
.end method

.method public static getExternelSdcardMountStatus()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2288
    new-instance v0, Ljava/io/File;

    const-string v3, "EXTERNAL_STORAGE"

    const-string v4, "/mnt/sdcard"

    invoke-static {v3, v4}, Landroid/provider/MediaStore;->getStoragePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "external_sd"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2289
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_1

    .line 2291
    :try_start_0
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 2293
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-eqz v1, :cond_0

    .line 2294
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2303
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :goto_0
    return-object v3

    .line 2296
    .restart local v1       #mountService:Landroid/os/storage/IMountService;
    :cond_0
    const-string/jumbo v3, "removed"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2298
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v2

    .line 2299
    .local v2, rex:Ljava/lang/Exception;
    const-string/jumbo v3, "removed"

    goto :goto_0

    .line 2303
    .end local v2           #rex:Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v3, "removed"

    goto :goto_0
.end method

.method public static getMediaScannerUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2104
    const-string v0, "content://media/none/media_scanner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getMtpTransferFileUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    const-string v0, "content://media/none/mtp_transfer_file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getStoragePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "variableName"
    .parameter "defaultPath"

    .prologue
    .line 2269
    const/4 v0, 0x0

    .line 2270
    .local v0, file:Ljava/io/File;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2271
    :cond_0
    const/4 v2, 0x0

    .line 2281
    :goto_0
    return-object v2

    .line 2274
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2275
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 2276
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #file:Ljava/io/File;
    :goto_1
    move-object v2, v0

    .line 2281
    goto :goto_0

    .line 2278
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #file:Ljava/io/File;
    goto :goto_1
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 2129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media/none/version"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2132
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2134
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2135
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2138
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2141
    :cond_0
    :goto_0
    return-object v2

    .line 2138
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
