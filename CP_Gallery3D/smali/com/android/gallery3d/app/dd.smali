.class public Lcom/android/gallery3d/app/dd;
.super Lcom/android/gallery3d/app/w;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/gallery3d/app/cf;
.implements Lcom/android/gallery3d/ui/ba;
.implements Lcom/android/gallery3d/ui/cg;


# static fields
.field private static final Bl:I = 0x1

.field private static final Bm:I = 0x2

.field private static final Bn:I = 0x2710

.field private static final J:I = 0x100

.field private static final TAG:Ljava/lang/String; = "ManageCachePage"

.field public static final it:Ljava/lang/String; = "media-path"

.field private static final uL:F = 0.3f


# instance fields
.field private Bo:I

.field private Bp:Landroid/view/View;

.field private Bq:Lcom/android/gallery3d/ui/ab;

.field private Br:Lcom/android/gallery3d/b/l;

.field private Bs:Z

.field private Bt:Lcom/android/gallery3d/b/ab;

.field private iA:Lcom/android/gallery3d/ui/ef;

.field private iB:Lcom/android/gallery3d/ui/eo;

.field private iC:Lcom/android/gallery3d/a/r;

.field protected iG:Lcom/android/gallery3d/ui/ev;

.field private iH:Lcom/android/gallery3d/app/dq;

.field private iR:Lcom/android/gallery3d/app/bz;

.field private iS:F

.field private iX:Lcom/android/gallery3d/ui/am;

.field private mHandler:Landroid/os/Handler;

.field private mX:F

.field private mY:F

.field protected pB:Lcom/android/gallery3d/ui/u;

