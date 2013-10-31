.class final Lcom/android/gallery3d/app/eh;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic bO:Lcom/android/gallery3d/app/CameraPhotoService;

.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/CameraPhotoService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/gallery3d/app/eh;->bO:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/android/gallery3d/app/eh;->mContext:Landroid/content/Context;

    .line 108
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    .line 112
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 113
    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string v1, "camerUri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    const-string v2, "camerPath"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/eh;->bO:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/CameraPhotoService;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/a/ao;->e(Landroid/net/Uri;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    .line 123
    iget-object v2, p0, Lcom/android/gallery3d/app/eh;->bO:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/CameraPhotoService;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/a/ao;->m(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/dd;

    .line 124
    iget-object v2, p0, Lcom/android/gallery3d/app/eh;->bO:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/CameraPhotoService;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    .line 125
    iget-object v2, p0, Lcom/android/gallery3d/app/eh;->bO:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-static {v2}, Lcom/android/gallery3d/app/CameraPhotoService;->a(Lcom/android/gallery3d/app/CameraPhotoService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/android/gallery3d/app/eh;->bO:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/CameraPhotoService;->dw()Lcom/android/gallery3d/b/n;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/a/ax;->r(I)Lcom/android/gallery3d/b/ab;

    move-result-object v0

    new-instance v5, Lcom/android/gallery3d/app/g;

    iget-object v6, p0, Lcom/android/gallery3d/app/eh;->bO:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-direct {v5, v6, v1}, Lcom/android/gallery3d/app/g;-><init>(Lcom/android/gallery3d/app/CameraPhotoService;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v5}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
