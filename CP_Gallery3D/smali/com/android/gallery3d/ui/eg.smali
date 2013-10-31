.class Lcom/android/gallery3d/ui/eg;
.super Lcom/android/gallery3d/ui/cf;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/ab;
.implements Lcom/android/gallery3d/b/u;


# instance fields
.field private DR:Lcom/android/gallery3d/ui/ar;

.field private DS:Z

.field private DT:Z

.field private final el:I

.field private n:Lcom/android/gallery3d/b/l;

.field final synthetic sF:Lcom/android/gallery3d/ui/dc;

.field private final yD:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/dc;ILcom/android/gallery3d/a/ax;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    .line 289
    invoke-direct {p0, p3}, Lcom/android/gallery3d/ui/cf;-><init>(Lcom/android/gallery3d/a/ax;)V

    .line 290
    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/gallery3d/ui/eg;->yD:I

    .line 293
    iput p2, p0, Lcom/android/gallery3d/ui/eg;->el:I

    .line 294
    invoke-static {p3}, Lcom/android/gallery3d/b/y;->e(Lcom/android/gallery3d/a/ax;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/eg;->DS:Z

    .line 295
    invoke-static {p1}, Lcom/android/gallery3d/ui/dc;->a(Lcom/android/gallery3d/ui/dc;)Lcom/android/gallery3d/ui/cr;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/eg;->a(Lcom/android/gallery3d/ui/ar;)V

    .line 296
    return-void

    .line 290
    :cond_0
    invoke-virtual {p3}, Lcom/android/gallery3d/a/ax;->ao()I

    move-result v0

    goto :goto_0
.end method

.method private a(Lcom/android/gallery3d/ui/ar;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/gallery3d/ui/eg;->DR:Lcom/android/gallery3d/ui/ar;

    .line 321
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/eg;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/gallery3d/ui/eg;->fO()V

    return-void
.end method

.method private fO()V
    .locals 4

    .prologue
    .line 401
    iget-object v1, p0, Lcom/android/gallery3d/ui/eg;->n:Lcom/android/gallery3d/b/l;

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/eg;->n:Lcom/android/gallery3d/b/l;

    .line 403
    invoke-interface {v1}, Lcom/android/gallery3d/b/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 404
    invoke-interface {v1}, Lcom/android/gallery3d/b/l;->isCancelled()Z

    move-result v1

    .line 405
    iget-object v2, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    invoke-static {v2}, Lcom/android/gallery3d/ui/dc;->h(Lcom/android/gallery3d/ui/dc;)I

    move-result v2

    if-lez v2, :cond_1

    if-nez v0, :cond_0

    if-nez v1, :cond_1

    .line 406
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/cf;->li:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v2}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v2

    .line 407
    iget-object v3, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    invoke-static {v3}, Lcom/android/gallery3d/ui/dc;->i(Lcom/android/gallery3d/ui/dc;)Lcom/android/gallery3d/common/LruCache;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/gallery3d/common/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/ui/eg;->a(Landroid/graphics/Bitmap;Z)V

    .line 410
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/b;I)I
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 326
    iget-object v0, p0, Lcom/android/gallery3d/ui/eg;->DR:Lcom/android/gallery3d/ui/ar;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/ar;->getWidth()I

    move-result v0

    .line 327
    iget-object v1, p0, Lcom/android/gallery3d/ui/eg;->DR:Lcom/android/gallery3d/ui/ar;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/ar;->getHeight()I

    move-result v1

    .line 329
    iget v2, p0, Lcom/android/gallery3d/ui/av;->os:I

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 330
    iget v3, p0, Lcom/android/gallery3d/ui/av;->ot:I

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 331
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 333
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 334
    int-to-float v0, v1

    mul-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v4, v0

    .line 337
    if-nez p2, :cond_3

    .line 338
    const/4 v6, 0x0

    .line 339
    iget-object v0, p0, Lcom/android/gallery3d/ui/cf;->li:Lcom/android/gallery3d/a/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/cf;->li:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v6

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    invoke-static {v0}, Lcom/android/gallery3d/ui/dc;->f(Lcom/android/gallery3d/ui/dc;)Lcom/android/gallery3d/ui/u;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/ui/eg;->DR:Lcom/android/gallery3d/ui/ar;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/eg;->getRotation()I

    move-result v5

    iget v7, p0, Lcom/android/gallery3d/ui/eg;->yD:I

    iget-boolean v8, p0, Lcom/android/gallery3d/ui/eg;->DS:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/gallery3d/ui/u;->a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/ar;IIILcom/android/gallery3d/a/dd;IZ)V

    .line 342
    iget-object v0, p0, Lcom/android/gallery3d/ui/eg;->DR:Lcom/android/gallery3d/ui/ar;

    iget-object v1, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    invoke-static {v1}, Lcom/android/gallery3d/ui/dc;->a(Lcom/android/gallery3d/ui/dc;)Lcom/android/gallery3d/ui/cr;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 343
    iput-boolean v9, p0, Lcom/android/gallery3d/ui/eg;->DT:Z

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    invoke-static {v0}, Lcom/android/gallery3d/ui/dc;->g(Lcom/android/gallery3d/ui/dc;)I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/ui/eg;->el:I

    if-ne v0, v1, :cond_5

    move v1, v9

    .line 349
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/eg;->DR:Lcom/android/gallery3d/ui/ar;

    instance-of v0, v0, Lcom/android/gallery3d/ui/bv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/eg;->DR:Lcom/android/gallery3d/ui/ar;

    check-cast v0, Lcom/android/gallery3d/ui/bv;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bv;->dW()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    or-int/lit8 v1, v1, 0x2

    .line 357
    :cond_2
    :goto_1
    return v1

    .line 354
    :cond_3
    if-ne p2, v9, :cond_4

    .line 355
    iget-object v0, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    invoke-static {v0}, Lcom/android/gallery3d/ui/dc;->f(Lcom/android/gallery3d/ui/dc;)Lcom/android/gallery3d/ui/u;

    move-result-object v0

    invoke-virtual {v0, p1, v3, v4}, Lcom/android/gallery3d/ui/u;->a(Lcom/android/gallery3d/ui/b;II)V

    :cond_4
    move v1, v10

    .line 357
    goto :goto_1

    :cond_5
    move v1, v10

    goto :goto_0
