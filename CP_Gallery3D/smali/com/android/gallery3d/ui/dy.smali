.class Lcom/android/gallery3d/ui/dy;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic BN:Lcom/android/gallery3d/ui/ap;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/ap;Lcom/android/gallery3d/ui/er;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/dy;-><init>(Lcom/android/gallery3d/ui/ap;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x3fc0

    .line 580
    iget-object v0, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->c(Lcom/android/gallery3d/ui/ap;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    :goto_0
    return v9

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->d(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/n;

    move-result-object v2

    .line 582
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/n;->W()F

    move-result v3

    .line 585
    iget-object v0, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0, v9}, Lcom/android/gallery3d/ui/ap;->a(Lcom/android/gallery3d/ui/ap;Z)Z

    .line 587
    mul-float v0, v3, v8

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 588
    const/16 v0, 0x294

    .line 589
    float-to-double v4, v1

    const-wide/high16 v6, 0x3ff8

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_1

    .line 590
    mul-float v0, v3, v8

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v1, v0, v3

    .line 591
    mul-float v0, v1, v1

    const/high16 v4, 0x43a5

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 593
    :cond_1
    float-to-double v4, v1

    const-wide v6, 0x4004cccccccccccdL

    cmpl-double v1, v4, v6

    if-gtz v1, :cond_2

    float-to-double v4, v3

    const-wide/high16 v6, 0x4000

    cmpl-double v1, v4, v6

    if-gtz v1, :cond_2

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_3

    .line 594
    :cond_2
    const/16 v0, 0x168

    .line 596
    :cond_3
    const/high16 v1, 0x3f80

    cmpg-float v1, v3, v1

    if-lez v1, :cond_4

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/n;->X()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 597
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    mul-float/2addr v3, v8

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v2, v1, v4, v3, v0}, Lcom/android/gallery3d/ui/n;->a(FFFI)V

    goto :goto_0

    .line 600
    :cond_5
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/n;->T()V

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 568
    iget-object v0, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/ui/ap;->i(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/ap;->a(Lcom/android/gallery3d/ui/ap;Z)Z

    .line 575
    :cond_0
    :goto_0
    return v1

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->c(Lcom/android/gallery3d/ui/ap;)I

    move-result v0

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->d(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/n;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/gallery3d/ui/n;->e(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/ap;->a(Lcom/android/gallery3d/ui/ap;Z)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->c(Lcom/android/gallery3d/ui/ap;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 554
    :goto_0
    return v0

    .line 499
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 500
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 501
    const/4 v0, 0x0

    .line 502
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 503
    div-float v0, v2, v1

    .line 505
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v1}, Lcom/android/gallery3d/ui/ap;->d(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/n;

    move-result-object v5

    .line 506
    iget-object v1, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v1}, Lcom/android/gallery3d/ui/ap;->e(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/cs;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 507
    iget-object v1, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v1}, Lcom/android/gallery3d/ui/ap;->e(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/cs;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/cs;->p()Lcom/android/gallery3d/a/ax;

    move-result-object v1

    .line 508
    if-eqz v1, :cond_5

    .line 509
    invoke-virtual {v1}, Lcom/android/gallery3d/a/ax;->getSize()J

    move-result-wide v6

    .line 510
    instance-of v8, v1, Lcom/android/gallery3d/a/av;

    .line 511
    iget-object v1, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v1}, Lcom/android/gallery3d/ui/ap;->e(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/cs;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/cs;->p()Lcom/android/gallery3d/a/ax;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/a/ax;->getWidth()I

    move-result v2

    .line 512
    iget-object v1, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v1}, Lcom/android/gallery3d/ui/ap;->e(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/cs;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/cs;->p()Lcom/android/gallery3d/a/ax;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/a/ax;->getHeight()I

    move-result v1

    .line 513
    iget-object v3, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v3}, Lcom/android/gallery3d/ui/ap;->e(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/cs;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/ui/cs;->p()Lcom/android/gallery3d/a/ax;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/a/ax;->getRotation()I

    move-result v3

    .line 514
    div-int/lit8 v3, v3, 0x5a

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_6

    const/4 v3, 0x1

    move v4, v3

    .line 515
    :goto_1
    if-lez v2, :cond_2

    if-gtz v1, :cond_3

    :cond_2
    if-eqz v8, :cond_3

    const-wide/32 v8, 0x1312d00

    cmp-long v3, v6, v8

    if-gez v3, :cond_3

    .line 516
    iget-object v3, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v3}, Lcom/android/gallery3d/ui/ap;->e(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/cs;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/ui/cs;->p()Lcom/android/gallery3d/a/ax;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/a/ax;->dA()Ljava/lang/String;

    move-result-object v3

    .line 518
    if-eqz v3, :cond_3

    .line 519
    :try_start_0
    new-instance v6, Landroid/media/ExifInterface;

    invoke-direct {v6, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 520
    const-string v3, "ImageWidth"

    invoke-virtual {v6, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 521
    const-string v3, "ImageWidth"

    invoke-virtual {v6, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 527
    :cond_3
    :goto_2
    if-eqz v4, :cond_7

    iget-object v3, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/ap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/ap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 530
    :goto_3
    if-eqz v5, :cond_5

    .line 531
    invoke-virtual {v5}, Lcom/android/gallery3d/ui/n;->W()F

    move-result v2

    .line 532
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    int-to-float v1, v1

    .line 533
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3d4ccccd

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    .line 534
    const/4 p4, 0x0

    .line 536
    :cond_4
    const v2, 0x3e99999a

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d4ccccd

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    .line 537
    iget-object v0, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/ap;->a(Lcom/android/gallery3d/ui/ap;I)I

    .line 544
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->f(Lcom/android/gallery3d/ui/ap;)[Lcom/android/gallery3d/ui/dm;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 545
    iget-object v1, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v1}, Lcom/android/gallery3d/ui/ap;->f(Lcom/android/gallery3d/ui/ap;)[Lcom/android/gallery3d/ui/dm;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 547
    :try_start_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v2}, Lcom/android/gallery3d/ui/ap;->d(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/n;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/dm;->isEnabled()Z

    move-result v0

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/dm;->isEnabled()Z

    move-result v1

    invoke-virtual {v2, p3, p4, v0, v1}, Lcom/android/gallery3d/ui/n;->a(FFZZ)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 554
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 514
    :cond_6
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_1

    .line 523
    :catch_0
    move-exception v3

    move-object v10, v3

    move v3, v2

    move-object v2, v10

    .line 524
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move v2, v3

    goto :goto_2

    .line 527
    :cond_7
    iget-object v3, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/ap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/ap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_3

    .line 549
    :catch_1
    move-exception v0

    .line 550
    const-string v1, "PhotoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 551
    :catch_2
    move-exception v0

    .line 552
    const-string v1, "PhotoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->g(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/bi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/gallery3d/ui/dy;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->g(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/bi;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/bi;->v(II)V

    .line 562
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
