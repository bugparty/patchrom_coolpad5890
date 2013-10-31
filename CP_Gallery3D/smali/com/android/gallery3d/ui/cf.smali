.class public abstract Lcom/android/gallery3d/ui/cf;
.super Lcom/android/gallery3d/ui/av;
.source "SourceFile"


# static fields
.field private static final STATE_ERROR:I = 0x10

.field private static final STATE_INVALID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AbstractDisplayItem"

.field private static final wk:I = 0x2

.field private static final wl:I = 0x4

.field private static final wm:I = 0x8


# instance fields
.field protected final li:Lcom/android/gallery3d/a/ax;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mState:I

.field private wn:Z

.field private wo:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/ax;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/android/gallery3d/ui/av;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/cf;->mState:I

    .line 34
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/cf;->wn:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/cf;->wo:Z

    .line 41
    iput-object p1, p0, Lcom/android/gallery3d/ui/cf;->li:Lcom/android/gallery3d/a/ax;

    .line 42
    if-nez p1, :cond_0

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/gallery3d/ui/cf;->mState:I

    .line 43
    :cond_0
    return-void
.end method

.method private aw(I)Z
    .locals 1
    .parameter

    .prologue
    .line 94
    iget v0, p0, Lcom/android/gallery3d/ui/cf;->mState:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/cf;->wo:Z

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/cf;->mState:I

    .line 52
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/cf;->wn:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cf;->eI()V

    goto :goto_0

    .line 59
    :cond_2
    iput-object p1, p0, Lcom/android/gallery3d/ui/cf;->mBitmap:Landroid/graphics/Bitmap;

    .line 60
    if-nez p1, :cond_3

    const/16 v0, 0x10

    :goto_1
    iput v0, p0, Lcom/android/gallery3d/ui/cf;->mState:I

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/ui/cf;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/cf;->f(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 60
    :cond_3
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public as()J
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/ui/cf;->li:Lcom/android/gallery3d/a/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/cf;->li:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public eI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 78
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/cf;->wn:Z

    .line 79
    iget v0, p0, Lcom/android/gallery3d/ui/cf;->mState:I

    if-ne v0, v1, :cond_0

    .line 80
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/gallery3d/ui/cf;->mState:I

    .line 81
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cf;->eL()V

    .line 83
    :cond_0
    return-void
.end method

.method public eJ()V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/cf;->wn:Z

    .line 87
    iget v0, p0, Lcom/android/gallery3d/ui/cf;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 88
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/gallery3d/ui/cf;->mState:I

    .line 89
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cf;->eM()V

    .line 91
    :cond_0
    return-void
.end method

.method public eK()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/cf;->wn:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/cf;->aw(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract eL()V
.end method

.method protected abstract eM()V
.end method

.method protected abstract f(Landroid/graphics/Bitmap;)V
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/ui/cf;->li:Lcom/android/gallery3d/a/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/cf;->li:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->getRotation()I

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/cf;->aw(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/ui/cf;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/cf;->mBitmap:Landroid/graphics/Bitmap;

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/cf;->wo:Z

    .line 102
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cf;->eJ()V

    goto :goto_0
.end method
