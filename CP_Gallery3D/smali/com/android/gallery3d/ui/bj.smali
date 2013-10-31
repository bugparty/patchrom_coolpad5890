.class public Lcom/android/gallery3d/ui/bj;
.super Lcom/android/gallery3d/ui/u;
.source "SourceFile"


# instance fields
.field private rs:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private rt:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private ru:Landroid/graphics/Rect;

.field private rv:Lcom/android/gallery3d/a/dd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/gallery3d/ui/u;-><init>()V

    .line 32
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020018

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/bj;->rs:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 33
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020069

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/bj;->rt:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/ui/bj;->rt:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->cq()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/bj;->ru:Landroid/graphics/Rect;

    .line 35
    return-void
.end method

.method private o(Lcom/android/gallery3d/a/dd;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/bj;->rv:Lcom/android/gallery3d/a/dd;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/b;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    neg-int v0, p2

    div-int/lit8 v1, v0, 0x2

    .line 68
    neg-int v0, p3

    div-int/lit8 v3, v0, 0x2

    .line 69
    iget-object v5, p0, Lcom/android/gallery3d/ui/bj;->ru:Landroid/graphics/Rect;

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/ui/bj;->rt:Lcom/android/gallery3d/ui/NinePatchTexture;

    iget v2, v5, Landroid/graphics/Rect;->left:I

    sub-int v2, v1, v2

    iget v1, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    iget v1, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v4, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    iget v1, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/NinePatchTexture;->a(Lcom/android/gallery3d/ui/b;IIII)V

    .line 72
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/ar;IIILcom/android/gallery3d/a/dd;IIZIZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    neg-int v0, p3

    div-int/lit8 v2, v0, 0x2

    .line 56
    neg-int v0, p4

    div-int/lit8 v3, v0, 0x2

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 58
    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/bj;->a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/ar;IIIII)V

    .line 60
    invoke-direct {p0, p6}, Lcom/android/gallery3d/ui/bj;->o(Lcom/android/gallery3d/a/dd;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/gallery3d/ui/bj;->rs:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v0, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/ui/bj;->a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/NinePatchTexture;IIII)V

    .line 63
    :cond_0
    return-void
.end method

.method public aV()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public n(Lcom/android/gallery3d/a/dd;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/gallery3d/ui/bj;->rv:Lcom/android/gallery3d/a/dd;

    .line 39
    return-void
.end method
