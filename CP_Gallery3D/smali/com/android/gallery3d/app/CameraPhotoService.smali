.class public Lcom/android/gallery3d/app/CameraPhotoService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraPhotoService"


# instance fields
.field private volatile GC:Landroid/os/Looper;

.field private volatile GD:Lcom/android/gallery3d/app/eh;

.field private qI:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/CameraPhotoService;->qI:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/CameraPhotoService;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/app/CameraPhotoService;->qI:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public du()Lcom/android/gallery3d/a/ao;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CameraPhotoService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    return-object v0
.end method

.method public dw()Lcom/android/gallery3d/b/n;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CameraPhotoService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->dw()Lcom/android/gallery3d/b/n;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "CameraPhotoService"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CameraPhotoService;->GD:Lcom/android/gallery3d/app/eh;

    if-nez v0, :cond_0

    .line 66
    monitor-enter p0

    .line 68
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 74
    :cond_0
    if-nez p1, :cond_1

    .line 75
    const-string v0, "CameraPhotoService"

    const-string v1, "Intent is null in onStartCommand: "

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :goto_2
    return v3

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/CameraPhotoService;->GD:Lcom/android/gallery3d/app/eh;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/eh;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 81
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 82
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Lcom/android/gallery3d/app/CameraPhotoService;->GD:Lcom/android/gallery3d/app/eh;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/eh;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_2

    .line 69
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public run()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 177
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 179
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/CameraPhotoService;->GC:Landroid/os/Looper;

    .line 180
    new-instance v0, Lcom/android/gallery3d/app/eh;

    invoke-direct {v0, p0, p0}, Lcom/android/gallery3d/app/eh;-><init>(Lcom/android/gallery3d/app/CameraPhotoService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/CameraPhotoService;->GD:Lcom/android/gallery3d/app/eh;

    .line 182
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 183
    return-void
.end method
