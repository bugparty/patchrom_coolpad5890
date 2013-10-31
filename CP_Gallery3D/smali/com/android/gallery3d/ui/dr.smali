.class Lcom/android/gallery3d/ui/dr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CA:F = 0.1f

.field private static final Cx:I = 0x3

.field private static final Cy:I = 0xc8

.field private static final Cz:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "EdgeAnimation"

.field private static final wX:I = 0x0

.field private static final wY:I = 0x1

.field private static final wZ:I = 0x2


# instance fields
.field private CB:F

.field private CC:F

.field private cL:J

.field private mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTime:J

.field private mState:I

.field private mValue:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/dr;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/dr;->mState:I

    .line 127
    return-void
.end method

.method private a(FFJI)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    iput p1, p0, Lcom/android/gallery3d/ui/dr;->CB:F

    .line 132
    iput p2, p0, Lcom/android/gallery3d/ui/dr;->CC:F

    .line 133
    iput-wide p3, p0, Lcom/android/gallery3d/ui/dr;->mDuration:J

    .line 134
    invoke-direct {p0}, Lcom/android/gallery3d/ui/dr;->dY()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/dr;->mStartTime:J

    .line 135
    iput p5, p0, Lcom/android/gallery3d/ui/dr;->mState:I

    .line 136
    return-void
.end method

.method private dY()J
    .locals 2

    .prologue
    .line 188
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public fK()F
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/android/gallery3d/ui/dr;->mValue:F

    return v0
.end method

.method public onPull(F)V
    .locals 3
    .parameter

    .prologue
    .line 142
    iget v0, p0, Lcom/android/gallery3d/ui/dr;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/dr;->mValue:F

    add-float/2addr v0, p1

    const/high16 v1, -0x4080

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/dr;->mValue:F

    .line 144
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/dr;->mState:I

    goto :goto_0
.end method

.method public onRelease()V
    .locals 6

    .prologue
    .line 148
    iget v0, p0, Lcom/android/gallery3d/ui/dr;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/dr;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/dr;->mValue:F

    const/4 v2, 0x0

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/dr;->a(FFJI)V

    goto :goto_0
.end method

.method public p(F)V
    .locals 6
    .parameter

    .prologue
    .line 153
    iget v0, p0, Lcom/android/gallery3d/ui/dr;->mValue:F

    const v1, 0x3dcccccd

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    const/high16 v1, -0x4080

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v2

    .line 155
    iget v1, p0, Lcom/android/gallery3d/ui/dr;->mValue:F

    const-wide/16 v3, 0xc8

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/dr;->a(FFJI)V

    .line 156
    return-void
.end method

.method public update()Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/high16 v8, 0x3f80

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 159
    iget v0, p0, Lcom/android/gallery3d/ui/dr;->mState:I

    if-nez v0, :cond_0

    move v0, v3

    .line 180
    :goto_0
    return v0

    .line 160
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/dr;->mState:I

    if-ne v0, v6, :cond_1

    move v0, v6

    goto :goto_0

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/dr;->dY()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/gallery3d/ui/dr;->mStartTime:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    iget-wide v4, p0, Lcom/android/gallery3d/ui/dr;->mDuration:J

    long-to-float v1, v4

    div-float/2addr v0, v1

    invoke-static {v0, v2, v8}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    .line 164
    iget v0, p0, Lcom/android/gallery3d/ui/dr;->mState:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    move v0, v1

    .line 167
    :goto_1
    iget v4, p0, Lcom/android/gallery3d/ui/dr;->CB:F

    iget v5, p0, Lcom/android/gallery3d/ui/dr;->CC:F

    iget v7, p0, Lcom/android/gallery3d/ui/dr;->CB:F

    sub-float/2addr v5, v7

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/gallery3d/ui/dr;->mValue:F

    .line 169
    cmpl-float v0, v1, v8

    if-ltz v0, :cond_2

    .line 170
    iget v0, p0, Lcom/android/gallery3d/ui/dr;->mState:I

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_2
    move v0, v6

    .line 180
    goto :goto_0

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/dr;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_1

    .line 172
    :pswitch_0
    iget v1, p0, Lcom/android/gallery3d/ui/dr;->mValue:F

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/dr;->a(FFJI)V

    goto :goto_2

    .line 175
    :pswitch_1
    iput v3, p0, Lcom/android/gallery3d/ui/dr;->mState:I

    goto :goto_2

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
