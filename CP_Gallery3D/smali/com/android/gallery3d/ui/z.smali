.class public Lcom/android/gallery3d/ui/z;
.super Lcom/android/gallery3d/ui/am;
.source "SourceFile"


# instance fields
.field private final hm:Lcom/android/gallery3d/ui/ah;

.field private mReqHeight:I

.field private mReqWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    new-instance v0, Lcom/android/gallery3d/ui/bm;

    invoke-direct {v0, p1, p2}, Lcom/android/gallery3d/ui/bm;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/gallery3d/ui/z;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/ah;II)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ui/ah;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/gallery3d/ui/am;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/android/gallery3d/ui/z;->hm:Lcom/android/gallery3d/ui/ah;

    .line 35
    iput p3, p0, Lcom/android/gallery3d/ui/z;->mReqWidth:I

    .line 36
    iput p4, p0, Lcom/android/gallery3d/ui/z;->mReqHeight:I

    .line 37
    return-void
.end method


# virtual methods
.method protected c(Lcom/android/gallery3d/ui/b;)V
    .locals 6
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->hU:Landroid/graphics/Rect;

    .line 50
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/z;->getWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 51
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/z;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v2, v3

    .line 54
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/gallery3d/ui/z;->mReqWidth:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    .line 55
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/gallery3d/ui/z;->mReqHeight:I

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/ui/z;->hm:Lcom/android/gallery3d/ui/ah;

    iget v4, p0, Lcom/android/gallery3d/ui/z;->mReqWidth:I

    iget v5, p0, Lcom/android/gallery3d/ui/z;->mReqHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ah;->a(Lcom/android/gallery3d/ui/b;IIII)V

    .line 58
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-static {p0}, Lcom/android/gallery3d/ui/dk;->e(Lcom/android/gallery3d/ui/am;)Lcom/android/gallery3d/ui/dk;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/z;->mReqWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/z;->mReqHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/dk;->B(II)Lcom/android/gallery3d/ui/dk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/dk;->measure(II)V

    .line 44
    return-void
.end method
