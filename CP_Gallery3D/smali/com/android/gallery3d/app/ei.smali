.class Lcom/android/gallery3d/app/ei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/app/bv;


# static fields
.field private static final Iq:I = 0x20


# instance fields
.field private Ir:Ljava/util/ArrayList;

.field private Is:I

.field private final iC:Lcom/android/gallery3d/a/r;

.field private final ly:Z

.field private vI:J


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/r;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 349
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/ei;->Ir:Ljava/util/ArrayList;

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/ei;->Is:I

    .line 345
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/app/ei;->vI:J

    .line 350
    iput-object p1, p0, Lcom/android/gallery3d/app/ei;->iC:Lcom/android/gallery3d/a/r;

    .line 351
    iput-boolean p2, p0, Lcom/android/gallery3d/app/ei;->ly:Z

    .line 352
    return-void
.end method


# virtual methods
.method public Z(I)Lcom/android/gallery3d/a/ax;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 361
    iget v0, p0, Lcom/android/gallery3d/app/ei;->Is:I

    iget-object v2, p0, Lcom/android/gallery3d/app/ei;->Ir:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 363
    iget-boolean v2, p0, Lcom/android/gallery3d/app/ei;->ly:Z

    if-eqz v2, :cond_1

    .line 364
    iget-object v2, p0, Lcom/android/gallery3d/app/ei;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->aN()I

    move-result v2

    .line 365
    if-nez v2, :cond_0

    .line 374
    :goto_0
    return-object v1

    .line 366
    :cond_0
    rem-int/2addr p1, v2

    .line 368
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/app/ei;->Is:I

    if-lt p1, v2, :cond_2

    if-lt p1, v0, :cond_3

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/ei;->iC:Lcom/android/gallery3d/a/r;

    const/16 v2, 0x20

    invoke-virtual {v0, p1, v2}, Lcom/android/gallery3d/a/r;->j(II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ei;->Ir:Ljava/util/ArrayList;

    .line 370
    iput p1, p0, Lcom/android/gallery3d/app/ei;->Is:I

    .line 371
    iget-object v0, p0, Lcom/android/gallery3d/app/ei;->Ir:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p1

    .line 374
    :cond_3
    iget v2, p0, Lcom/android/gallery3d/app/ei;->Is:I

    if-lt p1, v2, :cond_4

    if-lt p1, v0, :cond_5

    :cond_4
    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/ei;->Ir:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/app/ei;->Is:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    goto :goto_1
.end method

.method public a(Lcom/android/gallery3d/a/an;)V
    .locals 1
    .parameter

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/gallery3d/app/ei;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/an;)V

    .line 390
    return-void
.end method

.method public aT()J
    .locals 4

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/gallery3d/app/ei;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aT()J

    move-result-wide v0

    .line 381
    iget-wide v2, p0, Lcom/android/gallery3d/app/ei;->vI:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 382
    iput-wide v0, p0, Lcom/android/gallery3d/app/ei;->vI:J

    .line 383
    iget-object v0, p0, Lcom/android/gallery3d/app/ei;->Ir:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 385
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/app/ei;->vI:J

    return-wide v0
.end method

.method public b(Lcom/android/gallery3d/a/an;)V
    .locals 1
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/gallery3d/app/ei;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/r;->b(Lcom/android/gallery3d/a/an;)V

    .line 394
    return-void
.end method

.method public c(Lcom/android/gallery3d/a/dd;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/gallery3d/app/ei;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/a/r;->b(Lcom/android/gallery3d/a/dd;I)I

    move-result v0

    return v0
.end method
