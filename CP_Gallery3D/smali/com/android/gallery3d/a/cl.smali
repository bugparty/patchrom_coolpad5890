.class Lcom/android/gallery3d/a/cl;
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
    .line 94
    iput-object p1, p0, Lcom/android/gallery3d/a/cl;->Gs:Lcom/android/gallery3d/a/bm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/cl;->h(Lcom/android/gallery3d/b/j;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/android/gallery3d/b/j;)Landroid/graphics/BitmapRegionDecoder;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/a/cl;->Gs:Lcom/android/gallery3d/a/bm;

    invoke-static {v0}, Lcom/android/gallery3d/a/bm;->c(Lcom/android/gallery3d/a/bm;)Lcom/android/gallery3d/a/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ap;->dm()Lcom/android/gallery3d/a/bs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/a/cl;->Gs:Lcom/android/gallery3d/a/bm;

    invoke-static {v1}, Lcom/android/gallery3d/a/bm;->a(Lcom/android/gallery3d/a/bm;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/a/cl;->Gs:Lcom/android/gallery3d/a/bm;

    invoke-static {v2}, Lcom/android/gallery3d/a/bm;->b(Lcom/android/gallery3d/a/bm;)I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/a/cl;->Gs:Lcom/android/gallery3d/a/bm;

    invoke-static {v3}, Lcom/android/gallery3d/a/bm;->d(Lcom/android/gallery3d/a/bm;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/a/bs;->b(Ljava/lang/String;II)[B

    move-result-object v0

    .line 98
    array-length v1, v0

    invoke-static {p1, v0, v4, v1, v4}, Lcom/android/gallery3d/a/cy;->a(Lcom/android/gallery3d/b/j;[BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
