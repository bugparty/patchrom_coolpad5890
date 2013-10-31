.class public Lcom/android/gallery3d/ui/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/ar;


# static fields
.field private static final DURATION:I = 0xb4

.field private static final TAG:Ljava/lang/String; = "FadeInTexture"


# instance fields
.field private final mHeight:I

.field private mIsAnimating:Z

.field private final mStartTime:J

.field private final mWidth:I

.field private final nx:I

.field private final te:Lcom/android/gallery3d/ui/ah;

.field private final tf:Z


# direct methods
.method public constructor <init>(ILcom/android/gallery3d/ui/ah;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/android/gallery3d/ui/bv;->nx:I

    .line 41
    iput-object p2, p0, Lcom/android/gallery3d/ui/bv;->te:Lcom/android/gallery3d/ui/ah;

    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/ui/bv;->te:Lcom/android/gallery3d/ui/ah;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ah;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/bv;->mWidth:I

    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/ui/bv;->te:Lcom/android/gallery3d/ui/ah;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ah;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/bv;->mHeight:I

    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/bv;->te:Lcom/android/gallery3d/ui/ah;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ah;->isOpaque()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/bv;->tf:Z

    .line 45
    invoke-direct {p0}, Lcom/android/gallery3d/ui/bv;->dY()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/bv;->mStartTime:J

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/bv;->mIsAnimating:Z

    .line 47
    return-void
.end method

.method private dX()F
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    .line 83
    invoke-direct {p0}, Lcom/android/gallery3d/ui/bv;->dY()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/ui/bv;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x4334

    div-float/2addr v0, v1

    .line 84
    sub-float v0, v4, v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method private dY()J
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/b;IIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/bv;->dW()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/gallery3d/ui/bv;->te:Lcom/android/gallery3d/ui/ah;

    iget v2, p0, Lcom/android/gallery3d/ui/bv;->nx:I

    invoke-direct {p0}, Lcom/android/gallery3d/ui/bv;->dX()F

    move-result v3

    move-object v0, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/gallery3d/ui/b;->a(Lcom/android/gallery3d/ui/ah;IFIIII)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/bv;->te:Lcom/android/gallery3d/ui/ah;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ah;->a(Lcom/android/gallery3d/ui/b;IIII)V

    goto :goto_0
.end method

.method public b(Lcom/android/gallery3d/ui/b;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iget v4, p0, Lcom/android/gallery3d/ui/bv;->mWidth:I

    iget v5, p0, Lcom/android/gallery3d/ui/bv;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/bv;->a(Lcom/android/gallery3d/ui/b;IIII)V

    .line 51
    return-void
.end method

.method public dW()Z
    .locals 4

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/bv;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/android/gallery3d/ui/bv;->dY()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/ui/bv;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xb4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/bv;->mIsAnimating:Z

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/bv;->mIsAnimating:Z

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/gallery3d/ui/bv;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/gallery3d/ui/bv;->mWidth:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/bv;->tf:Z

    return v0
.end method
