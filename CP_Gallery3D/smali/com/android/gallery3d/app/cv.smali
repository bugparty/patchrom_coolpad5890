.class Lcom/android/gallery3d/app/cv;
.super Lcom/android/gallery3d/ui/ag;
.source "SourceFile"


# instance fields
.field final synthetic oy:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/ui/eh;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/gallery3d/app/cv;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/ag;-><init>(Lcom/android/gallery3d/ui/eh;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 225
    :goto_0
    return-void

    .line 198
    :pswitch_0
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->le:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/AnimatedDialog;->dismiss()V

    .line 199
    iget-object v1, p0, Lcom/android/gallery3d/app/cv;->oy:Lcom/android/gallery3d/app/CropImage;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    invoke-static {v1, v0}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/BitmapRegionDecoder;)V

    goto :goto_0

    .line 204
    :pswitch_1
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->le:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/AnimatedDialog;->dismiss()V

    .line 205
    iget-object v1, p0, Lcom/android/gallery3d/app/cv;->oy:Lcom/android/gallery3d/app/CropImage;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 210
    :pswitch_2
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->le:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/AnimatedDialog;->dismiss()V

    .line 211
    iget-object v0, p0, Lcom/android/gallery3d/app/cv;->oy:Lcom/android/gallery3d/app/CropImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/CropImage;->setResult(I)V

    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/app/cv;->oy:Lcom/android/gallery3d/app/CropImage;

    iget-object v1, p0, Lcom/android/gallery3d/app/cv;->oy:Lcom/android/gallery3d/app/CropImage;

    const v2, 0x7f0d003d

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/app/cv;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    .line 219
    :pswitch_3
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->le:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/AnimatedDialog;->dismiss()V

    .line 220
    iget-object v1, p0, Lcom/android/gallery3d/app/cv;->oy:Lcom/android/gallery3d/app/CropImage;

    const/4 v2, -0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/app/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 221
    iget-object v0, p0, Lcom/android/gallery3d/app/cv;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
