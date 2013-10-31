.class public Lcom/android/gallery3d/app/bz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "EyePosition"

.field private static final uC:F = 0.15f

.field private static final uD:F = 10.0f

.field private static final uE:I = 0xf

.field private static final uF:F = 0.995f

#the value of this static final field might be set in the static constructor
.field private static final uG:D = 0.0

#the value of this static final field might be set in the static constructor
.field private static final uH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final uI:F = 0.0f

.field private static final uJ:F = 0.5f

.field private static final uK:I = -0x1

.field private static final uL:F = 0.3f


# instance fields
.field private iS:F

.field private mContext:Landroid/content/Context;

.field private mStartTime:J

.field private mX:F

.field private mY:F

.field private uM:Lcom/android/gallery3d/app/cf;

.field private uN:Landroid/view/Display;

.field private final uO:F

.field private final uP:F

.field private uQ:Landroid/hardware/Sensor;

.field private uR:Lcom/android/gallery3d/app/f;

.field private uS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-wide/high16 v0, 0x4024

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/gallery3d/app/bz;->uG:D

    .line 45
    sget-wide v0, Lcom/android/gallery3d/app/bz;->uG:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/android/gallery3d/app/bz;->uH:F

    .line 46
    sget-wide v0, Lcom/android/gallery3d/app/bz;->uG:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/android/gallery3d/app/bz;->uI:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/app/cf;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/app/bz;->mStartTime:J

    .line 65
    new-instance v0, Lcom/android/gallery3d/app/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/f;-><init>(Lcom/android/gallery3d/app/bz;Lcom/android/gallery3d/app/dp;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/bz;->uR:Lcom/android/gallery3d/app/f;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/bz;->uS:I

    .line 70
    iput-object p1, p0, Lcom/android/gallery3d/app/bz;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/gallery3d/app/bz;->uM:Lcom/android/gallery3d/app/cf;

    .line 72
    const v0, 0x3e99999a

    invoke-static {v0}, Lcom/android/gallery3d/b/y;->s(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/bz;->uO:F

    .line 73
    iget v0, p0, Lcom/android/gallery3d/app/bz;->uO:F

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/bz;->uP:F

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/app/bz;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 77
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/bz;->uN:Landroid/view/Display;

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/bz;FFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/bz;->d(FFF)V

    return-void
.end method

.method static synthetic b(Lcom/android/gallery3d/app/bz;FFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/bz;->c(FFF)V

    return-void
.end method

.method private c(FFF)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/app/bz;->uN:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v6, p2

    move p2, p1

    move p1, v6

    .line 122
    :goto_0
    mul-float v0, p2, p2

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    .line 123
    neg-float v1, p1

    div-float/2addr v1, v0

    .line 125
    mul-float v2, v1, p2

    .line 126
    const/high16 v3, -0x4080

    mul-float v4, v1, p1

    add-float/2addr v3, v4

    .line 127
    mul-float/2addr v1, p3

    .line 129
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    mul-float/2addr v1, v1

    add-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 130
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 132
    sget v4, Lcom/android/gallery3d/app/bz;->uH:F

    mul-float/2addr v4, p2

    div-float/2addr v4, v0

    sget v5, Lcom/android/gallery3d/app/bz;->uI:F

    mul-float/2addr v2, v5

    div-float/2addr v2, v1

    add-float/2addr v2, v4

    iget v4, p0, Lcom/android/gallery3d/app/bz;->uO:F

    mul-float/2addr v2, v4

    iget v4, p0, Lcom/android/gallery3d/app/bz;->uP:F

    neg-float v4, v4

    iget v5, p0, Lcom/android/gallery3d/app/bz;->uP:F

    invoke-static {v2, v4, v5}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/bz;->mX:F

    .line 135
    sget v2, Lcom/android/gallery3d/app/bz;->uH:F

    mul-float/2addr v2, p1

    div-float v0, v2, v0

    sget v2, Lcom/android/gallery3d/app/bz;->uI:F

    mul-float/2addr v2, v3

    div-float v1, v2, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/app/bz;->uO:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/app/bz;->uP:F

    neg-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/app/bz;->uP:F

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/bz;->mY:F

    .line 138
    iget v0, p0, Lcom/android/gallery3d/app/bz;->uO:F

    iget v1, p0, Lcom/android/gallery3d/app/bz;->uO:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/app/bz;->mX:F

    iget v2, p0, Lcom/android/gallery3d/app/bz;->mX:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/app/bz;->mY:F

    iget v2, p0, Lcom/android/gallery3d/app/bz;->mY:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/bz;->iS:F

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/app/bz;->uM:Lcom/android/gallery3d/app/cf;

    iget v1, p0, Lcom/android/gallery3d/app/bz;->mX:F

    iget v2, p0, Lcom/android/gallery3d/app/bz;->mY:F

    iget v3, p0, Lcom/android/gallery3d/app/bz;->iS:F

    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/app/cf;->b(FFF)V

    .line 141
    return-void

    .line 117
    :pswitch_0
    neg-float p2, p2

    goto :goto_0

    .line 118
    :pswitch_1
    neg-float v0, p1

    neg-float p1, p2

    move p2, v0

    goto/16 :goto_0

    .line 119
    :pswitch_2
    neg-float p1, p1

    goto/16 :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private d(FFF)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const v9, 0x3f7eb852

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 145
    cmpl-float v0, p1, v4

    if-lez v0, :cond_3

    move v1, p1

    :goto_0
    cmpl-float v0, p2, v4

    if-lez v0, :cond_4

    move v0, p2

    :goto_1
    add-float/2addr v0, v1

    .line 146
    const v1, 0x3e19999a

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x4120

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/bz;->uS:I

    if-lez v0, :cond_5

    .line 148
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/bz;->uS:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/bz;->uS:I

    .line 149
    iput-wide v2, p0, Lcom/android/gallery3d/app/bz;->mStartTime:J

    .line 150
    iget v0, p0, Lcom/android/gallery3d/app/bz;->uO:F

    const/high16 v1, 0x41a0

    div-float/2addr v0, v1

    .line 151
    iget v1, p0, Lcom/android/gallery3d/app/bz;->mX:F

    cmpl-float v1, v1, v0

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/android/gallery3d/app/bz;->mX:F

    neg-float v2, v0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/android/gallery3d/app/bz;->mY:F

    cmpl-float v1, v1, v0

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/android/gallery3d/app/bz;->mY:F

    neg-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    .line 152
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/bz;->mX:F

    mul-float/2addr v0, v9

    iput v0, p0, Lcom/android/gallery3d/app/bz;->mX:F

    .line 153
    iget v0, p0, Lcom/android/gallery3d/app/bz;->mY:F

    mul-float/2addr v0, v9

    iput v0, p0, Lcom/android/gallery3d/app/bz;->mY:F

    .line 154
    iget v0, p0, Lcom/android/gallery3d/app/bz;->uO:F

    iget v1, p0, Lcom/android/gallery3d/app/bz;->uO:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/app/bz;->mX:F

    iget v2, p0, Lcom/android/gallery3d/app/bz;->mX:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/app/bz;->mY:F

    iget v2, p0, Lcom/android/gallery3d/app/bz;->mY:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/bz;->iS:F

    .line 156
    iget-object v0, p0, Lcom/android/gallery3d/app/bz;->uM:Lcom/android/gallery3d/app/cf;

    iget v1, p0, Lcom/android/gallery3d/app/bz;->mX:F

    iget v2, p0, Lcom/android/gallery3d/app/bz;->mY:F

    iget v3, p0, Lcom/android/gallery3d/app/bz;->iS:F

    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/app/cf;->b(FFF)V

    .line 179
    :cond_2
    :goto_2
    return-void

    .line 145
    :cond_3
    neg-float v0, p1

    move v1, v0

    goto :goto_0

    :cond_4
    neg-float v0, p2

    goto :goto_1

    .line 161
    :cond_5
    iget-wide v0, p0, Lcom/android/gallery3d/app/bz;->mStartTime:J

    sub-long v0, v2, v0

    long-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/app/bz;->uO:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/app/bz;->iS:F

    neg-float v1, v1

    mul-float v4, v0, v1

    .line 162
    iput-wide v2, p0, Lcom/android/gallery3d/app/bz;->mStartTime:J

    .line 164
    neg-float v1, p2

    neg-float v0, p1

    .line 165
    iget-object v2, p0, Lcom/android/gallery3d/app/bz;->uN:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move p2, v0

    move p1, v1

    .line 171
    :goto_3
    iget v0, p0, Lcom/android/gallery3d/app/bz;->mX:F

    float-to-double v0, v0

    mul-float v2, p1, v4

    float-to-double v2, v2

    iget v5, p0, Lcom/android/gallery3d/app/bz;->iS:F

    float-to-double v5, v5

    iget v7, p0, Lcom/android/gallery3d/app/bz;->mX:F

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    div-double/2addr v2, v5

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/app/bz;->uP:F

    neg-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/app/bz;->uP:F

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    mul-float/2addr v0, v9

    iput v0, p0, Lcom/android/gallery3d/app/bz;->mX:F

    .line 173
    iget v0, p0, Lcom/android/gallery3d/app/bz;->mY:F

    float-to-double v0, v0

    mul-float v2, p2, v4

    float-to-double v2, v2

    iget v4, p0, Lcom/android/gallery3d/app/bz;->iS:F

    float-to-double v4, v4

    iget v6, p0, Lcom/android/gallery3d/app/bz;->mY:F

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/app/bz;->uP:F

    neg-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/app/bz;->uP:F

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    mul-float/2addr v0, v9

    iput v0, p0, Lcom/android/gallery3d/app/bz;->mY:F

    .line 176
    iget v0, p0, Lcom/android/gallery3d/app/bz;->uO:F

    iget v1, p0, Lcom/android/gallery3d/app/bz;->uO:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/app/bz;->mX:F

    iget v2, p0, Lcom/android/gallery3d/app/bz;->mX:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/app/bz;->mY:F

    iget v2, p0, Lcom/android/gallery3d/app/bz;->mY:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/bz;->iS:F

    .line 178
    iget-object v0, p0, Lcom/android/gallery3d/app/bz;->uM:Lcom/android/gallery3d/app/cf;

    iget v1, p0, Lcom/android/gallery3d/app/bz;->mX:F

    iget v2, p0, Lcom/android/gallery3d/app/bz;->mY:F

    iget v3, p0, Lcom/android/gallery3d/app/bz;->iS:F

    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/app/cf;->b(FFF)V

    goto/16 :goto_2

    .line 166
    :pswitch_0
    neg-float p1, p1

    goto :goto_3

    :pswitch_1
    move v10, p1

    move p1, p2

    move p2, v10

    .line 167
    goto :goto_3

    .line 168
    :pswitch_2
    neg-float p2, p2

    goto :goto_3

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public eo()V
    .locals 4

    .prologue
    .line 96
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/app/bz;->mStartTime:J

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/bz;->mY:F

    iput v0, p0, Lcom/android/gallery3d/app/bz;->mX:F

    .line 98
    iget v0, p0, Lcom/android/gallery3d/app/bz;->uO:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/bz;->iS:F

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/app/bz;->uM:Lcom/android/gallery3d/app/cf;

    iget v1, p0, Lcom/android/gallery3d/app/bz;->mX:F

    iget v2, p0, Lcom/android/gallery3d/app/bz;->mY:F

    iget v3, p0, Lcom/android/gallery3d/app/bz;->iS:F

    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/app/cf;->b(FFF)V

    .line 100
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 216
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/app/bz;->mStartTime:J

    .line 217
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/gallery3d/app/bz;->uS:I

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/bz;->mY:F

    iput v0, p0, Lcom/android/gallery3d/app/bz;->mX:F

    .line 219
    iget v0, p0, Lcom/android/gallery3d/app/bz;->uO:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/bz;->iS:F

    .line 220
    iget-object v0, p0, Lcom/android/gallery3d/app/bz;->uM:Lcom/android/gallery3d/app/cf;

    iget v1, p0, Lcom/android/gallery3d/app/bz;->mX:F

    iget v2, p0, Lcom/android/gallery3d/app/bz;->mY:F

    iget v3, p0, Lcom/android/gallery3d/app/bz;->iS:F

    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/app/cf;->b(FFF)V

    .line 221
    return-void
.end method
