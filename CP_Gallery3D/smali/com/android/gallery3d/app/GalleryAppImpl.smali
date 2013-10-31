.class public Lcom/android/gallery3d/app/GalleryAppImpl;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/app/cl;


# static fields
.field private static final Ff:Ljava/lang/String; = "download"

.field private static final Fg:J = 0x4000000L

.field private static Fi:Lcom/android/gallery3d/app/KillReceiver; = null

.field private static Fj:Lcom/android/gallery3d/app/GalleryAppImpl; = null

.field private static final TAG:Ljava/lang/String; = "GalleryAppImpl"


# instance fields
.field private Fh:Lcom/android/gallery3d/a/af;

.field private Z:Lcom/android/gallery3d/b/n;

.field private ih:Lcom/android/gallery3d/a/ao;

.field private vg:Lcom/android/gallery3d/a/as;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/app/GalleryAppImpl;->Fi:Lcom/android/gallery3d/app/KillReceiver;

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/android/gallery3d/app/GalleryAppImpl;->Fj:Lcom/android/gallery3d/app/GalleryAppImpl;

    sget-object v1, Lcom/android/gallery3d/app/GalleryAppImpl;->Fi:Lcom/android/gallery3d/app/KillReceiver;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryAppImpl;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/app/GalleryAppImpl;->Fi:Lcom/android/gallery3d/app/KillReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized dt()Lcom/android/gallery3d/a/af;
    .locals 2

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->Fh:Lcom/android/gallery3d/a/af;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/android/gallery3d/a/af;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/GalleryAppImpl;->dv()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/a/af;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->Fh:Lcom/android/gallery3d/a/af;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->Fh:Lcom/android/gallery3d/a/af;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized du()Lcom/android/gallery3d/a/ao;
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->ih:Lcom/android/gallery3d/a/ao;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/android/gallery3d/a/ao;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/a/ao;-><init>(Lcom/android/gallery3d/app/cl;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->ih:Lcom/android/gallery3d/a/ao;

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->ih:Lcom/android/gallery3d/a/ao;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ao;->dh()V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->ih:Lcom/android/gallery3d/a/ao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dv()Landroid/content/Context;
    .locals 0

    .prologue
    .line 60
    return-object p0
.end method

.method public declared-synchronized dw()Lcom/android/gallery3d/b/n;
    .locals 1

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->Z:Lcom/android/gallery3d/b/n;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/android/gallery3d/b/n;

    invoke-direct {v0}, Lcom/android/gallery3d/b/n;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->Z:Lcom/android/gallery3d/b/n;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->Z:Lcom/android/gallery3d/b/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized er()Lcom/android/gallery3d/a/as;
    .locals 4

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->vg:Lcom/android/gallery3d/a/as;

    if-nez v0, :cond_2

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->eb()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 93
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to create: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 97
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/gallery3d/a/as;

    const-wide/32 v2, 0x4000000

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/gallery3d/a/as;-><init>(Lcom/android/gallery3d/app/cl;Ljava/io/File;J)V

    iput-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->vg:Lcom/android/gallery3d/a/as;

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->vg:Lcom/android/gallery3d/a/as;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 49
    invoke-static {p0}, Lcom/android/gallery3d/b/y;->e(Landroid/content/Context;)V

    .line 50
    invoke-static {p0}, Lcom/android/gallery3d/gadget/j;->e(Landroid/content/Context;)V

    .line 51
    invoke-static {p0}, Lcom/android/gallery3d/c/b;->e(Landroid/content/Context;)V

    .line 52
    new-instance v0, Lcom/android/gallery3d/app/KillReceiver;

    invoke-direct {v0}, Lcom/android/gallery3d/app/KillReceiver;-><init>()V

    sput-object v0, Lcom/android/gallery3d/app/GalleryAppImpl;->Fi:Lcom/android/gallery3d/app/KillReceiver;

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    const-string v1, "android.intent.action.THEME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    sget-object v1, Lcom/android/gallery3d/app/GalleryAppImpl;->Fi:Lcom/android/gallery3d/app/KillReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    sput-object p0, Lcom/android/gallery3d/app/GalleryAppImpl;->Fj:Lcom/android/gallery3d/app/GalleryAppImpl;

    .line 57
    return-void
.end method
