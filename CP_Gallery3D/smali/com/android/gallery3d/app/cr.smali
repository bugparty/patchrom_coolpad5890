.class Lcom/android/gallery3d/app/cr;
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
    .line 654
    iput-object p1, p0, Lcom/android/gallery3d/app/cr;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/b/l;)V
    .locals 4
    .parameter

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/gallery3d/app/cr;->oy:Lcom/android/gallery3d/app/CropImage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/b/l;)Lcom/android/gallery3d/b/l;

    .line 657
    invoke-interface {p1}, Lcom/android/gallery3d/b/l;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    :goto_0
    return-void

    .line 658
    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/b/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 659
    if-eqz v0, :cond_1

    .line 660
    iget-object v1, p0, Lcom/android/gallery3d/app/cr;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v1}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/cr;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v2}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/cr;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v0}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
