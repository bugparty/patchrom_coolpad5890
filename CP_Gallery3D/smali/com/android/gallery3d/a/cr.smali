.class Lcom/android/gallery3d/a/cr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/ab;


# instance fields
.field private mType:I

.field final synthetic nI:Lcom/android/gallery3d/a/p;


# direct methods
.method protected constructor <init>(Lcom/android/gallery3d/a/p;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/gallery3d/a/cr;->nI:Lcom/android/gallery3d/a/p;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput p2, p0, Lcom/android/gallery3d/a/cr;->mType:I

    .line 221
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/b/j;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 224
    iget-object v1, p0, Lcom/android/gallery3d/a/cr;->nI:Lcom/android/gallery3d/a/p;

    invoke-static {v1, p1}, Lcom/android/gallery3d/a/p;->a(Lcom/android/gallery3d/a/p;Lcom/android/gallery3d/b/j;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-object v0

    .line 225
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/a/cr;->mType:I

    invoke-static {v1}, Lcom/android/gallery3d/a/av;->an(I)I

    move-result v1

    .line 226
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 227
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 228
    iget-object v3, p0, Lcom/android/gallery3d/a/cr;->nI:Lcom/android/gallery3d/a/p;

    invoke-static {v3}, Lcom/android/gallery3d/a/p;->b(Lcom/android/gallery3d/a/p;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {p1, v3, v2, v1}, Lcom/android/gallery3d/a/cy;->a(Lcom/android/gallery3d/b/j;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 230
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 234
    iget v0, p0, Lcom/android/gallery3d/a/cr;->mType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 235
    invoke-static {v2, v1, v4}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 238
    :cond_2
    invoke-static {v2, v1, v4}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/cr;->a(Lcom/android/gallery3d/b/j;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
