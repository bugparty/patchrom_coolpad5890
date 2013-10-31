.class public Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;
.super Landroid/view/View;
.source "LockScreenWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreenWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MySwitchView"
.end annotation


# instance fields
.field private bitmap1:Landroid/graphics/Bitmap;

.field private bitmap2:Landroid/graphics/Bitmap;

.field private mPointWidth:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

.field private xLocation:I


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    .line 1486
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1489
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108063f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;->bitmap1:Landroid/graphics/Bitmap;

    .line 1490
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108063e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;->bitmap2:Landroid/graphics/Bitmap;

    .line 1491
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;->mPointWidth:I

    .line 1492
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1506
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1507
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mChildCount:I

    if-ge v0, v2, :cond_0

    .line 1508
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;->bitmap1:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;->mPointWidth:I

    mul-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1510
    :cond_0
    sget v2, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mChildCount:I

    if-eqz v2, :cond_1

    .line 1511
    sget v2, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mChildCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1512
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;->bitmap2:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;->xLocation:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1519
    :cond_1
    :goto_1
    return-void

    .line 1514
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;->bitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1515
    .local v1, perWidh:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;->bitmap2:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;->xLocation:I

    sget v4, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mCurrentDraw:I

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, 0x4000

    .line 1497
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget v3, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mChildCount:I

    mul-int v1, v2, v3

    .line 1498
    .local v1, width:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1500
    .local v0, height:I
    add-int v2, v1, v4

    add-int v3, v0, v4

    invoke-super {p0, v2, v3}, Landroid/view/View;->onMeasure(II)V

    .line 1501
    return-void
.end method
