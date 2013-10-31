.class public Lcom/android/gallery3d/ui/cl;
.super Lcom/android/gallery3d/ui/ao;
.source "SourceFile"


# instance fields
.field private final mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p2, p3}, Lcom/android/gallery3d/ui/ao;-><init>(II)V

    .line 30
    iput-object p1, p0, Lcom/android/gallery3d/ui/cl;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/cl;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/gallery3d/ui/ah;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/ah;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/cl;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 37
    return-void
.end method

.method public bridge synthetic a(Lcom/android/gallery3d/ui/b;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/ao;->a(Lcom/android/gallery3d/ui/b;IIII)V

    return-void
.end method

.method public bridge synthetic b(Lcom/android/gallery3d/ui/b;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/ao;->b(Lcom/android/gallery3d/ui/b;II)V

    return-void
.end method

.method public bridge synthetic cb()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/gallery3d/ui/ao;->cb()I

    move-result v0

    return v0
.end method

.method public bridge synthetic cc()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/gallery3d/ui/ao;->cc()I

    move-result v0

    return v0
.end method

.method public bridge synthetic cd()Z
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/gallery3d/ui/ao;->cd()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/gallery3d/ui/ao;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/gallery3d/ui/ao;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/gallery3d/ui/ao;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic h(Lcom/android/gallery3d/ui/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/ao;->h(Lcom/android/gallery3d/ui/b;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic i(Lcom/android/gallery3d/ui/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/ao;->i(Lcom/android/gallery3d/ui/b;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpaque()Z
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/gallery3d/ui/ao;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic j(Lcom/android/gallery3d/ui/b;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/ao;->j(Lcom/android/gallery3d/ui/b;)V

    return-void
.end method

.method public bridge synthetic recycle()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/gallery3d/ui/ao;->recycle()V

    return-void
.end method

.method public bridge synthetic setOpaque(Z)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/ao;->setOpaque(Z)V

    return-void
.end method

.method public bridge synthetic yield()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/gallery3d/ui/ao;->yield()V

    return-void
.end method