.end method

.method public a(Lcom/android/gallery3d/b/j;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/gallery3d/ui/cf;->li:Lcom/android/gallery3d/a/ax;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/ax;->r(I)Lcom/android/gallery3d/b/ab;

    move-result-object v0

    .line 380
    invoke-interface {v0, p1}, Lcom/android/gallery3d/b/ab;->c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 381
    if-eqz v0, :cond_0

    .line 382
    iget-object v1, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    invoke-static {v1}, Lcom/android/gallery3d/ui/dc;->h(Lcom/android/gallery3d/ui/dc;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 385
    :cond_0
    return-object v0
.end method

.method public a(Lcom/android/gallery3d/b/l;)V
    .locals 3
    .parameter

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    invoke-static {v0}, Lcom/android/gallery3d/ui/dc;->k(Lcom/android/gallery3d/ui/dc;)Lcom/android/gallery3d/ui/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    invoke-static {v1}, Lcom/android/gallery3d/ui/dc;->k(Lcom/android/gallery3d/ui/dc;)Lcom/android/gallery3d/ui/ag;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/android/gallery3d/ui/ag;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ag;->sendMessage(Landroid/os/Message;)Z

    .line 398
    return-void
.end method

.method public bridge synthetic c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/eg;->a(Lcom/android/gallery3d/b/j;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public eL()V
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    invoke-static {v0}, Lcom/android/gallery3d/ui/dc;->h(Lcom/android/gallery3d/ui/dc;)I

    move-result v0

    if-lez v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/gallery3d/ui/cf;->li:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    invoke-static {v1}, Lcom/android/gallery3d/ui/dc;->i(Lcom/android/gallery3d/ui/dc;)Lcom/android/gallery3d/common/LruCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/common/LruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    invoke-static {v1}, Lcom/android/gallery3d/ui/dc;->i(Lcom/android/gallery3d/ui/dc;)Lcom/android/gallery3d/common/LruCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 366
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/ui/eg;->a(Landroid/graphics/Bitmap;Z)V

    .line 374
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    invoke-static {v0}, Lcom/android/gallery3d/ui/dc;->j(Lcom/android/gallery3d/ui/dc;)Lcom/android/gallery3d/b/z;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcom/android/gallery3d/b/z;->a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/eg;->n:Lcom/android/gallery3d/b/l;

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    invoke-static {v0}, Lcom/android/gallery3d/ui/dc;->j(Lcom/android/gallery3d/ui/dc;)Lcom/android/gallery3d/b/z;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/cf;->li:Lcom/android/gallery3d/a/ax;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/a/ax;->r(I)Lcom/android/gallery3d/b/ab;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/b/z;->a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/eg;->n:Lcom/android/gallery3d/b/l;

    goto :goto_0
.end method

.method public eM()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/gallery3d/ui/eg;->n:Lcom/android/gallery3d/b/l;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/gallery3d/ui/eg;->n:Lcom/android/gallery3d/b/l;

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 393
    :cond_0
    return-void
.end method

.method protected f(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 300
    iget-object v0, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    iget v1, p0, Lcom/android/gallery3d/ui/eg;->el:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/dc;->aC(I)Z

    move-result v0

    .line 301
    if-eqz v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    invoke-static {v1}, Lcom/android/gallery3d/ui/dc;->b(Lcom/android/gallery3d/ui/dc;)I

    .line 303
    iget-object v1, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    invoke-static {v1}, Lcom/android/gallery3d/ui/dc;->c(Lcom/android/gallery3d/ui/dc;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    invoke-static {v1}, Lcom/android/gallery3d/ui/dc;->d(Lcom/android/gallery3d/ui/dc;)V

    .line 305
    :cond_0
    if-eqz p1, :cond_1

    .line 306
    new-instance v1, Lcom/android/gallery3d/ui/df;

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/ui/df;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 307
    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/df;->h(Z)V

    .line 308
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/eg;->DT:Z

    if-eqz v2, :cond_2

    .line 309
    new-instance v2, Lcom/android/gallery3d/ui/bv;

    const v3, -0xddddde

    invoke-direct {v2, v3, v1}, Lcom/android/gallery3d/ui/bv;-><init>(ILcom/android/gallery3d/ui/ah;)V

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/eg;->a(Lcom/android/gallery3d/ui/ar;)V

    .line 313
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    invoke-static {v1}, Lcom/android/gallery3d/ui/dc;->e(Lcom/android/gallery3d/ui/dc;)Lcom/android/gallery3d/ui/de;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/gallery3d/ui/eg;->sF:Lcom/android/gallery3d/ui/dc;

    invoke-static {v0}, Lcom/android/gallery3d/ui/dc;->e(Lcom/android/gallery3d/ui/dc;)Lcom/android/gallery3d/ui/de;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/de;->bN()V

    .line 317
    :cond_1
    return-void

    .line 311
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/eg;->a(Lcom/android/gallery3d/ui/ar;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 414
    const-string v0, "AlbumDisplayItem[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/gallery3d/ui/eg;->el:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
