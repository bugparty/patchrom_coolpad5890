.class public Lcom/android/gallery3d/photoeditor/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private height:I

.field private tM:I

.field private width:I


# direct methods
.method private constructor <init>(III)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/gallery3d/photoeditor/aj;->tM:I

    .line 44
    iput p2, p0, Lcom/android/gallery3d/photoeditor/aj;->width:I

    .line 45
    iput p3, p0, Lcom/android/gallery3d/photoeditor/aj;->height:I

    .line 46
    return-void
.end method

.method public static k(Landroid/graphics/Bitmap;)Lcom/android/gallery3d/photoeditor/aj;
    .locals 4
    .parameter

    .prologue
    .line 34
    if-eqz p0, :cond_0

    new-instance v0, Lcom/android/gallery3d/photoeditor/aj;

    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/ac;->i(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/photoeditor/aj;-><init>(III)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(II)Lcom/android/gallery3d/photoeditor/aj;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    new-instance v0, Lcom/android/gallery3d/photoeditor/aj;

    invoke-static {}, Lcom/android/gallery3d/photoeditor/ac;->dF()I

    move-result v1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/gallery3d/photoeditor/aj;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/photoeditor/aj;)Z
    .locals 2
    .parameter

    .prologue
    .line 53
    iget v0, p1, Lcom/android/gallery3d/photoeditor/aj;->width:I

    iget v1, p0, Lcom/android/gallery3d/photoeditor/aj;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/gallery3d/photoeditor/aj;->height:I

    iget v1, p0, Lcom/android/gallery3d/photoeditor/aj;->height:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/gallery3d/photoeditor/aj;->tM:I

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ac;->ap(I)V

    .line 80
    return-void
.end method

.method public ei()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/gallery3d/photoeditor/aj;->tM:I

    return v0
.end method

.method public ej()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 72
    iget v0, p0, Lcom/android/gallery3d/photoeditor/aj;->tM:I

    iget v1, p0, Lcom/android/gallery3d/photoeditor/aj;->width:I

    iget v2, p0, Lcom/android/gallery3d/photoeditor/aj;->height:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/ac;->e(III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public height()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/gallery3d/photoeditor/aj;->height:I

    return v0
.end method

.method public width()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/gallery3d/photoeditor/aj;->width:I

    return v0
.end method

.method public x(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lcom/android/gallery3d/photoeditor/aj;->width:I

    .line 58
    iput p2, p0, Lcom/android/gallery3d/photoeditor/aj;->height:I

    .line 59
    iget v0, p0, Lcom/android/gallery3d/photoeditor/aj;->tM:I

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ac;->ap(I)V

    .line 60
    invoke-static {}, Lcom/android/gallery3d/photoeditor/ac;->dF()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/aj;->tM:I

    .line 61
    return-void
.end method
