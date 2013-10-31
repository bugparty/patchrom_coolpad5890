.class public final Lcom/android/server/ylSystemServer;
.super Ljava/lang/Object;
.source "ylSystemServer.java"


# static fields
.field public static final CACHE_RESTORE_DIR:Ljava/lang/String; = "/cache/restore"

.field private static final TAG:Ljava/lang/String; = "ylSystemServer"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static isSystemRestoreMode()Z
    .locals 3

    .prologue
    .line 120
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/restore"

    const-string v2, "restoreapkdata"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v0, restoreFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v1, 0x1

    .line 125
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restoreSystemApk()V
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/android/server/ylSystemServer;->isSystemRestoreMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "ylSystemServer"

    const-string v1, "begin to Restart sh service !!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v0, "ctl.start"

    const-string v1, "restore_finish:1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method public static restoreSystemUserData(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 131
    invoke-static {}, Lcom/android/server/ylSystemServer;->isSystemRestoreMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    const-string v4, "yulong.restore.installdata"

    const-string v5, "installcomplete"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v4, "ylSystemServer"

    const-string v5, "apk restore complete ! begin to restore data/data/ "

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v4, "yulong.restore.total"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 138
    .local v3, totalNum:I
    const-string v4, "yulong.restore.installnum"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 139
    .local v0, curNum:I
    move v2, v0

    .line 140
    .local v2, tmpNum:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 143
    if-eq v2, v0, :cond_0

    .line 144
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10403e4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 149
    :cond_0
    move v2, v0

    .line 150
    const-string v4, "yulong.restore.installnum"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 155
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v4, "/cache/restore"

    const-string v5, "restoreapkdata"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .local v1, restoreFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 161
    .end local v0           #curNum:I
    .end local v1           #restoreFile:Ljava/io/File;
    .end local v2           #tmpNum:I
    .end local v3           #totalNum:I
    :cond_2
    return-void

    .line 151
    .restart local v0       #curNum:I
    .restart local v2       #tmpNum:I
    .restart local v3       #totalNum:I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static startAidPack(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 74
    return-void
.end method

.method public static waitForRestoreApkFinished()V
    .locals 6

    .prologue
    .line 81
    invoke-static {}, Lcom/android/server/ylSystemServer;->isSystemRestoreMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    const-string v1, "apksuccess"

    .line 83
    .local v1, expectValue:Ljava/lang/String;
    const-string v2, "yulong.restore.installdata"

    .line 84
    .local v2, systemProName:Ljava/lang/String;
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, tmpdata:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    const-string v3, ""

    .line 90
    const-wide/16 v4, 0xc8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 104
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
