.class public Lcom/android/gallery3d/ui/df;
.super Lcom/android/gallery3d/ui/an;
.source "SourceFile"


# instance fields
.field protected Ab:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/df;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/an;-><init>(Z)V

    .line 37
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 38
    iput-object p1, p0, Lcom/android/gallery3d/ui/df;->Ab:Landroid/graphics/Bitmap;

    .line 39
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 28
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/an;->a(Lcom/android/gallery3d/ui/b;IIII)V

    return-void
.end method

.method public bridge synthetic b(Lcom/android/gallery3d/ui/b;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/an;->b(Lcom/android/gallery3d/ui/b;II)V

    return-void
.end method

.method public bridge synthetic cb()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/gallery3d/ui/an;->cb()I

    move-result v0

    return v0
.end method

.method public bridge synthetic cc()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/gallery3d/ui/an;->cc()I

    move-result v0

    return v0
.end method

.method public bridge synthetic cd()Z
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/gallery3d/ui/an;->cd()Z

    move-result v0

    return v0
.end method

.method protected cp()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/df;->Ab:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/df;->Ab:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/gallery3d/ui/an;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/gallery3d/ui/an;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/gallery3d/ui/an;->getWidth()I

    move-result v0

    return v0
.end method

.method protected h(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    return-void
.end method

.method public bridge synthetic h(Lcom/android/gallery3d/ui/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/an;->h(Lcom/android/gallery3d/ui/b;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic i(Lcom/android/gallery3d/ui/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/an;->i(Lcom/android/gallery3d/ui/b;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpaque()Z
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/gallery3d/ui/an;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic j(Lcom/android/gallery3d/ui/b;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/an;->j(Lcom/android/gallery3d/ui/b;)V

    return-void
.end method

.method public bridge synthetic recycle()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/gallery3d/ui/an;->recycle()V

    return-void
.end method

.method public bridge synthetic setOpaque(Z)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/an;->setOpaque(Z)V

    return-void
.end method

.method public bridge synthetic yield()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/gallery3d/ui/an;->yield()V

    return-void
.end method
