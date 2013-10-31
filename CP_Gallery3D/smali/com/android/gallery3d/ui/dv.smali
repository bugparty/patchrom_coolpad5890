.class Lcom/android/gallery3d/ui/dv;
.super Lcom/android/gallery3d/ui/cf;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/u;


# instance fields
.field private final DQ:I

.field private DR:Lcom/android/gallery3d/ui/ar;

.field private final DS:Z

.field private DT:Z

.field private final el:I

.field final synthetic en:Lcom/android/gallery3d/ui/dw;

.field private n:Lcom/android/gallery3d/b/l;

.field private final vI:J

.field private final yD:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/dw;IILcom/android/gallery3d/a/ax;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/gallery3d/ui/dv;->en:Lcom/android/gallery3d/ui/dw;

    .line 350
    invoke-direct {p0, p4}, Lcom/android/gallery3d/ui/cf;-><init>(Lcom/android/gallery3d/a/ax;)V

    .line 351
    iput p2, p0, Lcom/android/gallery3d/ui/dv;->el:I

    .line 352
    iput p3, p0, Lcom/android/gallery3d/ui/dv;->DQ:I

    .line 353
    invoke-virtual {p4}, Lcom/android/gallery3d/a/ax;->ao()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/dv;->yD:I

    .line 354
    invoke-virtual {p4}, Lcom/android/gallery3d/a/ax;->et()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/dv;->vI:J

    .line 355
    invoke-static {p4}, Lcom/android/gallery3d/b/y;->e(Lcom/android/gallery3d/a/ax;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/dv;->DS:Z

    .line 356
    invoke-static {p1}, Lcom/android/gallery3d/ui/dw;->a(Lcom/android/gallery3d/ui/dw;)Lcom/android/gallery3d/ui/cr;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/dv;->a(Lcom/android/gallery3d/ui/ar;)V

    .line 357
    return-void
.end method

.method private a(Lcom/android/gallery3d/ui/ar;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/gallery3d/ui/dv;->DR:Lcom/android/gallery3d/ui/ar;

    .line 379
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/dv;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/android/gallery3d/ui/dv;->fO()V

    return-void
.end method

.method static synthetic b(Lcom/android/gallery3d/ui/dv;)J
    .locals 2
    .parameter

    .prologue
    .line 338
    iget-wide v0, p0, Lcom/android/gallery3d/ui/dv;->vI:J

    return-wide v0
.end method

.method private fO()V
    .locals 2

    .prologue
    .line 442
    iget-object v1, p0, Lcom/android/gallery3d/ui/dv;->n:Lcom/android/gallery3d/b/l;

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/dv;->n:Lcom/android/gallery3d/b/l;

    .line 444
    invoke-interface {v1}, Lcom/android/gallery3d/b/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1}, Lcom/android/gallery3d/b/l;->isCancelled()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/ui/dv;->a(Landroid/graphics/Bitmap;Z)V

    .line 445
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/b;I)I
    .locals 14
    .parameter
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/gallery3d/ui/dv;->DR:Lcom/android/gallery3d/ui/ar;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/ar;->getWidth()I

    move-result v0

    .line 385
    iget-object v1, p0, Lcom/android/gallery3d/ui/dv;->DR:Lcom/android/gallery3d/ui/ar;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/ar;->getHeight()I

    move-result v1

    .line 387
    iget v2, p0, Lcom/android/gallery3d/ui/av;->os:I

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 388
    iget v3, p0, Lcom/android/gallery3d/ui/av;->ot:I

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 389
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 391
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 392
    int-to-float v0, v1

    mul-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v4, v0

    .line 395
    const/4 v7, 0x0

    .line 396
    const/4 v1, 0x0

    .line 397
    const/4 v0, 0x0

    .line 398
    iget-object v2, p0, Lcom/android/gallery3d/ui/dv;->en:Lcom/android/gallery3d/ui/dw;

    invoke-static {v2}, Lcom/android/gallery3d/ui/dw;->f(Lcom/android/gallery3d/ui/dw;)[Lcom/android/gallery3d/ui/k;

    move-result-object v2

    iget v5, p0, Lcom/android/gallery3d/ui/dv;->el:I

    iget-object v6, p0, Lcom/android/gallery3d/ui/dv;->en:Lcom/android/gallery3d/ui/dw;

    invoke-static {v6}, Lcom/android/gallery3d/ui/dw;->f(Lcom/android/gallery3d/ui/dw;)[Lcom/android/gallery3d/ui/k;

    move-result-object v6

    array-length v6, v6

    rem-int/2addr v5, v6

    aget-object v2, v2, v5

    .line 399
    iget-object v6, v2, Lcom/android/gallery3d/ui/k;->cj:Lcom/android/gallery3d/a/dd;

    .line 400
    iget v5, p0, Lcom/android/gallery3d/ui/dv;->DQ:I

    if-nez v5, :cond_4

    .line 401
    iget v7, v2, Lcom/android/gallery3d/ui/k;->ck:I

    .line 402
    iget v1, v2, Lcom/android/gallery3d/ui/k;->cl:I

    .line 403
    iget v0, v2, Lcom/android/gallery3d/ui/k;->cm:I

    move v12, v1

    move v1, v0

    .line 406
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/dv;->en:Lcom/android/gallery3d/ui/dw;

    invoke-static {v0}, Lcom/android/gallery3d/ui/dw;->h(Lcom/android/gallery3d/ui/dw;)Lcom/android/gallery3d/ui/u;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/ui/dv;->DR:Lcom/android/gallery3d/ui/ar;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/dv;->getRotation()I

    move-result v5

    iget v8, p0, Lcom/android/gallery3d/ui/dv;->yD:I

    iget-boolean v9, p0, Lcom/android/gallery3d/ui/dv;->DS:Z

    iget-object v10, p0, Lcom/android/gallery3d/ui/dv;->en:Lcom/android/gallery3d/ui/dw;

    invoke-static {v10}, Lcom/android/gallery3d/ui/dw;->g(Lcom/android/gallery3d/ui/dw;)Lcom/android/gallery3d/ui/di;

    move-result-object v10

    iget v10, v10, Lcom/android/gallery3d/ui/di;->AQ:I

    const/4 v11, 0x2

    if-ne v12, v11, :cond_1

    const/4 v11, 0x1

    :goto_1
    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    const/4 v12, 0x3

    if-eq v1, v12, :cond_2

    const/4 v12, 0x1

    :goto_2
    move-object v1, p1

    invoke-virtual/range {v0 .. v12}, Lcom/android/gallery3d/ui/u;->a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/ar;IIILcom/android/gallery3d/a/dd;IIZIZZ)V

    .line 413
    iget-object v0, p0, Lcom/android/gallery3d/ui/dv;->DR:Lcom/android/gallery3d/ui/ar;

    iget-object v1, p0, Lcom/android/gallery3d/ui/dv;->en:Lcom/android/gallery3d/ui/dw;

    invoke-static {v1}, Lcom/android/gallery3d/ui/dw;->a(Lcom/android/gallery3d/ui/dw;)Lcom/android/gallery3d/ui/cr;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/dv;->DT:Z

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/dv;->DR:Lcom/android/gallery3d/ui/ar;

    instance-of v0, v0, Lcom/android/gallery3d/ui/bv;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/ui/dv;->DR:Lcom/android/gallery3d/ui/ar;

    check-cast v0, Lcom/android/gallery3d/ui/bv;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bv;->dW()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 419
    const/4 v0, 0x2

    .line 421
    :goto_3
    return v0

    .line 406
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 421
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    move v12, v1

    move v1, v0

    goto :goto_0
.end method

.method public a(Lcom/android/gallery3d/b/l;)V
    .locals 3
    .parameter

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/gallery3d/ui/dv;->en:Lcom/android/gallery3d/ui/dw;

    invoke-static {v0}, Lcom/android/gallery3d/ui/dw;->j(Lcom/android/gallery3d/ui/dw;)Lcom/android/gallery3d/ui/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/dv;->en:Lcom/android/gallery3d/ui/dw;

    invoke-static {v1}, Lcom/android/gallery3d/ui/dw;->j(Lcom/android/gallery3d/ui/dw;)Lcom/android/gallery3d/ui/ag;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/android/gallery3d/ui/ag;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ag;->sendMessage(Landroid/os/Message;)Z

    .line 439
    return-void
.end method

.method public eL()V
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/gallery3d/ui/dv;->en:Lcom/android/gallery3d/ui/dw;

    invoke-static {v0}, Lcom/android/gallery3d/ui/dw;->i(Lcom/android/gallery3d/ui/dw;)Lcom/android/gallery3d/b/n;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/cf;->li:Lcom/android/gallery3d/a/ax;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/a/ax;->r(I)Lcom/android/gallery3d/b/ab;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/dv;->n:Lcom/android/gallery3d/b/l;

    .line 429
    return-void
.end method

.method public eM()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/gallery3d/ui/dv;->n:Lcom/android/gallery3d/b/l;

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 434
    return-void
.end method

.method protected f(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 361
    iget-object v0, p0, Lcom/android/gallery3d/ui/dv;->en:Lcom/android/gallery3d/ui/dw;

    iget v1, p0, Lcom/android/gallery3d/ui/dv;->el:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/dw;->aC(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/gallery3d/ui/dv;->en:Lcom/android/gallery3d/ui/dw;

    invoke-static {v0}, Lcom/android/gallery3d/ui/dw;->b(Lcom/android/gallery3d/ui/dw;)I

    .line 363
    iget-object v0, p0, Lcom/android/gallery3d/ui/dv;->en:Lcom/android/gallery3d/ui/dw;

    invoke-static {v0}, Lcom/android/gallery3d/ui/dw;->c(Lcom/android/gallery3d/ui/dw;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/dv;->en:Lcom/android/gallery3d/ui/dw;

    invoke-static {v0}, Lcom/android/gallery3d/ui/dw;->d(Lcom/android/gallery3d/ui/dw;)V

    .line 365
    :cond_0
    if-eqz p1, :cond_1

    .line 366
    new-instance v0, Lcom/android/gallery3d/ui/df;

    invoke-direct {v0, p1, v2}, Lcom/android/gallery3d/ui/df;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 367
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/df;->h(Z)V

    .line 368
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/dv;->DT:Z

    if-eqz v1, :cond_2

    .line 369
    new-instance v1, Lcom/android/gallery3d/ui/bv;

    const v2, -0xddddde

    invoke-direct {v1, v2, v0}, Lcom/android/gallery3d/ui/bv;-><init>(ILcom/android/gallery3d/ui/ah;)V

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/dv;->a(Lcom/android/gallery3d/ui/ar;)V

    .line 373
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/dv;->en:Lcom/android/gallery3d/ui/dw;

    invoke-static {v0}, Lcom/android/gallery3d/ui/dw;->e(Lcom/android/gallery3d/ui/dw;)Lcom/android/gallery3d/ui/af;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/dv;->en:Lcom/android/gallery3d/ui/dw;

    invoke-static {v0}, Lcom/android/gallery3d/ui/dw;->e(Lcom/android/gallery3d/ui/dw;)Lcom/android/gallery3d/ui/af;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/af;->bN()V

    .line 375
    :cond_1
    return-void

    .line 371
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/dv;->a(Lcom/android/gallery3d/ui/ar;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 449
    const-string v0, "GalleryDisplayItem(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/gallery3d/ui/dv;->el:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/gallery3d/ui/dv;->DQ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
