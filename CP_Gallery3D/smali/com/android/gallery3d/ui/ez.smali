.class Lcom/android/gallery3d/ui/ez;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field JP:Landroid/graphics/Rect;

.field JQ:Lcom/android/gallery3d/ui/ez;

.field eo:[F

.field mAlpha:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 881
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 883
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ez;->JP:Landroid/graphics/Rect;

    .line 884
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/ez;->eo:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/ck;)V
    .locals 0
    .parameter

    .prologue
    .line 881
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ez;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/android/gallery3d/ui/cp;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 888
    iget v0, p0, Lcom/android/gallery3d/ui/ez;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/ez;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/ui/cp;->setAlpha(F)V

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ez;->JP:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 890
    iget-object v0, p0, Lcom/android/gallery3d/ui/ez;->JP:Landroid/graphics/Rect;

    .line 891
    invoke-static {p1}, Lcom/android/gallery3d/ui/cp;->a(Lcom/android/gallery3d/ui/cp;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 892
    invoke-static {p1}, Lcom/android/gallery3d/ui/cp;->b(Lcom/android/gallery3d/ui/cp;)Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ez;->eo:[F

    aget v0, v0, v5

    const/high16 v1, -0x80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 896
    iget-object v0, p0, Lcom/android/gallery3d/ui/ez;->eo:[F

    invoke-static {p1}, Lcom/android/gallery3d/ui/cp;->c(Lcom/android/gallery3d/ui/cp;)[F

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 898
    :cond_2
    return-void
.end method
