.class public Lcom/yulong/android/uitechno/service/UitechnoService;
.super Landroid/os/Binder;
.source "UitechnoService.java"


# static fields
.field public static final CODE_COPY_FILE:I = 0x6

.field public static final CODE_DELETE_FILE:I = 0x4

.field public static final CODE_GET_PARCELFILEDESCRIPTOR:I = 0x3

.field public static final CODE_PROPERTYSERVICE_GETPROPERTY:I = 0x301

.field public static final CODE_SYSTEMPROPERTIES_SET:I = 0x2

.field public static final CODE_THEMESERVICE_CLEARPROPERTY:I = 0x103

.field public static final CODE_THEMESERVICE_GETPROPERTY:I = 0x101

.field public static final CODE_THEMESERVICE_LOADPROPERTY:I = 0x102

.field public static final CODE_THEMESERVICE_PRELOADZYGOTERESOURCE:I = 0x106

.field public static final CODE_THEMESERVICE_THEMECHANGED:I = 0x105

.field public static final CODE_UNZIP_FILE:I = 0x5

.field public static final CODE_WATCHSERVICE_INTENT:I = 0x201

.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yulong.android.uitechno.service.UitechnoService"

.field public static final SERVICE_NAME:Ljava/lang/String; = "uitechnoService"

.field static final TAG:Ljava/lang/String; = "uitechnoService"

.field public static final THEME_PROPERTY_ENABLE:Ljava/lang/String; = "persist.sys.ui.theme.enable"

.field public static final THEME_PROPERTY_PATH:Ljava/lang/String; = "persist.sys.ui.theme.path"


# instance fields
.field mContext:Landroid/content/Context;

