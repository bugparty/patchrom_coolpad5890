.class Lcom/android/gallery3d/app/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/u;


# instance fields
.field final synthetic oy:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/android/gallery3d/app/cq;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/b/l;)V
    .locals 4
    .parameter

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/gallery3d/app/cq;->oy:Lcom/android/gallery3d/app/CropImage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/CropImage;->b(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/b/l;)Lcom/android/gallery3d/b/l;

    .line 942
    invoke-interface {p1}, Lcom/android/gallery3d/b/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    .line 943
    invoke-interface {p1}, Lcom/android/gallery3d/b/l;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 944
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/cq;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v1}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/cq;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v2}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
