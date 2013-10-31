.class public Lcom/android/gallery3d/ui/as;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final nv:I = 0x1


# instance fields
.field private mFlags:I

.field private nw:F

.field private nx:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v1, p0, Lcom/android/gallery3d/ui/as;->mFlags:I

    .line 26
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery3d/ui/as;->nw:F

    .line 27
    iput v1, p0, Lcom/android/gallery3d/ui/as;->nx:I

    return-void
.end method


# virtual methods
.method public cW()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/gallery3d/ui/as;->nw:F

    return v0
.end method

.method public cX()Z
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/gallery3d/ui/as;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/gallery3d/ui/as;->nx:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/android/gallery3d/ui/as;->mFlags:I

    return v0
.end method

.method public j(F)V
    .locals 1
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 47
    iput p1, p0, Lcom/android/gallery3d/ui/as;->nw:F

    .line 48
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .parameter

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget v0, p0, Lcom/android/gallery3d/ui/as;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/as;->mFlags:I

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/as;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/gallery3d/ui/as;->mFlags:I

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/android/gallery3d/ui/as;->nx:I

    .line 39
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/android/gallery3d/ui/as;->mFlags:I

    .line 35
    return-void
.end method
