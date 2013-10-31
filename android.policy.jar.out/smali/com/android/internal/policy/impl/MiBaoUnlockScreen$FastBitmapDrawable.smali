.class Lcom/android/internal/policy/impl/MiBaoUnlockScreen$FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MiBaoUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiBaoUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FastBitmapDrawable"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDip:I

.field private mOpacity:I


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "bitmap"
    .parameter "pixtodip"

    .prologue
    .line 578
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 579
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 580
    iput p2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$FastBitmapDrawable;->mDip:I

    .line 581
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x3

    :goto_0
    iput v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$FastBitmapDrawable;->mOpacity:I

    .line 582
    return-void

    .line 581
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/graphics/Bitmap;ILcom/android/internal/policy/impl/MiBaoUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 574
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$FastBitmapDrawable;->mDip:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 591
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$FastBitmapDrawable;->mOpacity:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 600
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 604
    return-void
.end method