.field private uO:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/app/w;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/dd;->Bs:Z

    .line 96
    new-instance v0, Lcom/android/gallery3d/app/dr;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/dr;-><init>(Lcom/android/gallery3d/app/dd;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/dd;->iX:Lcom/android/gallery3d/ui/am;

    .line 259
    new-instance v0, Lcom/android/gallery3d/app/du;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/du;-><init>(Lcom/android/gallery3d/app/dd;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/dd;->Bt:Lcom/android/gallery3d/b/ab;

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/dd;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/dd;->s(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/dd;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/gallery3d/app/dd;->Bs:Z

    return v0
.end method

.method static synthetic a(Lcom/android/gallery3d/app/dd;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/gallery3d/app/dd;->Bs:Z

    return p1
.end method

.method static synthetic b(Lcom/android/gallery3d/app/dd;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bG()V
    .locals 6

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 301
    new-instance v1, Lcom/android/gallery3d/ui/ev;

    iget-object v2, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ev;-><init>(Lcom/android/gallery3d/app/bh;Z)V

    iput-object v1, p0, Lcom/android/gallery3d/app/dd;->iG:Lcom/android/gallery3d/ui/ev;

    .line 302
    iget-object v1, p0, Lcom/android/gallery3d/app/dd;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/ui/ev;->a(Lcom/android/gallery3d/ui/ba;)V

    .line 303
    new-instance v1, Lcom/android/gallery3d/ui/ef;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/ui/ef;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/dd;->iA:Lcom/android/gallery3d/ui/ef;

    .line 304
    iget-object v1, p0, Lcom/android/gallery3d/app/dd;->iX:Lcom/android/gallery3d/ui/am;

    iget-object v2, p0, Lcom/android/gallery3d/app/dd;->iA:Lcom/android/gallery3d/ui/ef;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/am;->a(Lcom/android/gallery3d/ui/am;)V

    .line 306
    invoke-static {v0}, Lcom/android/gallery3d/app/d;->a(Landroid/content/Context;)Lcom/android/gallery3d/app/d;

    move-result-object v1

    .line 307
    new-instance v2, Lcom/android/gallery3d/ui/ae;

    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/content/Context;

    iget-object v3, p0, Lcom/android/gallery3d/app/dd;->iG:Lcom/android/gallery3d/ui/ev;

    iget v4, v1, Lcom/android/gallery3d/app/d;->aG:I

    iget v5, v1, Lcom/android/gallery3d/app/d;->aH:I

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/android/gallery3d/ui/ae;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/ev;II)V

    iput-object v2, p0, Lcom/android/gallery3d/app/dd;->pB:Lcom/android/gallery3d/ui/u;

    .line 309
    new-instance v0, Lcom/android/gallery3d/ui/eo;

    iget-object v2, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    iget-object v3, p0, Lcom/android/gallery3d/app/dd;->pB:Lcom/android/gallery3d/ui/u;

    iget-object v4, v1, Lcom/android/gallery3d/app/bi;->rq:Lcom/android/gallery3d/ui/du;

    iget-object v1, v1, Lcom/android/gallery3d/app/bi;->rr:Lcom/android/gallery3d/ui/di;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/gallery3d/ui/eo;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/u;Lcom/android/gallery3d/ui/du;Lcom/android/gallery3d/ui/di;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/dd;->iB:Lcom/android/gallery3d/ui/eo;

    .line 311
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iB:Lcom/android/gallery3d/ui/eo;

    new-instance v1, Lcom/android/gallery3d/app/dv;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/dv;-><init>(Lcom/android/gallery3d/app/dd;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/bw;)V

    .line 327
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iX:Lcom/android/gallery3d/ui/am;

    iget-object v1, p0, Lcom/android/gallery3d/app/dd;->iB:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/am;->a(Lcom/android/gallery3d/ui/am;)V

    .line 328
    invoke-direct {p0}, Lcom/android/gallery3d/app/dd;->fx()V

    .line 329
    return-void
.end method

.method static synthetic c(Lcom/android/gallery3d/app/dd;)Lcom/android/gallery3d/ui/ef;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iA:Lcom/android/gallery3d/ui/ef;

    return-object v0
.end method

.method static synthetic d(Lcom/android/gallery3d/app/dd;)Lcom/android/gallery3d/app/bz;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iR:Lcom/android/gallery3d/app/bz;

    return-object v0
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 284
    const v0, 0x3e99999a

    invoke-static {v0}, Lcom/android/gallery3d/b/y;->s(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/dd;->uO:F

    .line 285
    const-string v0, "media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/a/ao;->p(Ljava/lang/String;)Lcom/android/gallery3d/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/dd;->iC:Lcom/android/gallery3d/a/r;

    .line 287
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iG:Lcom/android/gallery3d/ui/ev;

    iget-object v1, p0, Lcom/android/gallery3d/app/dd;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ev;->g(Lcom/android/gallery3d/a/r;)V

    .line 290
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iG:Lcom/android/gallery3d/ui/ev;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ev;->w(Z)V

    .line 291
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->gq()V

    .line 293
    new-instance v0, Lcom/android/gallery3d/app/dq;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    iget-object v2, p0, Lcom/android/gallery3d/app/dd;->iC:Lcom/android/gallery3d/a/r;

    const/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/app/dq;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/a/r;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/dd;->iH:Lcom/android/gallery3d/app/dq;

    .line 295
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iB:Lcom/android/gallery3d/ui/eo;

    iget-object v1, p0, Lcom/android/gallery3d/app/dd;->iH:Lcom/android/gallery3d/app/dq;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/br;)V

    .line 296
    return-void
.end method

.method static synthetic e(Lcom/android/gallery3d/app/dd;)Lcom/android/gallery3d/ui/eo;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iB:Lcom/android/gallery3d/ui/eo;

    return-object v0
.end method

.method static synthetic f(Lcom/android/gallery3d/app/dd;)F
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery3d/app/dd;->mX:F

    return v0
.end method

.method private fA()V
    .locals 13

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->Bp:Landroid/view/View;

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 378
    iget-object v1, p0, Lcom/android/gallery3d/app/dd;->Bp:Landroid/view/View;

    const v2, 0x7f0a0011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 379
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 380
    iget-object v2, p0, Lcom/android/gallery3d/app/dd;->Bq:Lcom/android/gallery3d/ui/ab;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ab;->getTotalBytes()J

    move-result-wide v3

    .line 381
    iget-object v2, p0, Lcom/android/gallery3d/app/dd;->Bq:Lcom/android/gallery3d/ui/ab;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ab;->bu()J

    move-result-wide v5

    .line 382
    iget-object v2, p0, Lcom/android/gallery3d/app/dd;->Bq:Lcom/android/gallery3d/ui/ab;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ab;->bt()J

    move-result-wide v7

    .line 383
    iget-object v2, p0, Lcom/android/gallery3d/app/dd;->Bq:Lcom/android/gallery3d/ui/ab;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ab;->bv()J

    move-result-wide v9

    .line 385
    iget-object v2, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v2, Landroid/app/Activity;

    .line 386
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-nez v11, :cond_0

    .line 387
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 388
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 391
    const v0, 0x7f0d0093

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "-"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :goto_0
    return-void

    .line 394
    :cond_0
    const-wide/16 v11, 0x2710

    mul-long/2addr v5, v11

    div-long/2addr v5, v3

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 395
    const-wide/16 v5, 0x2710

    mul-long/2addr v5, v7

    div-long v3, v5, v3

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 397
    const v0, 0x7f0d0093

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private fx()V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 334
    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 335
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 336
    const v1, 0x7f04000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/dd;->Bp:Landroid/view/View;

    .line 338
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->Bp:Landroid/view/View;

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iA:Lcom/android/gallery3d/ui/ef;

    const v1, 0x7f020002

    const v2, 0x7f020003

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/ef;->E(II)V

    .line 340
    invoke-direct {p0}, Lcom/android/gallery3d/app/dd;->fA()V

    .line 341
    return-void
.end method

.method private fy()V
    .locals 4

    .prologue
    .line 360
    iget v0, p0, Lcom/android/gallery3d/app/dd;->Bo:I

    if-lez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 362
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0003

    iget v3, p0, Lcom/android/gallery3d/app/dd;->Bo:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 367
    :cond_0
    return-void
.end method

.method private fz()V
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 371
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 374
    return-void
.end method

.method static synthetic g(Lcom/android/gallery3d/app/dd;)F
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery3d/app/dd;->mY:F

    return v0
.end method

.method static synthetic h(Lcom/android/gallery3d/app/dd;)F
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery3d/app/dd;->iS:F

    return v0
.end method

.method static synthetic i(Lcom/android/gallery3d/app/dd;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/app/dd;->fA()V

    return-void
.end method

.method static synthetic j(Lcom/android/gallery3d/app/dd;)Lcom/android/gallery3d/ui/am;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iX:Lcom/android/gallery3d/ui/am;

    return-object v0
.end method

.method static synthetic k(Lcom/android/gallery3d/app/dd;)Lcom/android/gallery3d/ui/ab;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->Bq:Lcom/android/gallery3d/ui/ab;

    return-object v0
.end method

.method static synthetic l(Lcom/android/gallery3d/app/dd;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/app/dd;->onUp()V

    return-void
.end method

.method private onUp()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iG:Lcom/android/gallery3d/ui/ev;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ev;->n(Lcom/android/gallery3d/a/dd;)V

    .line 167
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iB:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eo;->invalidate()V

    .line 168
    return-void
.end method

.method private s(I)V
    .locals 2
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iH:Lcom/android/gallery3d/app/dq;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/dq;->as(I)Lcom/android/gallery3d/a/r;

    move-result-object v0

    .line 160
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 161
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/dd;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/ev;->n(Lcom/android/gallery3d/a/dd;)V

    .line 162
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iB:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eo;->invalidate()V

    .line 163
    return-void

    .line 160
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public R(I)V
    .locals 0
    .parameter

    .prologue
    .line 411
    return-void
.end method

.method public a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 208
    new-instance v0, Lcom/android/gallery3d/ui/ab;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ab;-><init>(Lcom/android/gallery3d/app/bm;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/dd;->Bq:Lcom/android/gallery3d/ui/ab;

    .line 209
    invoke-direct {p0}, Lcom/android/gallery3d/app/dd;->bG()V

    .line 210
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/dd;->d(Landroid/os/Bundle;)V

    .line 211
    new-instance v0, Lcom/android/gallery3d/app/bz;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/gallery3d/app/bz;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/cf;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/dd;->iR:Lcom/android/gallery3d/app/bz;

    .line 212
    new-instance v0, Lcom/android/gallery3d/app/ds;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/ds;-><init>(Lcom/android/gallery3d/app/dd;Lcom/android/gallery3d/ui/eh;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/dd;->mHandler:Landroid/os/Handler;

    .line 228
    return-void
.end method

.method public a(Lcom/android/gallery3d/a/dd;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 414
    return-void
.end method

.method public ax(I)V
    .locals 0
    .parameter

    .prologue
    .line 408
    return-void
.end method

.method public ay(I)V
    .locals 0
    .parameter

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/android/gallery3d/app/dd;->onBackPressed()V

    .line 405
    return-void
.end method

.method public b(FFF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iX:Lcom/android/gallery3d/ui/am;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/am;->cC()V

    .line 151
    iput p1, p0, Lcom/android/gallery3d/app/dd;->mX:F

    .line 152
    iput p2, p0, Lcom/android/gallery3d/app/dd;->mY:F

    .line 153
    iput p3, p0, Lcom/android/gallery3d/app/dd;->iS:F

    .line 154
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iX:Lcom/android/gallery3d/ui/am;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/am;->cD()V

    .line 155
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iX:Lcom/android/gallery3d/ui/am;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/am;->invalidate()V

    .line 156
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0a0013

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ev;->x(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/android/gallery3d/app/dd;->onBackPressed()V

    .line 357
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 345
    goto :goto_0

    .line 352
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/dd;->fy()V

    .line 354
    new-instance v0, Lcom/android/gallery3d/ui/bk;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    iget-object v2, p0, Lcom/android/gallery3d/app/dd;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/bk;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/ev;)V

    .line 355
    const/high16 v1, 0x7f0a

    const v2, 0x7f0d0058

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/gallery3d/ui/bk;->a(IILcom/android/gallery3d/ui/cg;)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/gallery3d/app/dd;->fx()V

    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 235
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 236
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 237
    iget-object v1, p0, Lcom/android/gallery3d/app/dd;->Bp:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 239
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0}, Lcom/android/gallery3d/app/w;->onPause()V

    .line 244
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iH:Lcom/android/gallery3d/app/dq;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/dq;->pause()V

    .line 245
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iB:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eo;->pause()V

    .line 246
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iR:Lcom/android/gallery3d/app/bz;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/bz;->pause()V

    .line 248
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->Br:Lcom/android/gallery3d/b/l;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->Br:Lcom/android/gallery3d/b/l;

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/dd;->Br:Lcom/android/gallery3d/b/l;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 255
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 256
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 257
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Lcom/android/gallery3d/app/w;->onResume()V

    .line 273
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iX:Lcom/android/gallery3d/ui/am;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/dd;->setContentPane(Lcom/android/gallery3d/ui/am;)V

    .line 274
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iH:Lcom/android/gallery3d/app/dq;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/dq;->resume()V

    .line 275
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iB:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eo;->resume()V

    .line 276
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iR:Lcom/android/gallery3d/app/bz;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/bz;->resume()V

    .line 277
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dw()Lcom/android/gallery3d/b/n;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/dd;->Bt:Lcom/android/gallery3d/b/ab;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/dd;->Br:Lcom/android/gallery3d/b/l;

    .line 278
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 279
    iget-object v1, p0, Lcom/android/gallery3d/app/dd;->Bp:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 280
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 281
    return-void
.end method

.method public t(I)V
    .locals 6
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iH:Lcom/android/gallery3d/app/dq;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/dq;->as(I)Lcom/android/gallery3d/a/r;

    move-result-object v1

    .line 172
    if-nez v1, :cond_0

    .line 204
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {v1}, Lcom/android/gallery3d/a/r;->am()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/android/gallery3d/app/dd;->fz()V

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {v1}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v3

    .line 183
    invoke-virtual {v1}, Lcom/android/gallery3d/a/r;->eu()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    .line 185
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/app/dd;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/ev;->t(Lcom/android/gallery3d/a/dd;)Z

    move-result v4

    .line 187
    if-nez v0, :cond_2

    .line 190
    if-eqz v4, :cond_4

    .line 191
    iget v2, p0, Lcom/android/gallery3d/app/dd;->Bo:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/gallery3d/app/dd;->Bo:I

    .line 197
    :cond_2
    :goto_2
    invoke-virtual {v1}, Lcom/android/gallery3d/a/r;->ew()J

    move-result-wide v1

    .line 198
    iget-object v5, p0, Lcom/android/gallery3d/app/dd;->Bq:Lcom/android/gallery3d/ui/ab;

    xor-int/2addr v0, v4

    if-eqz v0, :cond_5

    neg-long v0, v1

    :goto_3
    invoke-virtual {v5, v0, v1}, Lcom/android/gallery3d/ui/ab;->d(J)V

    .line 200
    invoke-direct {p0}, Lcom/android/gallery3d/app/dd;->fA()V

    .line 202
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/ev;->u(Lcom/android/gallery3d/a/dd;)V

    .line 203
    iget-object v0, p0, Lcom/android/gallery3d/app/dd;->iB:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eo;->invalidate()V

    goto :goto_0

    .line 183
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 193
    :cond_4
    iget v2, p0, Lcom/android/gallery3d/app/dd;->Bo:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/app/dd;->Bo:I

    goto :goto_2

    :cond_5
    move-wide v0, v1

    .line 198
    goto :goto_3
.end method
