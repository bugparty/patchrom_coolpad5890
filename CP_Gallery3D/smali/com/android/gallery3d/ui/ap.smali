.class public Lcom/android/gallery3d/ui/ap;
.super Lcom/android/gallery3d/ui/am;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoView"

.field public static final mA:I = 0x5

.field private static final mB:I = 0x0

.field private static final mC:I = 0x1

.field private static final mD:I = 0x2

.field private static final mE:I = 0x3

.field private static final mF:I = 0x0

.field private static final mG:I = 0x1

.field private static final mH:I = 0x6

.field private static final mI:I = 0xbe

.field private static final mJ:F = 260.0f

.field private static final mK:F = 20.0f

.field public static final mr:I = -0x1

.field private static final ms:I = 0x1

.field private static final mt:I = 0x2

.field private static final mu:J = 0xfaL

.field private static final mv:I = 0x0

.field private static final mw:I = 0x3

.field private static final mx:I = 0x4

.field public static final my:I = 0x1

.field public static final mz:I = 0x2

.field private static final ne:F = 1.2f


# instance fields
.field private da:Lcom/android/gallery3d/ui/cx;

.field private et:Lcom/android/gallery3d/app/bm;

.field private fB:I

.field private final mL:[Lcom/android/gallery3d/ui/dm;

.field private final mM:Landroid/view/ScaleGestureDetector;

.field private final mN:Landroid/view/GestureDetector;

.field private final mO:Lcom/android/gallery3d/ui/by;

.field private mP:Lcom/android/gallery3d/ui/bi;

.field private final mQ:Lcom/android/gallery3d/ui/n;

.field private mR:Lcom/android/gallery3d/ui/cs;

.field private mS:Lcom/android/gallery3d/ui/e;

.field private mT:Lcom/android/gallery3d/ui/e;

.field private mU:I

.field private final mV:Lcom/android/gallery3d/ui/en;

.field private mW:Lcom/android/gallery3d/ui/ar;

.field private mZ:Z

.field private na:Lcom/android/gallery3d/ui/dt;

.field private nb:Lcom/android/gallery3d/ui/ag;

.field private nc:I

.field private nd:Lcom/android/gallery3d/a/dd;

.field private nf:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/bm;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v4, -0x1

    const/high16 v3, 0x41a0

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 111
    invoke-direct {p0}, Lcom/android/gallery3d/ui/am;-><init>()V

    .line 80
    new-array v1, v2, [Lcom/android/gallery3d/ui/dm;

    iput-object v1, p0, Lcom/android/gallery3d/ui/ap;->mL:[Lcom/android/gallery3d/ui/dm;

    .line 93
    iput v0, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    .line 103
    iput v2, p0, Lcom/android/gallery3d/ui/ap;->nc:I

    .line 489
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/ap;->nf:Z

    .line 112
    iput-object p1, p0, Lcom/android/gallery3d/ui/ap;->et:Lcom/android/gallery3d/app/bm;

    .line 113
    new-instance v1, Lcom/android/gallery3d/ui/en;

    invoke-direct {v1, p1}, Lcom/android/gallery3d/ui/en;-><init>(Lcom/android/gallery3d/app/bh;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/ap;->mV:Lcom/android/gallery3d/ui/en;

    .line 114
    iget-object v1, p0, Lcom/android/gallery3d/ui/ap;->mV:Lcom/android/gallery3d/ui/en;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/ap;->a(Lcom/android/gallery3d/ui/am;)V

    .line 115
    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v1

    .line 116
    new-instance v2, Lcom/android/gallery3d/ui/cx;

    invoke-direct {v2, v1}, Lcom/android/gallery3d/ui/cx;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/ap;->da:Lcom/android/gallery3d/ui/cx;

    .line 117
    iget-object v2, p0, Lcom/android/gallery3d/ui/ap;->da:Lcom/android/gallery3d/ui/cx;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/ap;->a(Lcom/android/gallery3d/ui/am;)V

    .line 118
    new-instance v2, Lcom/android/gallery3d/ui/dt;

    invoke-direct {v2, v1}, Lcom/android/gallery3d/ui/dt;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/ap;->na:Lcom/android/gallery3d/ui/dt;

    .line 119
    const v2, 0x7f0d0036

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/ui/e;->a(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/e;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/ap;->mS:Lcom/android/gallery3d/ui/e;

    .line 122
    const v2, 0x7f0d0038

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/ui/e;->a(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/e;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/ap;->mT:Lcom/android/gallery3d/ui/e;

    .line 126
    new-instance v2, Lcom/android/gallery3d/ui/er;

    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/ui/er;-><init>(Lcom/android/gallery3d/ui/ap;Lcom/android/gallery3d/ui/eh;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/ap;->nb:Lcom/android/gallery3d/ui/ag;

    .line 151
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/android/gallery3d/ui/dy;

    invoke-direct {v3, p0, v5}, Lcom/android/gallery3d/ui/dy;-><init>(Lcom/android/gallery3d/ui/ap;Lcom/android/gallery3d/ui/er;)V

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v5, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/ap;->mN:Landroid/view/GestureDetector;

    .line 153
    new-instance v2, Landroid/view/ScaleGestureDetector;

    new-instance v3, Lcom/android/gallery3d/ui/et;

    invoke-direct {v3, p0, v5}, Lcom/android/gallery3d/ui/et;-><init>(Lcom/android/gallery3d/ui/ap;Lcom/android/gallery3d/ui/er;)V

    invoke-direct {v2, v1, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/ap;->mM:Landroid/view/ScaleGestureDetector;

    .line 154
    new-instance v2, Lcom/android/gallery3d/ui/by;

    new-instance v3, Lcom/android/gallery3d/ui/dx;

    invoke-direct {v3, p0, v5}, Lcom/android/gallery3d/ui/dx;-><init>(Lcom/android/gallery3d/ui/ap;Lcom/android/gallery3d/ui/er;)V

    invoke-direct {v2, v3}, Lcom/android/gallery3d/ui/by;-><init>(Lcom/android/gallery3d/ui/ak;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/ap;->mO:Lcom/android/gallery3d/ui/by;

    .line 156
    iget-object v2, p0, Lcom/android/gallery3d/ui/ap;->mL:[Lcom/android/gallery3d/ui/dm;

    array-length v2, v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 157
    iget-object v3, p0, Lcom/android/gallery3d/ui/ap;->mL:[Lcom/android/gallery3d/ui/dm;

    new-instance v4, Lcom/android/gallery3d/ui/dm;

    invoke-direct {v4, p0, v5}, Lcom/android/gallery3d/ui/dm;-><init>(Lcom/android/gallery3d/ui/ap;Lcom/android/gallery3d/ui/er;)V

    aput-object v4, v3, v0

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    new-instance v0, Lcom/android/gallery3d/ui/n;

    iget-object v2, p0, Lcom/android/gallery3d/ui/ap;->da:Lcom/android/gallery3d/ui/cx;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/gallery3d/ui/n;-><init>(Lcom/android/gallery3d/ui/ap;Landroid/content/Context;Lcom/android/gallery3d/ui/cx;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ap;->mQ:Lcom/android/gallery3d/ui/n;

    .line 161
    new-instance v0, Lcom/android/gallery3d/ui/bm;

    const v2, 0x7f02001a

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/bm;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ap;->mW:Lcom/android/gallery3d/ui/ar;

    .line 162
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/ap;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    return p1
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/ap;Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/dd;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/gallery3d/ui/ap;->nd:Lcom/android/gallery3d/a/dd;

    return-object p1
.end method

.method private a(ILcom/android/gallery3d/ui/au;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 202
    iget v0, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mL:[Lcom/android/gallery3d/ui/dm;

    aget-object v0, v0, p1

    .line 208
    if-nez p2, :cond_2

    .line 209
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/gallery3d/ui/dm;->a(ZLandroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 211
    :cond_2
    const/4 v1, 0x1

    iget-object v2, p2, Lcom/android/gallery3d/ui/au;->bitmap:Landroid/graphics/Bitmap;

    iget v3, p2, Lcom/android/gallery3d/ui/au;->rotation:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/dm;->a(ZLandroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ap;->cS()V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/ap;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/ap;->nf:Z

    return p1
.end method

.method static synthetic b(Lcom/android/gallery3d/ui/ap;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/android/gallery3d/ui/ap;->nc:I

    return v0
.end method

.method private b(IIF)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mQ:Lcom/android/gallery3d/ui/n;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/n;->k()I

    move-result v0

    sub-int v1, v0, p1

    .line 178
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mQ:Lcom/android/gallery3d/ui/n;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/n;->j()I

    move-result v0

    sub-int v2, v0, p2

    .line 179
    iget-object v3, p0, Lcom/android/gallery3d/ui/ap;->mV:Lcom/android/gallery3d/ui/en;

    .line 180
    iget v0, p0, Lcom/android/gallery3d/ui/ap;->fB:I

    .line 182
    if-gez v0, :cond_0

    .line 183
    add-int/lit16 v0, v0, 0x168

    .line 186
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 191
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {v3, p1, p2, p3, v0}, Lcom/android/gallery3d/ui/en;->c(IIFI)Z

    move-result v0

    .line 190
    :goto_0
    return v0

    .line 188
    :sswitch_1
    const/16 v0, 0x5a

    invoke-virtual {v3, p2, v1, p3, v0}, Lcom/android/gallery3d/ui/en;->c(IIFI)Z

    move-result v0

    goto :goto_0

    .line 189
    :sswitch_2
    const/16 v0, 0xb4

    invoke-virtual {v3, v1, v2, p3, v0}, Lcom/android/gallery3d/ui/en;->c(IIFI)Z

    move-result v0

    goto :goto_0

    .line 190
    :sswitch_3
    const/16 v0, 0x10e

    invoke-virtual {v3, v2, p1, p3, v0}, Lcom/android/gallery3d/ui/en;->c(IIFI)Z

    move-result v0

    goto :goto_0

    .line 186
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private static c(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 749
    div-int/lit8 v0, p0, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/gallery3d/ui/ap;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    return v0
.end method

.method private cJ()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 257
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mR:Lcom/android/gallery3d/ui/cs;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/cs;->m()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mR:Lcom/android/gallery3d/ui/cs;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/cs;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->nb:Lcom/android/gallery3d/ui/ag;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ag;->removeMessages(I)V

    .line 259
    iput v1, p0, Lcom/android/gallery3d/ui/ap;->nc:I

    .line 269
    :cond_1
    :goto_0
    return-void

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mR:Lcom/android/gallery3d/ui/cs;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/cs;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->nb:Lcom/android/gallery3d/ui/ag;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ag;->removeMessages(I)V

    .line 262
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/ui/ap;->nc:I

    goto :goto_0

    .line 263
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/ui/ap;->nc:I

    if-eqz v0, :cond_1

    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/ap;->nc:I

    .line 265
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->nb:Lcom/android/gallery3d/ui/ag;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ag;->removeMessages(I)V

    .line 266
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->nb:Lcom/android/gallery3d/ui/ag;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ag;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private cL()V
    .locals 5

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ap;->getWidth()I

    move-result v0

    .line 333
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ap;->getHeight()I

    .line 337
    iget-object v1, p0, Lcom/android/gallery3d/ui/ap;->mQ:Lcom/android/gallery3d/ui/n;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/n;->ag()Landroid/graphics/RectF;

    move-result-object v1

    .line 338
    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 339
    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 340
    sub-int v3, v1, v2

    invoke-static {v3, v0}, Lcom/android/gallery3d/ui/ap;->p(II)I

    move-result v0

    .line 343
    iget-object v3, p0, Lcom/android/gallery3d/ui/ap;->mL:[Lcom/android/gallery3d/ui/dm;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 345
    invoke-virtual {v3}, Lcom/android/gallery3d/ui/dm;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 346
    invoke-virtual {v3}, Lcom/android/gallery3d/ui/dm;->fD()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    sub-int/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/ui/dm;->aP(I)V

    .line 351
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/ap;->mL:[Lcom/android/gallery3d/ui/dm;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 352
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/dm;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 353
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/dm;->fD()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/dm;->aQ(I)V

    .line 356
    :cond_1
    return-void
.end method

.method private cM()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 413
    iget v0, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 414
    iput v2, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    .line 415
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mQ:Lcom/android/gallery3d/ui/n;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/n;->stopAnimation()V

    .line 416
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ap;->cP()V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 418
    iput v2, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    .line 419
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mQ:Lcom/android/gallery3d/ui/n;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/n;->stopAnimation()V

    .line 420
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ap;->cQ()V

    goto :goto_0
.end method

.method private cP()V
    .locals 3

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mL:[Lcom/android/gallery3d/ui/dm;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 680
    iget-object v1, p0, Lcom/android/gallery3d/ui/ap;->mL:[Lcom/android/gallery3d/ui/dm;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 681
    iget-object v2, p0, Lcom/android/gallery3d/ui/ap;->mV:Lcom/android/gallery3d/ui/en;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/en;->gf()V

    .line 682
    invoke-static {v0}, Lcom/android/gallery3d/ui/dm;->c(Lcom/android/gallery3d/ui/dm;)Lcom/android/gallery3d/ui/df;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/android/gallery3d/ui/dm;->c(Lcom/android/gallery3d/ui/dm;)Lcom/android/gallery3d/ui/df;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/df;->recycle()V

    .line 683
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/ap;->mV:Lcom/android/gallery3d/ui/en;

    iget-object v2, v2, Lcom/android/gallery3d/ui/en;->HW:Lcom/android/gallery3d/ui/df;

    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/dm;->a(Lcom/android/gallery3d/ui/dm;Lcom/android/gallery3d/ui/df;)Lcom/android/gallery3d/ui/df;

    .line 684
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mV:Lcom/android/gallery3d/ui/en;

    invoke-static {v1}, Lcom/android/gallery3d/ui/dm;->c(Lcom/android/gallery3d/ui/dm;)Lcom/android/gallery3d/ui/df;

    move-result-object v2

    iput-object v2, v0, Lcom/android/gallery3d/ui/en;->HW:Lcom/android/gallery3d/ui/df;

    .line 685
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/dm;->a(Lcom/android/gallery3d/ui/dm;Lcom/android/gallery3d/ui/df;)Lcom/android/gallery3d/ui/df;

    .line 686
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mR:Lcom/android/gallery3d/ui/cs;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/cs;->g()V

    .line 687
    return-void
.end method

.method private cQ()V
    .locals 3

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mL:[Lcom/android/gallery3d/ui/dm;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 692
    iget-object v1, p0, Lcom/android/gallery3d/ui/ap;->mL:[Lcom/android/gallery3d/ui/dm;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 693
    iget-object v2, p0, Lcom/android/gallery3d/ui/ap;->mV:Lcom/android/gallery3d/ui/en;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/en;->gf()V

    .line 694
    invoke-static {v1}, Lcom/android/gallery3d/ui/dm;->c(Lcom/android/gallery3d/ui/dm;)Lcom/android/gallery3d/ui/df;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/gallery3d/ui/dm;->c(Lcom/android/gallery3d/ui/dm;)Lcom/android/gallery3d/ui/df;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/df;->recycle()V

    .line 695
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/ap;->mV:Lcom/android/gallery3d/ui/en;

    iget-object v2, v2, Lcom/android/gallery3d/ui/en;->HW:Lcom/android/gallery3d/ui/df;

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/dm;->a(Lcom/android/gallery3d/ui/dm;Lcom/android/gallery3d/ui/df;)Lcom/android/gallery3d/ui/df;

    .line 696
    iget-object v2, p0, Lcom/android/gallery3d/ui/ap;->mV:Lcom/android/gallery3d/ui/en;

    invoke-static {v0}, Lcom/android/gallery3d/ui/dm;->c(Lcom/android/gallery3d/ui/dm;)Lcom/android/gallery3d/ui/df;

    move-result-object v0

    iput-object v0, v2, Lcom/android/gallery3d/ui/en;->HW:Lcom/android/gallery3d/ui/df;

    .line 697
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/dm;->a(Lcom/android/gallery3d/ui/dm;Lcom/android/gallery3d/ui/df;)Lcom/android/gallery3d/ui/df;

    .line 698
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mR:Lcom/android/gallery3d/ui/cs;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/cs;->h()V

    .line 699
    return-void
.end method

.method private cS()V
    .locals 2

    .prologue
    .line 706
    iget v0, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    .line 707
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    .line 709
    iget-object v1, p0, Lcom/android/gallery3d/ui/ap;->mR:Lcom/android/gallery3d/ui/cs;

    if-nez v1, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 711
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ap;->cP()V

    goto :goto_0

    .line 712
    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 713
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ap;->cQ()V

    goto :goto_0
.end method

.method static synthetic d(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/ap;->c(III)I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/n;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mQ:Lcom/android/gallery3d/ui/n;

    return-object v0
.end method

.method static synthetic e(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/cs;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mR:Lcom/android/gallery3d/ui/cs;

    return-object v0
.end method

.method static synthetic f(Lcom/android/gallery3d/ui/ap;)[Lcom/android/gallery3d/ui/dm;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mL:[Lcom/android/gallery3d/ui/dm;

    return-object v0
.end method

.method static synthetic g(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/bi;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mP:Lcom/android/gallery3d/ui/bi;

    return-object v0
.end method

.method static synthetic h(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/cx;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->da:Lcom/android/gallery3d/ui/cx;

    return-object v0
.end method

.method static synthetic i(Lcom/android/gallery3d/ui/ap;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ap;->nf:Z

    return v0
.end method

.method static synthetic j(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/en;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mV:Lcom/android/gallery3d/ui/en;

    return-object v0
.end method

.method private static p(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 314
    const/4 v0, 0x0

    sub-int v1, p1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static synthetic q(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/android/gallery3d/ui/ap;->p(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/bi;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/gallery3d/ui/ap;->mP:Lcom/android/gallery3d/ui/bi;

    .line 174
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/cs;)V
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mR:Lcom/android/gallery3d/ui/cs;

    if-ne v0, p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/ui/ap;->mR:Lcom/android/gallery3d/ui/cs;

    .line 168
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mV:Lcom/android/gallery3d/ui/en;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/en;->a(Lcom/android/gallery3d/ui/aq;)V

    .line 169
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ap;->cO()V

    goto :goto_0
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mN:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 295
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mM:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 296
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mO:Lcom/android/gallery3d/ui/by;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/by;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public ad(I)V
    .locals 3
    .parameter

    .prologue
    .line 217
    packed-switch p1, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 219
    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/ui/ap;->mR:Lcom/android/gallery3d/ui/cs;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/cs;->e()Lcom/android/gallery3d/ui/au;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/ap;->a(ILcom/android/gallery3d/ui/au;)V

    .line 221
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ap;->cL()V

    .line 222
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ap;->invalidate()V

    goto :goto_0

    .line 226
    :pswitch_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/gallery3d/ui/ap;->mR:Lcom/android/gallery3d/ui/cs;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/cs;->f()Lcom/android/gallery3d/ui/au;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/ap;->a(ILcom/android/gallery3d/ui/au;)V

    .line 227
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ap;->cL()V

    .line 228
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ap;->invalidate()V

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mV:Lcom/android/gallery3d/ui/en;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/en;->cK()V

    .line 235
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mR:Lcom/android/gallery3d/ui/cs;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/cs;->l()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/ap;->fB:I

    .line 236
    iget v0, p0, Lcom/android/gallery3d/ui/ap;->fB:I

    div-int/lit8 v0, v0, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mQ:Lcom/android/gallery3d/ui/n;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ap;->mV:Lcom/android/gallery3d/ui/en;

    iget v1, v1, Lcom/android/gallery3d/ui/en;->fx:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/ap;->mV:Lcom/android/gallery3d/ui/en;

    iget v2, v2, Lcom/android/gallery3d/ui/en;->fy:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/n;->d(II)V

    .line 243
    :goto_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ap;->cJ()V

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mQ:Lcom/android/gallery3d/ui/n;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ap;->mV:Lcom/android/gallery3d/ui/en;

    iget v1, v1, Lcom/android/gallery3d/ui/en;->fy:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/ap;->mV:Lcom/android/gallery3d/ui/en;

    iget v2, v2, Lcom/android/gallery3d/ui/en;->fx:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/n;->d(II)V

    goto :goto_1

    .line 217
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public ae(I)Z
    .locals 1
    .parameter

    .prologue
    .line 637
    iget v0, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 639
    :goto_0
    return v0

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mR:Lcom/android/gallery3d/ui/cs;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/cs;->f(I)V

    .line 639
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(IIF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/ap;->b(IIF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ap;->cL()V

    .line 199
    :cond_0
    return-void
.end method

.method public c(Lcom/android/gallery3d/a/dd;)V
    .locals 0
    .parameter

    .prologue
    .line 882
    iput-object p1, p0, Lcom/android/gallery3d/ui/ap;->nd:Lcom/android/gallery3d/a/dd;

    .line 883
    return-void
.end method

.method protected c(Lcom/android/gallery3d/ui/b;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v7, 0x1

    .line 360
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mQ:Lcom/android/gallery3d/ui/n;

    .line 362
    iget v0, p0, Lcom/android/gallery3d/ui/ap;->nc:I

    if-ne v0, v1, :cond_0

    .line 363
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/am;->c(Lcom/android/gallery3d/ui/b;)V

    .line 366
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    if-eq v0, v7, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 369
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mL:[Lcom/android/gallery3d/ui/dm;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 370
    iget-object v1, p0, Lcom/android/gallery3d/ui/ap;->mL:[Lcom/android/gallery3d/ui/dm;

    aget-object v1, v1, v7

    .line 372
    invoke-static {v0}, Lcom/android/gallery3d/ui/dm;->a(Lcom/android/gallery3d/ui/dm;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/dm;->m(Lcom/android/gallery3d/ui/b;)V

    .line 373
    :cond_1
    invoke-static {v1}, Lcom/android/gallery3d/ui/dm;->a(Lcom/android/gallery3d/ui/dm;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/dm;->m(Lcom/android/gallery3d/ui/b;)V

    .line 382
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ap;->getWidth()I

    .line 383
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ap;->getHeight()I

    move-result v0

    .line 384
    iget-object v1, p0, Lcom/android/gallery3d/ui/ap;->mQ:Lcom/android/gallery3d/ui/n;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/n;->ag()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 385
    div-int/lit8 v3, v0, 0x2

    .line 386
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ap;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v4, v0, 0x6

    .line 388
    iget v0, p0, Lcom/android/gallery3d/ui/ap;->nc:I

    if-ne v0, v7, :cond_6

    .line 389
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mS:Lcom/android/gallery3d/ui/e;

    .line 390
    iget-object v2, p0, Lcom/android/gallery3d/ui/ap;->na:Lcom/android/gallery3d/ui/dt;

    .line 391
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/dt;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/dt;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v3, v6

    invoke-virtual {v2, p1, v5, v6}, Lcom/android/gallery3d/ui/dt;->b(Lcom/android/gallery3d/ui/b;II)V

    .line 392
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/e;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    div-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v0, p1, v2, v5}, Lcom/android/gallery3d/ui/e;->b(Lcom/android/gallery3d/ui/b;II)V

    .line 393
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ap;->invalidate()V

    .line 394
    const-string v0, "load_image_info_timeout"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ap;->mZ:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/gallery3d/ui/ap;->nc:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/gallery3d/ui/ap;->nc:I

    if-eq v0, v7, :cond_4

    .line 405
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mW:Lcom/android/gallery3d/ui/ar;

    div-int/lit8 v2, v4, 0x2

    sub-int v2, v1, v2

    div-int/lit8 v1, v4, 0x2

    sub-int/2addr v3, v1

    move-object v1, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/ar;->a(Lcom/android/gallery3d/ui/b;IIII)V

    .line 408
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mQ:Lcom/android/gallery3d/ui/n;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/n;->Z()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ap;->invalidate()V

    .line 409
    :cond_5
    return-void

    .line 395
    :cond_6
    iget v0, p0, Lcom/android/gallery3d/ui/ap;->nc:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 396
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mT:Lcom/android/gallery3d/ui/e;

    .line 397
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/e;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    div-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v0, p1, v2, v5}, Lcom/android/gallery3d/ui/e;->b(Lcom/android/gallery3d/ui/b;II)V

    .line 398
    const-string v0, "decode_file_failed"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cK()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 273
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mR:Lcom/android/gallery3d/ui/cs;

    if-nez v0, :cond_0

    .line 274
    invoke-direct {p0, v1, v3}, Lcom/android/gallery3d/ui/ap;->a(ILcom/android/gallery3d/ui/au;)V

    .line 275
    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/ui/ap;->a(ILcom/android/gallery3d/ui/au;)V

    .line 280
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ap;->cL()V

    .line 282
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mR:Lcom/android/gallery3d/ui/cs;

    if-nez v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mV:Lcom/android/gallery3d/ui/en;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/en;->cK()V

    .line 284
    iput v1, p0, Lcom/android/gallery3d/ui/ap;->fB:I

    .line 285
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mQ:Lcom/android/gallery3d/ui/n;

    invoke-virtual {v0, v1, v1}, Lcom/android/gallery3d/ui/n;->d(II)V

    .line 286
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ap;->cJ()V

    .line 290
    :goto_1
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mR:Lcom/android/gallery3d/ui/cs;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/cs;->e()Lcom/android/gallery3d/ui/au;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/ui/ap;->a(ILcom/android/gallery3d/ui/au;)V

    .line 278
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mR:Lcom/android/gallery3d/ui/cs;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/cs;->f()Lcom/android/gallery3d/ui/au;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/gallery3d/ui/ap;->a(ILcom/android/gallery3d/ui/au;)V

    goto :goto_0

    .line 288
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/ap;->ad(I)V

    goto :goto_1
.end method

.method public cN()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 461
    iget v2, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    if-eqz v2, :cond_1

    .line 486
    :cond_0
    :goto_0
    return v0

    .line 463
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/ap;->mL:[Lcom/android/gallery3d/ui/dm;

    aget-object v2, v2, v1

    .line 464
    iget-object v3, p0, Lcom/android/gallery3d/ui/ap;->mL:[Lcom/android/gallery3d/ui/dm;

    aget-object v3, v3, v0

    .line 466
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ap;->getWidth()I

    move-result v4

    .line 467
    iget-object v5, p0, Lcom/android/gallery3d/ui/ap;->mQ:Lcom/android/gallery3d/ui/n;

    .line 469
    invoke-virtual {v5}, Lcom/android/gallery3d/ui/n;->ag()Landroid/graphics/RectF;

    move-result-object v6

    .line 470
    iget v7, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 471
    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 472
    sub-int v8, v6, v7

    invoke-static {v8, v4}, Lcom/android/gallery3d/ui/ap;->p(II)I

    move-result v8

    add-int/lit16 v8, v8, 0xbe

    .line 475
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/dm;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    sub-int v6, v4, v6

    if-ge v8, v6, :cond_2

    .line 476
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    .line 477
    invoke-static {v2}, Lcom/android/gallery3d/ui/dm;->b(Lcom/android/gallery3d/ui/dm;)I

    move-result v0

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v5, v0}, Lcom/android/gallery3d/ui/n;->p(I)V

    move v0, v1

    .line 478
    goto :goto_0

    .line 480
    :cond_2
    invoke-virtual {v3}, Lcom/android/gallery3d/ui/dm;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ge v8, v7, :cond_0

    .line 481
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    .line 482
    invoke-static {v3}, Lcom/android/gallery3d/ui/dm;->b(Lcom/android/gallery3d/ui/dm;)I

    move-result v0

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v5, v0}, Lcom/android/gallery3d/ui/n;->p(I)V

    move v0, v1

    .line 483
    goto :goto_0
.end method

.method public cO()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 643
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mQ:Lcom/android/gallery3d/ui/n;

    invoke-virtual {v0, v1, v1}, Lcom/android/gallery3d/ui/n;->d(II)V

    .line 644
    return-void
.end method

.method public cR()V
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->nb:Lcom/android/gallery3d/ui/ag;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ag;->sendEmptyMessage(I)Z

    .line 703
    return-void
.end method

.method public cT()Lcom/android/gallery3d/ui/cq;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 891
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->nd:Lcom/android/gallery3d/a/dd;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->et:Lcom/android/gallery3d/app/bm;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ek;->a(Lcom/android/gallery3d/app/bm;)Lcom/android/gallery3d/ui/ek;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/ui/ap;->nd:Lcom/android/gallery3d/a/dd;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/ek;->a(Ljava/lang/Long;)Lcom/android/gallery3d/ui/cq;

    move-result-object v0

    .line 895
    iput-object v1, p0, Lcom/android/gallery3d/ui/ap;->nd:Lcom/android/gallery3d/a/dd;

    .line 898
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public cU()V
    .locals 1

    .prologue
    .line 902
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    .line 903
    return-void
.end method

.method public cV()Z
    .locals 1

    .prologue
    .line 906
    iget v0, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i(Z)V
    .locals 0
    .parameter

    .prologue
    .line 886
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/ap;->mZ:Z

    .line 887
    return-void
.end method

.method public i(F)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 425
    iget v2, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    if-eq v2, v8, :cond_1

    iget v2, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    if-eq v2, v9, :cond_1

    .line 457
    :cond_0
    :goto_0
    return v0

    .line 429
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/ap;->mL:[Lcom/android/gallery3d/ui/dm;

    aget-object v2, v2, v1

    .line 430
    iget-object v3, p0, Lcom/android/gallery3d/ui/ap;->mL:[Lcom/android/gallery3d/ui/dm;

    aget-object v3, v3, v0

    .line 432
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ap;->getWidth()I

    move-result v4

    .line 436
    iget-object v5, p0, Lcom/android/gallery3d/ui/ap;->mQ:Lcom/android/gallery3d/ui/n;

    .line 437
    invoke-virtual {v5}, Lcom/android/gallery3d/ui/n;->X()Z

    move-result v6

    .line 439
    const/high16 v7, -0x3c7e

    cmpg-float v7, p1, v7

    if-gez v7, :cond_3

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/n;->ai()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 441
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ap;->cM()V

    .line 442
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/dm;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 443
    iput v8, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    .line 444
    invoke-static {v2}, Lcom/android/gallery3d/ui/dm;->b(Lcom/android/gallery3d/ui/dm;)I

    move-result v0

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v5, v0}, Lcom/android/gallery3d/ui/n;->p(I)V

    move v0, v1

    .line 445
    goto :goto_0

    .line 447
    :cond_3
    const/high16 v2, 0x4382

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/n;->ah()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ap;->cM()V

    .line 450
    invoke-virtual {v3}, Lcom/android/gallery3d/ui/dm;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    iput v9, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    .line 452
    invoke-static {v3}, Lcom/android/gallery3d/ui/dm;->b(Lcom/android/gallery3d/ui/dm;)I

    move-result v0

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v5, v0}, Lcom/android/gallery3d/ui/n;->p(I)V

    move v0, v1

    .line 453
    goto :goto_0
.end method

.method public isDown()Z
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mO:Lcom/android/gallery3d/ui/by;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/by;->isDown()Z

    move-result v0

    return v0
.end method

.method public o(I)V
    .locals 2
    .parameter

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mQ:Lcom/android/gallery3d/ui/n;

    .line 648
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/n;->stopAnimation()V

    .line 649
    packed-switch p1, :pswitch_data_0

    .line 656
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :pswitch_0
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/n;->o(I)V

    .line 658
    return-void

    .line 649
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mV:Lcom/android/gallery3d/ui/en;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/gallery3d/ui/en;->layout(IIII)V

    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->da:Lcom/android/gallery3d/ui/cx;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/gallery3d/ui/cx;->layout(IIII)V

    .line 305
    if-eqz p1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mQ:Lcom/android/gallery3d/ui/n;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/n;->h(II)V

    .line 307
    iget-object v1, p0, Lcom/android/gallery3d/ui/ap;->mL:[Lcom/android/gallery3d/ui/dm;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 308
    invoke-virtual {v3}, Lcom/android/gallery3d/ui/dm;->fE()V

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 869
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mQ:Lcom/android/gallery3d/ui/n;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/n;->U()V

    .line 870
    iput v1, p0, Lcom/android/gallery3d/ui/ap;->mU:I

    .line 871
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mV:Lcom/android/gallery3d/ui/en;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/en;->gg()V

    .line 872
    iget-object v2, p0, Lcom/android/gallery3d/ui/ap;->mL:[Lcom/android/gallery3d/ui/dm;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 873
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v1}, Lcom/android/gallery3d/ui/dm;->a(ZLandroid/graphics/Bitmap;I)V

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 875
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/gallery3d/ui/ap;->mV:Lcom/android/gallery3d/ui/en;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/en;->gh()V

    .line 879
    return-void
.end method
