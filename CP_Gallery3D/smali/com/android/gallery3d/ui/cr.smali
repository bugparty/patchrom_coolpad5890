.class public Lcom/android/gallery3d/ui/cr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/ar;


# instance fields
.field private mHeight:I

.field private mWidth:I

.field private final nx:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/android/gallery3d/ui/cr;->nx:I

    .line 30
    iput v0, p0, Lcom/android/gallery3d/ui/cr;->mWidth:I

    .line 31
    iput v0, p0, Lcom/android/gallery3d/ui/cr;->mHeight:I

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/b;IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    iget v5, p0, Lcom/android/gallery3d/ui/cr;->nx:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/b;->a(FFFFI)V

    .line 40
    return-void
.end method

.method public b(Lcom/android/gallery3d/ui/b;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    iget v4, p0, Lcom/android/gallery3d/ui/cr;->mWidth:I

    iget v5, p0, Lcom/android/gallery3d/ui/cr;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/cr;->a(Lcom/android/gallery3d/ui/b;IIII)V

    .line 36
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/gallery3d/ui/cr;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/gallery3d/ui/cr;->mWidth:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/gallery3d/ui/cr;->nx:I

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->isOpaque(I)Z

    move-result v0

    return v0
.end method

.method public setSize(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/android/gallery3d/ui/cr;->mWidth:I

    .line 48
    iput p2, p0, Lcom/android/gallery3d/ui/cr;->mHeight:I

    .line 49
    return-void
.end method
