.class Lcom/android/gallery3d/a/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/ab;


# instance fields
.field final synthetic Gs:Lcom/android/gallery3d/a/bm;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/bm;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/gallery3d/a/cm;->Gs:Lcom/android/gallery3d/a/bm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/b/j;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/android/gallery3d/a/cm;->Gs:Lcom/android/gallery3d/a/bm;

    invoke-static {v1}, Lcom/android/gallery3d/a/bm;->c(Lcom/android/gallery3d/a/bm;)Lcom/android/gallery3d/a/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/a/ap;->dm()Lcom/android/gallery3d/a/bs;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/a/cm;->Gs:Lcom/android/gallery3d/a/bm;

    invoke-static {v2}, Lcom/android/gallery3d/a/bm;->a(Lcom/android/gallery3d/a/bm;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/a/cm;->Gs:Lcom/android/gallery3d/a/bm;

    invoke-static {v3}, Lcom/android/gallery3d/a/bm;->b(Lcom/android/gallery3d/a/bm;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/a/bs;->h(Ljava/lang/String;I)[B

    move-result-object v1

    .line 83
    if-nez v1, :cond_0

    .line 84
    const-string v1, "MtpImage"

    const-string v2, "decoding thumbnail failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, v1, v0}, Lcom/android/gallery3d/a/cy;->a(Lcom/android/gallery3d/b/j;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/cm;->a(Lcom/android/gallery3d/b/j;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