.field mServiceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/uitechno/service/BService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/uitechno/service/UitechnoService;->mServiceList:Ljava/util/ArrayList;

    .line 108
    const-string v0, "uitechnoService"

    const-string v1, "UitechnoService.UitechnoService() start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iput-object p1, p0, Lcom/yulong/android/uitechno/service/UitechnoService;->mContext:Landroid/content/Context;

    .line 110
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/UitechnoService;->mServiceList:Ljava/util/ArrayList;

    new-instance v1, Lcom/yulong/android/uitechno/service/YLUIPropertyService;

    invoke-direct {v1, p1}, Lcom/yulong/android/uitechno/service/YLUIPropertyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/UitechnoService;->mServiceList:Ljava/util/ArrayList;

    new-instance v1, Lcom/yulong/android/uitechno/service/YLUIThemeService;

    invoke-direct {v1, p1}, Lcom/yulong/android/uitechno/service/YLUIThemeService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/UitechnoService;->mServiceList:Ljava/util/ArrayList;

    new-instance v1, Lcom/yulong/android/uitechno/service/YLUIWatchService;

    invoke-direct {v1, p1}, Lcom/yulong/android/uitechno/service/YLUIWatchService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/UitechnoService;->mServiceList:Ljava/util/ArrayList;

    new-instance v1, Lcom/yulong/android/uitechno/service/YLUIBroadcastService;

    invoke-direct {v1, p1}, Lcom/yulong/android/uitechno/service/YLUIBroadcastService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v0, "uitechnoService"

    const-string v1, "UitechnoService.UitechnoService() end"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method private static SystemProperties_set(ILandroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"

    .prologue
    .line 176
    const-string v3, "uitechnoService"

    const-string v4, "UitechnoService.SystemProperties_set() start"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, key:Ljava/lang/String;
    const-string v3, "uitechnoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, value:Ljava/lang/String;
    const-string v3, "uitechnoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :goto_0
    const-string v3, "uitechnoService"

    const-string v4, "UitechnoService.SystemProperties_set() end"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "uitechnoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " itechnoService.SystemProperties_set() error == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 9
    .parameter "srcFile"
    .parameter "destFile"

    .prologue
    .line 450
    const/4 v7, 0x1

    .line 453
    .local v7, result:Z
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 456
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 457
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1ed

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, in:Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    .line 468
    .local v5, out:Ljava/nio/channels/FileChannel;
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 469
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 470
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 475
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 479
    :goto_0
    :try_start_3
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    move v8, v7

    .line 483
    .end local v0           #in:Ljava/nio/channels/FileChannel;
    .end local v5           #out:Ljava/nio/channels/FileChannel;
    .end local v7           #result:Z
    .local v8, result:I
    :goto_2
    return v8

    .line 458
    .end local v8           #result:I
    .restart local v7       #result:Z
    :catch_0
    move-exception v6

    .line 459
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 460
    const/4 v7, 0x0

    move v8, v7

    .line 461
    .restart local v8       #result:I
    goto :goto_2

    .line 471
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #result:I
    .restart local v0       #in:Ljava/nio/channels/FileChannel;
    .restart local v5       #out:Ljava/nio/channels/FileChannel;
    :catch_1
    move-exception v6

    .line 472
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 475
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 479
    :goto_3
    :try_start_6
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 480
    .end local v6           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    goto :goto_1

    .line 474
    :catchall_0
    move-exception v1

    .line 475
    :try_start_7
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 479
    :goto_4
    :try_start_8
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 474
    :goto_5
    throw v1

    .line 476
    :catch_3
    move-exception v2

    goto :goto_4

    .line 480
    :catch_4
    move-exception v2

    goto :goto_5

    .line 476
    .restart local v6       #e:Ljava/lang/Exception;
    :catch_5
    move-exception v1

    goto :goto_3

    .end local v6           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method private static copyFile2Dir(ILandroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"

    .prologue
    .line 278
    const-string v6, "uitechnoService"

    const-string v7, "UitechnoService.copyFile2Dir() start"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, file:Ljava/lang/String;
    const-string v6, "uitechnoService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, dstFile:Ljava/lang/String;
    const-string v6, "uitechnoService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dstFile == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, ifOverride:Ljava/lang/String;
    const-string v6, "uitechnoService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ifOverride == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, ifContainRootDir:Ljava/lang/String;
    const-string v6, "uitechnoService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ifContainRootDir == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/yulong/android/uitechno/service/UitechnoService;->copyFile2Dir(Ljava/io/File;Ljava/io/File;ZZ)Z

    move-result v5

    .line 289
    .local v5, result:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v0           #dstFile:Ljava/lang/String;
    .end local v2           #file:Ljava/lang/String;
    .end local v3           #ifContainRootDir:Ljava/lang/String;
    .end local v4           #ifOverride:Ljava/lang/String;
    .end local v5           #result:Z
    :goto_0
    const-string v6, "uitechnoService"

    const-string v7, "UitechnoService.copyFile2Dir() end"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void

    .line 290
    :catch_0
    move-exception v1

    .line 291
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "uitechnoService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " itechnoService.copyFile2Dir() error == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static copyFile2Dir(Ljava/io/File;Ljava/io/File;ZZ)Z
    .locals 12
    .parameter "file"
    .parameter "dstPath"
    .parameter "ifOverride"
    .parameter "ifContainRootDir"

    .prologue
    const/4 v8, 0x1

    const/4 v11, -0x1

    const/4 v7, 0x0

    .line 398
    const/4 v6, 0x1

    .line 400
    .local v6, result:Z
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v7

    .line 403
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 404
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 407
    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    .local v2, dstFile:Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_4

    .line 410
    if-nez p2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    .line 412
    goto :goto_0

    .line 414
    :cond_3
    invoke-static {p0, v2}, Lcom/yulong/android/uitechno/service/UitechnoService;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    move v7, v6

    .line 415
    goto :goto_0

    .line 419
    :cond_4
    if-eqz p3, :cond_6

    .line 421
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_5

    .line 422
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v6

    .line 423
    if-eqz v6, :cond_0

    .line 426
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1ed

    invoke-static {v9, v10, v11, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 433
    :cond_5
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 434
    .local v3, fileArray:[Ljava/io/File;
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_7

    aget-object v1, v0, v4

    .line 435
    .local v1, childFile:Ljava/io/File;
    invoke-static {v1, v2, p2, v8}, Lcom/yulong/android/uitechno/service/UitechnoService;->copyFile2Dir(Ljava/io/File;Ljava/io/File;ZZ)Z

    move-result v6

    .line 436
    if-eqz v6, :cond_0

    .line 434
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 430
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #childFile:Ljava/io/File;
    .end local v3           #fileArray:[Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_6
    move-object v2, p1

    goto :goto_1

    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v3       #fileArray:[Ljava/io/File;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_7
    move v7, v6

    .line 440
    goto :goto_0
.end method

.method private static deleteFile(ILandroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"

    .prologue
    .line 226
    const-string v2, "uitechnoService"

    const-string v3, "UitechnoService.deleteFile() start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, file:Ljava/lang/String;
    const-string v2, "uitechnoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/yulong/android/uitechno/service/UitechnoService;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v1           #file:Ljava/lang/String;
    :goto_0
    const-string v2, "uitechnoService"

    const-string v3, "UitechnoService.deleteFile() end"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "uitechnoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " itechnoService.deleteFile() error == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 7
    .parameter "file"

    .prologue
    .line 376
    const-string v5, "uitechnoService"

    const-string v6, "UitechnoService.unZipFile(1) start"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 378
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 386
    :goto_0
    const-string v5, "uitechnoService"

    const-string v6, "UitechnoService.unZipFile(1) end"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void

    .line 380
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 381
    .local v4, subFiles:[Ljava/io/File;
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 382
    .local v3, subFile:Ljava/io/File;
    invoke-static {v3}, Lcom/yulong/android/uitechno/service/UitechnoService;->deleteFile(Ljava/io/File;)V

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 384
    .end local v3           #subFile:Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private static getParcelFileDescriptor(ILandroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 7
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"

    .prologue
    .line 198
    const-string v4, "uitechnoService"

    const-string v5, "UitechnoService.getParcelFileDescriptor() start"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, path:Ljava/lang/String;
    const-string v4, "uitechnoService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 215
    .end local v2           #file:Ljava/io/File;
    .end local v3           #path:Ljava/lang/String;
    :goto_0
    return-void

    .line 206
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #path:Ljava/lang/String;
    :cond_0
    const/high16 v4, 0x3800

    invoke-static {v2, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 207
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 208
    const-string v4, "uitechnoService"

    const-string v5, "ParcelFileDescriptor != null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v4, 0x1

    invoke-virtual {p2, v1, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #path:Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v4, "uitechnoService"

    const-string v5, "UitechnoService.getParcelFileDescriptor() end"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "uitechnoService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " itechnoService.getParcelFileDescriptor() error == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static unzipFile(ILandroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 7
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"

    .prologue
    .line 247
    const-string v4, "uitechnoService"

    const-string v5, "UitechnoService.unZipFile() start"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, zip:Ljava/lang/String;
    const-string v4, "uitechnoService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "zip == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, dstPath:Ljava/lang/String;
    const-string v4, "uitechnoService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dstPath == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/yulong/android/uitechno/service/UitechnoService;->unzipFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    .line 254
    .local v2, result:Z
    if-eqz v2, :cond_0

    .line 255
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v0           #dstPath:Ljava/lang/String;
    .end local v2           #result:Z
    .end local v3           #zip:Ljava/lang/String;
    :goto_0
    const-string v4, "uitechnoService"

    const-string v5, "UitechnoService.unZipFile() end"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void

    .line 257
    .restart local v0       #dstPath:Ljava/lang/String;
    .restart local v2       #result:Z
    .restart local v3       #zip:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 259
    .end local v0           #dstPath:Ljava/lang/String;
    .end local v2           #result:Z
    .end local v3           #zip:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 261
    .local v1, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 264
    :goto_1
    const-string v4, "uitechnoService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " itechnoService.unZipFile() error == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static unzipFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 16
    .parameter "zip"
    .parameter "dstPath"

    .prologue
    .line 304
    const-string v12, "uitechnoService"

    const-string v13, "UitechnoService.unZipFile(2) start"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v12, "uitechnoService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "zip == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v12, "uitechnoService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "dstPath == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v10, 0x0

    .line 308
    .local v10, zipFile:Ljava/util/zip/ZipFile;
    const/4 v5, 0x0

    .line 309
    .local v5, is:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 311
    .local v6, os:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 312
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->mkdirs()Z

    .line 314
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x1ed

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v12, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 315
    new-instance v11, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    .line 316
    .end local v10           #zipFile:Ljava/util/zip/ZipFile;
    .local v11, zipFile:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v8

    .line 317
    .local v8, zipEntries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    const/4 v9, 0x0

    .line 318
    .local v9, zipEntry:Ljava/util/zip/ZipEntry;
    const/16 v12, 0x5000

    new-array v1, v12, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .local v1, buffer:[B
    move-object v7, v6

    .line 319
    .end local v6           #os:Ljava/io/OutputStream;
    .local v7, os:Ljava/lang/Object;
    :goto_0
    :try_start_2
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 320
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    .end local v9           #zipEntry:Ljava/util/zip/ZipEntry;
    check-cast v9, Ljava/util/zip/ZipEntry;

    .line 321
    .restart local v9       #zipEntry:Ljava/util/zip/ZipEntry;
    new-instance v4, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    .local v4, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 323
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 324
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x1ed

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v12, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 343
    .end local v4           #file:Ljava/io/File;
    .end local v9           #zipEntry:Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v3

    move-object v6, v7

    .restart local v6       #os:Ljava/io/OutputStream;
    move-object v10, v11

    .line 344
    .end local v1           #buffer:[B
    .end local v7           #os:Ljava/lang/Object;
    .end local v8           #zipEntries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v11           #zipFile:Ljava/util/zip/ZipFile;
    .local v3, e:Ljava/lang/Exception;
    .restart local v10       #zipFile:Ljava/util/zip/ZipFile;
    :goto_1
    :try_start_3
    const-string v12, "uitechnoService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " itechnoService.unZipFile(2) error == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    const/4 v12, 0x0

    .line 347
    if-eqz v5, :cond_1

    .line 349
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 353
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 355
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 359
    :cond_2
    :goto_3
    if-eqz v10, :cond_3

    .line 361
    :try_start_6
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 367
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    :goto_4
    return v12

    .line 327
    .end local v6           #os:Ljava/io/OutputStream;
    .end local v10           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #buffer:[B
    .restart local v4       #file:Ljava/io/File;
    .restart local v7       #os:Ljava/lang/Object;
    .restart local v8       #zipEntries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v9       #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v11       #zipFile:Ljava/util/zip/ZipFile;
    :cond_4
    :try_start_7
    invoke-virtual {v11, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 328
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 329
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x1ed

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v12, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 330
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 332
    .end local v7           #os:Ljava/lang/Object;
    .restart local v6       #os:Ljava/io/OutputStream;
    :goto_5
    :try_start_8
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 333
    .local v2, count:I
    if-gtz v2, :cond_5

    .line 338
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 339
    const/4 v5, 0x0

    .line 340
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 341
    const/4 v6, 0x0

    move-object v7, v6

    .line 342
    .restart local v7       #os:Ljava/lang/Object;
    goto/16 :goto_0

    .line 336
    .end local v7           #os:Ljava/lang/Object;
    :cond_5
    const/4 v12, 0x0

    invoke-virtual {v6, v1, v12, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_5

    .line 343
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v4           #file:Ljava/io/File;
    .end local v8           #zipEntries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v9           #zipEntry:Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v3

    move-object v10, v11

    .end local v11           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v10       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 347
    :catchall_0
    move-exception v12

    :goto_6
    if-eqz v5, :cond_6

    .line 349
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 353
    :cond_6
    :goto_7
    if-eqz v6, :cond_7

    .line 355
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 359
    :cond_7
    :goto_8
    if-eqz v10, :cond_8

    .line 361
    :try_start_b
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 347
    :cond_8
    :goto_9
    throw v12

    .end local v6           #os:Ljava/io/OutputStream;
    .end local v10           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #buffer:[B
    .restart local v7       #os:Ljava/lang/Object;
    .restart local v8       #zipEntries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v9       #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v11       #zipFile:Ljava/util/zip/ZipFile;
    :cond_9
    if-eqz v5, :cond_a

    .line 349
    :try_start_c
    throw v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 353
    :cond_a
    :goto_a
    if-eqz v7, :cond_b

    .line 355
    :try_start_d
    throw v7
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 359
    :cond_b
    :goto_b
    if-eqz v11, :cond_c

    .line 361
    :try_start_e
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 366
    :cond_c
    :goto_c
    const-string v12, "uitechnoService"

    const-string v13, "UitechnoService.unZipFile(2) end"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v12, 0x1

    move-object v6, v7

    .restart local v6       #os:Ljava/io/OutputStream;
    move-object v10, v11

    .end local v11           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v10       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 350
    .end local v1           #buffer:[B
    .end local v7           #os:Ljava/lang/Object;
    .end local v8           #zipEntries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v9           #zipEntry:Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v13

    goto :goto_7

    .line 356
    :catch_3
    move-exception v13

    goto :goto_8

    .line 362
    :catch_4
    move-exception v13

    goto :goto_9

    .line 350
    .restart local v3       #e:Ljava/lang/Exception;
    :catch_5
    move-exception v13

    goto :goto_2

    .line 356
    :catch_6
    move-exception v13

    goto :goto_3

    .line 362
    :catch_7
    move-exception v13

    goto :goto_4

    .line 350
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #os:Ljava/io/OutputStream;
    .end local v10           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #buffer:[B
    .restart local v7       #os:Ljava/lang/Object;
    .restart local v8       #zipEntries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v9       #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v11       #zipFile:Ljava/util/zip/ZipFile;
    :catch_8
    move-exception v12

    goto :goto_a

    .line 356
    :catch_9
    move-exception v12

    goto :goto_b

    .line 362
    :catch_a
    move-exception v12

    goto :goto_c

    .line 347
    .end local v1           #buffer:[B
    .end local v7           #os:Ljava/lang/Object;
    .end local v8           #zipEntries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v9           #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v6       #os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v12

    move-object v10, v11

    .end local v11           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v10       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_6

    .end local v6           #os:Ljava/io/OutputStream;
    .end local v10           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #buffer:[B
    .restart local v7       #os:Ljava/lang/Object;
    .restart local v8       #zipEntries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v11       #zipFile:Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v12

    move-object v6, v7

    .restart local v6       #os:Ljava/io/OutputStream;
    move-object v10, v11

    .end local v11           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v10       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_6

    .line 343
    .end local v1           #buffer:[B
    .end local v7           #os:Ljava/lang/Object;
    .end local v8           #zipEntries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :catch_b
    move-exception v3

    goto/16 :goto_1
.end method


# virtual methods
.method protected declared-synchronized onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 133
    monitor-enter p0

    :try_start_0
    const-string v4, "uitechnoService"

    const-string v5, "UitechnoService.onTransact() start"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v4, "uitechnoService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "code == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    sparse-switch p1, :sswitch_data_0

    .line 156
    :try_start_1
    iget-object v4, p0, Lcom/yulong/android/uitechno/service/UitechnoService;->mServiceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yulong/android/uitechno/service/BService;

    .line 157
    .local v2, service:Lcom/yulong/android/uitechno/service/BService;
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/yulong/android/uitechno/service/BService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #service:Lcom/yulong/android/uitechno/service/BService;
    :goto_0
    monitor-exit p0

    return v3

    .line 138
    :sswitch_0
    :try_start_2
    const-string v4, "com.yulong.android.uitechno.service.UitechnoService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "uitechnoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTransact() error == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    goto :goto_0

    .line 141
    :sswitch_1
    :try_start_4
    invoke-static {p1, p2, p3, p4}, Lcom/yulong/android/uitechno/service/UitechnoService;->SystemProperties_set(ILandroid/os/Parcel;Landroid/os/Parcel;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 144
    :sswitch_2
    :try_start_5
    invoke-static {p1, p2, p3, p4}, Lcom/yulong/android/uitechno/service/UitechnoService;->getParcelFileDescriptor(ILandroid/os/Parcel;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 147
    :sswitch_3
    invoke-static {p1, p2, p3, p4}, Lcom/yulong/android/uitechno/service/UitechnoService;->deleteFile(ILandroid/os/Parcel;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 150
    :sswitch_4
    invoke-static {p1, p2, p3, p4}, Lcom/yulong/android/uitechno/service/UitechnoService;->unzipFile(ILandroid/os/Parcel;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 153
    :sswitch_5
    invoke-static {p1, p2, p3, p4}, Lcom/yulong/android/uitechno/service/UitechnoService;->copyFile2Dir(ILandroid/os/Parcel;Landroid/os/Parcel;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 136
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.method public systemReady()V
    .locals 4

    .prologue
    .line 122
    const-string v2, "uitechnoService"

    const-string v3, "UitechnoService.systemReady() start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v2, p0, Lcom/yulong/android/uitechno/service/UitechnoService;->mServiceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/uitechno/service/BService;

    .line 124
    .local v1, service:Lcom/yulong/android/uitechno/service/BService;
    invoke-virtual {v1}, Lcom/yulong/android/uitechno/service/BService;->systemReady()V

    goto :goto_0

    .line 126
    .end local v1           #service:Lcom/yulong/android/uitechno/service/BService;
    :cond_0
    const-string v2, "uitechnoService"

    const-string v3, "UitechnoService.systemReady() end"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method
