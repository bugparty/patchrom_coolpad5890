.class Lcom/android/gallery3d/ui/o;
.super Lcom/android/gallery3d/ui/av;
.source "SourceFile"


# static fields
.field private static final ef:I = -0x1

.field private static final eg:I = -0x7f000001


# instance fields
.field private eh:Lcom/android/gallery3d/ui/e;

.field private ei:Lcom/android/gallery3d/ui/e;

.field private ej:Ljava/lang/String;

.field private ek:I

.field private final el:I

.field private em:Z

.field final synthetic en:Lcom/android/gallery3d/ui/dw;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/dw;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/gallery3d/ui/o;->en:Lcom/android/gallery3d/ui/dw;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/av;-><init>()V

    .line 508
    iput p2, p0, Lcom/android/gallery3d/ui/o;->el:I

    .line 509
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/b;I)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 548
    iget v0, p0, Lcom/android/gallery3d/ui/av;->os:I

    iget v1, p0, Lcom/android/gallery3d/ui/o;->ek:I

    if-eq v0, v1, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/o;->ar()Z

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/o;->en:Lcom/android/gallery3d/ui/dw;

    invoke-static {v0}, Lcom/android/gallery3d/ui/dw;->g(Lcom/android/gallery3d/ui/dw;)Lcom/android/gallery3d/ui/di;

    move-result-object v0

    .line 553
    iget v1, p0, Lcom/android/gallery3d/ui/av;->os:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 554
    iget v2, p0, Lcom/android/gallery3d/ui/av;->ot:I

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Lcom/android/gallery3d/ui/di;->AQ:I

    sub-int/2addr v2, v3

    .line 555
    iget v3, v0, Lcom/android/gallery3d/ui/di;->AR:I

    add-int/2addr v2, v3

    .line 556
    iget-object v3, p0, Lcom/android/gallery3d/ui/o;->eh:Lcom/android/gallery3d/ui/e;

    iget v4, v0, Lcom/android/gallery3d/ui/di;->leftMargin:I

    add-int/2addr v4, v1

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/gallery3d/ui/e;->b(Lcom/android/gallery3d/ui/b;II)V

    .line 557
    iget v3, v0, Lcom/android/gallery3d/ui/di;->AT:I

    iget v4, v0, Lcom/android/gallery3d/ui/di;->AS:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 558
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/o;->em:Z

    if-eqz v3, :cond_1

    iget v0, v0, Lcom/android/gallery3d/ui/di;->AV:I

    :goto_0
    add-int/2addr v0, v1

    .line 559
    iget-object v1, p0, Lcom/android/gallery3d/ui/o;->ei:Lcom/android/gallery3d/ui/e;

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/gallery3d/ui/e;->b(Lcom/android/gallery3d/ui/b;II)V

    .line 560
    const/4 v0, 0x0

    return v0

    .line 558
    :cond_1
    iget v0, v0, Lcom/android/gallery3d/ui/di;->leftMargin:I

    goto :goto_0
.end method

.method public ar()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 512
    iget-object v0, p0, Lcom/android/gallery3d/ui/o;->en:Lcom/android/gallery3d/ui/dw;

    invoke-static {v0}, Lcom/android/gallery3d/ui/dw;->k(Lcom/android/gallery3d/ui/dw;)Ljava/lang/String;

    move-result-object v1

    .line 513
    const-string v0, ""

    .line 514
    iget-object v2, p0, Lcom/android/gallery3d/ui/o;->en:Lcom/android/gallery3d/ui/dw;

    invoke-static {v2}, Lcom/android/gallery3d/ui/dw;->l(Lcom/android/gallery3d/ui/dw;)Lcom/android/gallery3d/ui/br;

    move-result-object v2

    iget v5, p0, Lcom/android/gallery3d/ui/o;->el:I

    invoke-interface {v2, v5}, Lcom/android/gallery3d/ui/br;->as(I)Lcom/android/gallery3d/a/r;

    move-result-object v2

    .line 515
    if-eqz v2, :cond_0

    .line 516
    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->aR()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->aR()I

    move-result v5

    if-nez v5, :cond_0

    .line 520
    const-string v0, ""

    .line 524
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/ui/o;->mTitle:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/gallery3d/ui/o;->ej:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/gallery3d/ui/av;->os:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/android/gallery3d/ui/o;->ek:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 543
    :goto_0
    return v4

    .line 529
    :cond_1
    iput-object v1, p0, Lcom/android/gallery3d/ui/o;->mTitle:Ljava/lang/String;

    .line 530
    iput-object v0, p0, Lcom/android/gallery3d/ui/o;->ej:Ljava/lang/String;

    .line 531
    iget v5, p0, Lcom/android/gallery3d/ui/av;->os:I

    iput v5, p0, Lcom/android/gallery3d/ui/o;->ek:I

    .line 532
    invoke-static {v2}, Lcom/android/gallery3d/ui/dw;->f(Lcom/android/gallery3d/a/r;)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/o;->em:Z

    .line 535
    iget-object v2, p0, Lcom/android/gallery3d/ui/o;->en:Lcom/android/gallery3d/ui/dw;

    invoke-static {v2}, Lcom/android/gallery3d/ui/dw;->g(Lcom/android/gallery3d/ui/dw;)Lcom/android/gallery3d/ui/di;

    move-result-object v2

    .line 536
    iget v5, v2, Lcom/android/gallery3d/ui/di;->AT:I

    int-to-float v5, v5

    const/4 v6, -0x1

    iget v7, p0, Lcom/android/gallery3d/ui/av;->os:I

    iget v8, v2, Lcom/android/gallery3d/ui/di;->leftMargin:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-static {v1, v5, v6, v7, v4}, Lcom/android/gallery3d/ui/e;->a(Ljava/lang/String;FIFZ)Lcom/android/gallery3d/ui/e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/o;->eh:Lcom/android/gallery3d/ui/e;

    .line 539
    iget v1, v2, Lcom/android/gallery3d/ui/di;->AU:I

    int-to-float v1, v1

    const v4, -0x7f000001

    iget v5, p0, Lcom/android/gallery3d/ui/av;->os:I

    iget v2, v2, Lcom/android/gallery3d/ui/di;->leftMargin:I

    sub-int v2, v5, v2

    int-to-float v2, v2

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/gallery3d/ui/e;->a(Ljava/lang/String;FIFZ)Lcom/android/gallery3d/ui/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/o;->ei:Lcom/android/gallery3d/ui/e;

    move v4, v3

    .line 543
    goto :goto_0

    :cond_2
    move v2, v4

    .line 532
    goto :goto_1
.end method

.method public as()J
    .locals 2

    .prologue
    .line 565
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
