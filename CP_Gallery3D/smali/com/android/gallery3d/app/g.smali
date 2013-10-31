.class Lcom/android/gallery3d/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/u;


# instance fields
.field private final bN:Ljava/lang/String;

.field final synthetic bO:Lcom/android/gallery3d/app/CameraPhotoService;

.field private n:Lcom/android/gallery3d/b/l;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/CameraPhotoService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/gallery3d/app/g;->bO:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/android/gallery3d/app/g;->bN:Ljava/lang/String;

    .line 142
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/b/l;)V
    .locals 4
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/gallery3d/app/g;->n:Lcom/android/gallery3d/b/l;

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/app/g;->bO:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-static {v0}, Lcom/android/gallery3d/app/CameraPhotoService;->a(Lcom/android/gallery3d/app/CameraPhotoService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/g;->bN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/app/g;->bO:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-static {v0}, Lcom/android/gallery3d/app/CameraPhotoService;->a(Lcom/android/gallery3d/app/CameraPhotoService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/g;->bN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/g;->bO:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-static {v0}, Lcom/android/gallery3d/app/CameraPhotoService;->a(Lcom/android/gallery3d/app/CameraPhotoService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/g;->bN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/b/l;

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/app/g;->bO:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-static {v0}, Lcom/android/gallery3d/app/CameraPhotoService;->a(Lcom/android/gallery3d/app/CameraPhotoService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/g;->bN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const-string v1, "CameraPhotoService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :catch_1
    move-exception v0

    .line 155
    const-string v1, "CameraPhotoService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
