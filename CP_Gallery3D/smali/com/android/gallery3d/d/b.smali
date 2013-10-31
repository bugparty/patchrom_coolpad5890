.class public Lcom/android/gallery3d/d/b;
.super Lcom/android/gallery3d/d/d;
.source "SourceFile"


# instance fields
.field private sA:F

.field private final sy:F

.field private final sz:F


# direct methods
.method public constructor <init>(FFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/gallery3d/d/d;-><init>()V

    .line 26
    iput p1, p0, Lcom/android/gallery3d/d/b;->sy:F

    .line 27
    iput p2, p0, Lcom/android/gallery3d/d/b;->sz:F

    .line 28
    iput p1, p0, Lcom/android/gallery3d/d/b;->sA:F

    .line 29
    invoke-virtual {p0, p3}, Lcom/android/gallery3d/d/b;->setDuration(I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected b(F)V
    .locals 3
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/android/gallery3d/d/b;->sy:F

    iget v1, p0, Lcom/android/gallery3d/d/b;->sz:F

    iget v2, p0, Lcom/android/gallery3d/d/b;->sy:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/d/b;->sA:F

    .line 35
    return-void
.end method

.method public get()F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery3d/d/b;->sA:F

    return v0
.end method
