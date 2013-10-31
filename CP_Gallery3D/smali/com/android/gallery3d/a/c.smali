.class public Lcom/android/gallery3d/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private am:Ljava/lang/String;

.field private an:Landroid/graphics/Rect;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/gallery3d/a/c;->mName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/android/gallery3d/a/c;->am:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/a/c;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/a/c;->am:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 31
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/a/c;->an:Landroid/graphics/Rect;

    .line 33
    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/android/gallery3d/a/c;->an:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 35
    iget-object v1, p0, Lcom/android/gallery3d/a/c;->an:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 36
    iget-object v1, p0, Lcom/android/gallery3d/a/c;->an:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 37
    iget-object v1, p0, Lcom/android/gallery3d/a/c;->an:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/a/c;)I
    .locals 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/a/c;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/gallery3d/a/c;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/android/gallery3d/a/c;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/c;->a(Lcom/android/gallery3d/a/c;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 63
    instance-of v0, p1, Lcom/android/gallery3d/a/c;

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Lcom/android/gallery3d/a/c;

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/a/c;->am:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/gallery3d/a/c;->am:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/a/c;->an:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/gallery3d/a/c;->an:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/a/c;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/a/c;->an:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/gallery3d/a/c;->an:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public v()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/a/c;->an:Landroid/graphics/Rect;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/a/c;->am:Ljava/lang/String;

    return-object v0
.end method
