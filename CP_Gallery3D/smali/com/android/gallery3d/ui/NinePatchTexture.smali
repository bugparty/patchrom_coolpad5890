.class public Lcom/android/gallery3d/ui/NinePatchTexture;
.super Lcom/android/gallery3d/ui/bm;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NinePatchTexture"


# instance fields
.field private ll:Lcom/android/gallery3d/ui/aa;

.field private lm:Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/bm;-><init>(Landroid/content/Context;I)V

    .line 42
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->lm:Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;

    .line 47
    return-void
.end method

.method private c(Lcom/android/gallery3d/ui/b;II)Lcom/android/gallery3d/ui/a;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    int-to-long v0, p2

    .line 106
    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p3

    or-long/2addr v2, v0

    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->lm:Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/a;

    .line 109
    if-nez v0, :cond_1

    .line 110
    new-instance v1, Lcom/android/gallery3d/ui/a;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/gallery3d/ui/a;-><init>(Lcom/android/gallery3d/ui/NinePatchTexture;II)V

    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->lm:Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->lm:Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;->gl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/a;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/a;->b(Lcom/android/gallery3d/ui/b;)V

    :cond_0
    move-object v0, v1

    .line 118
    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/b;IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/NinePatchTexture;->h(Lcom/android/gallery3d/ui/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->lm:Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;->clear()V

    .line 127
    :cond_0
    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 128
    invoke-direct {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/NinePatchTexture;->c(Lcom/android/gallery3d/ui/b;II)Lcom/android/gallery3d/ui/a;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/android/gallery3d/ui/a;->a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/NinePatchTexture;II)V

    .line 130
    :cond_1
    return-void
.end method

.method protected cp()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/an;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/an;->mBitmap:Landroid/graphics/Bitmap;

    .line 66
    :goto_0
    return-object v0

    .line 53
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 54
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 55
    iget-object v1, p0, Lcom/android/gallery3d/ui/bm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/ui/bm;->ss:I

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 57
    iput-object v1, p0, Lcom/android/gallery3d/ui/an;->mBitmap:Landroid/graphics/Bitmap;

    .line 58
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/gallery3d/ui/NinePatchTexture;->setSize(II)V

    .line 59
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 60
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->ll:Lcom/android/gallery3d/ui/aa;

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->ll:Lcom/android/gallery3d/ui/aa;

    if-nez v0, :cond_2

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid nine-patch image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/ui/bm;->ss:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/ui/aa;->a([B)Lcom/android/gallery3d/ui/aa;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 66
    goto :goto_0
.end method

.method public cq()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->ll:Lcom/android/gallery3d/ui/aa;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/NinePatchTexture;->cp()Landroid/graphics/Bitmap;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->ll:Lcom/android/gallery3d/ui/aa;

    iget-object v0, v0, Lcom/android/gallery3d/ui/aa;->hU:Landroid/graphics/Rect;

    return-object v0
.end method

.method public cr()Lcom/android/gallery3d/ui/aa;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->ll:Lcom/android/gallery3d/ui/aa;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/NinePatchTexture;->cp()Landroid/graphics/Bitmap;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->ll:Lcom/android/gallery3d/ui/aa;

    return-object v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/gallery3d/ui/bm;->recycle()V

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/ui/ah;->jZ:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    .line 136
    :goto_0
    if-nez v1, :cond_1

    .line 141
    :goto_1
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ah;->jZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/b;

    move-object v1, v0

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->lm:Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/a;

    .line 138
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/a;->b(Lcom/android/gallery3d/ui/b;)V

    goto :goto_2

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->lm:Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;->clear()V

    goto :goto_1
.end method
