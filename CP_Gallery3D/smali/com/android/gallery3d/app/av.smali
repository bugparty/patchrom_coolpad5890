.class Lcom/android/gallery3d/app/av;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic nR:Lcom/android/gallery3d/app/GifView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/GifView;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/app/av;->nR:Lcom/android/gallery3d/app/GifView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 94
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/av;->nR:Lcom/android/gallery3d/app/GifView;

    invoke-static {v0}, Lcom/android/gallery3d/app/GifView;->a(Lcom/android/gallery3d/app/GifView;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/app/av;->nR:Lcom/android/gallery3d/app/GifView;

    invoke-static {v0}, Lcom/android/gallery3d/app/GifView;->b(Lcom/android/gallery3d/app/GifView;)[I

    move-result-object v0

    aput v3, v0, v3

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/app/av;->nR:Lcom/android/gallery3d/app/GifView;

    iget-object v1, p0, Lcom/android/gallery3d/app/av;->nR:Lcom/android/gallery3d/app/GifView;

    invoke-static {v1}, Lcom/android/gallery3d/app/GifView;->c(Lcom/android/gallery3d/app/GifView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/app/av;->nR:Lcom/android/gallery3d/app/GifView;

    invoke-static {v2}, Lcom/android/gallery3d/app/GifView;->b(Lcom/android/gallery3d/app/GifView;)[I

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yulong/android/service/gifplayer/GifPlayerJNI;->gifplayerGetOneFrame(I[I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/app/GifView;->mBitmap:Landroid/graphics/Bitmap;

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/app/av;->nR:Lcom/android/gallery3d/app/GifView;

    invoke-static {v0}, Lcom/android/gallery3d/app/GifView;->d(Lcom/android/gallery3d/app/GifView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/av;->nR:Lcom/android/gallery3d/app/GifView;

    iget-object v1, v1, Lcom/android/gallery3d/app/GifView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/app/av;->nR:Lcom/android/gallery3d/app/GifView;

    invoke-static {v0}, Lcom/android/gallery3d/app/GifView;->e(Lcom/android/gallery3d/app/GifView;)I

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/app/av;->nR:Lcom/android/gallery3d/app/GifView;

    invoke-static {v0}, Lcom/android/gallery3d/app/GifView;->c(Lcom/android/gallery3d/app/GifView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/app/av;->nR:Lcom/android/gallery3d/app/GifView;

    invoke-static {v1}, Lcom/android/gallery3d/app/GifView;->f(Lcom/android/gallery3d/app/GifView;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/av;->nR:Lcom/android/gallery3d/app/GifView;

    iget-object v1, p0, Lcom/android/gallery3d/app/av;->nR:Lcom/android/gallery3d/app/GifView;

    invoke-static {v1}, Lcom/android/gallery3d/app/GifView;->b(Lcom/android/gallery3d/app/GifView;)[I

    move-result-object v1

    aget v1, v1, v3

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GifView;->D(I)I

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/av;->nR:Lcom/android/gallery3d/app/GifView;

    invoke-static {v0, v3}, Lcom/android/gallery3d/app/GifView;->a(Lcom/android/gallery3d/app/GifView;I)I

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/app/av;->nR:Lcom/android/gallery3d/app/GifView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GifView;->D(I)I

    goto :goto_0

    .line 87
    :cond_1
    const-string v0, "APP_Gallery_GifView"

    const-string v1, "GIF FINish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
