.class public Lcom/android/gallery3d/ui/bm;
.super Lcom/android/gallery3d/ui/an;
.source "SourceFile"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final ss:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/gallery3d/ui/an;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/gallery3d/ui/bm;->mContext:Landroid/content/Context;

    .line 34
    iput p2, p0, Lcom/android/gallery3d/ui/bm;->ss:I

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/bm;->setOpaque(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/android/gallery3d/ui/b;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/an;->a(Lcom/android/gallery3d/ui/b;IIII)V

    return-void
.end method

.method public bridge synthetic b(Lcom/android/gallery3d/ui/b;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/an;->b(Lcom/android/gallery3d/ui/b;II)V

    return-void
.end method

.method public bridge synthetic cb()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/an;->cb()I

    move-result v0

    return v0
.end method

.method public bridge synthetic cc()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/an;->cc()I

    move-result v0

    return v0
.end method

.method public bridge synthetic cd()Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/an;->cd()Z

    move-result v0

    return v0
.end method

.method protected cp()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 41
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 42
    iget-object v1, p0, Lcom/android/gallery3d/ui/bm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/ui/bm;->ss:I

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/an;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/an;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/an;->getWidth()I

    move-result v0

    return v0
.end method

.method protected h(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-static {}, Lcom/android/gallery3d/ui/bm;->cf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    :cond_0
    return-void
.end method

.method public bridge synthetic h(Lcom/android/gallery3d/ui/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/an;->h(Lcom/android/gallery3d/ui/b;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic i(Lcom/android/gallery3d/ui/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/an;->i(Lcom/android/gallery3d/ui/b;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpaque()Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/an;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic j(Lcom/android/gallery3d/ui/b;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/an;->j(Lcom/android/gallery3d/ui/b;)V

    return-void
.end method

.method public bridge synthetic recycle()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/an;->recycle()V

    return-void
.end method

.method public bridge synthetic setOpaque(Z)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/an;->setOpaque(Z)V

    return-void
.end method

.method public bridge synthetic yield()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/an;->yield()V

    return-void
.end method
