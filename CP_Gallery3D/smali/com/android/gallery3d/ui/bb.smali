.class Lcom/android/gallery3d/ui/bb;
.super Lcom/android/gallery3d/ui/bm;
.source "SourceFile"


# instance fields
.field private lD:Landroid/graphics/Rect;

.field private mAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 413
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/bm;-><init>(Landroid/content/Context;I)V

    .line 409
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/bb;->lD:Landroid/graphics/Rect;

    .line 410
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/gallery3d/ui/bb;->mAlpha:I

    .line 414
    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/bb;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/bb;->getWidth()I

    move-result v0

    return v0
.end method

.method public m(Lcom/android/gallery3d/ui/b;)V
    .locals 6
    .parameter

    .prologue
    .line 433
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/b;->save(I)I

    .line 434
    iget v0, p0, Lcom/android/gallery3d/ui/bb;->mAlpha:I

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/b;->a(F)V

    .line 435
    iget-object v0, p0, Lcom/android/gallery3d/ui/bb;->lD:Landroid/graphics/Rect;

    .line 436
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/bb;->a(Lcom/android/gallery3d/ui/b;IIII)V

    .line 437
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->restore()V

    .line 438
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput p1, p0, Lcom/android/gallery3d/ui/bb;->mAlpha:I

    .line 430
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/gallery3d/ui/bb;->lD:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 426
    return-void
.end method
