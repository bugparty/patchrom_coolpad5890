.class Lcom/android/gallery3d/app/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/app/bv;


# static fields
.field private static final lv:I = 0x5


# instance fields
.field private ad:J

.field private final iC:Lcom/android/gallery3d/a/r;

.field private final lw:Ljava/util/Random;

.field private lx:[I

.field private final ly:Z

.field private lz:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/r;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/aq;->lw:Ljava/util/Random;

    .line 278
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/gallery3d/app/aq;->lx:[I

    .line 280
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/app/aq;->ad:J

    .line 281
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/aq;->lz:I

    .line 284
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/r;

    iput-object v0, p0, Lcom/android/gallery3d/app/aq;->iC:Lcom/android/gallery3d/a/r;

    .line 285
    iput-boolean p2, p0, Lcom/android/gallery3d/app/aq;->ly:Z

    .line 286
    return-void
.end method

.method private aa(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lcom/android/gallery3d/app/aq;->lx:[I

    array-length v0, v0

    if-eq v0, p1, :cond_0

    .line 318
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/gallery3d/app/aq;->lx:[I

    move v0, v1

    .line 319
    :goto_0
    if-ge v0, p1, :cond_0

    .line 320
    iget-object v2, p0, Lcom/android/gallery3d/app/aq;->lx:[I

    aput v0, v2, v0

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_0
    add-int/lit8 v0, p1, -0x1

    :goto_1
    if-lez v0, :cond_1

    .line 324
    iget-object v2, p0, Lcom/android/gallery3d/app/aq;->lx:[I

    iget-object v3, p0, Lcom/android/gallery3d/app/aq;->lw:Ljava/util/Random;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/gallery3d/common/Utils;->swap([III)V

    .line 323
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/aq;->lx:[I

    aget v0, v0, v1

    iget v2, p0, Lcom/android/gallery3d/app/aq;->lz:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/android/gallery3d/app/aq;->lx:[I

    iget-object v2, p0, Lcom/android/gallery3d/app/aq;->lw:Ljava/util/Random;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->swap([III)V

    .line 329
    :cond_2
    return-void
.end method


# virtual methods
.method public Z(I)Lcom/android/gallery3d/a/ax;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 294
    iget-boolean v1, p0, Lcom/android/gallery3d/app/aq;->ly:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/aq;->lx:[I

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 303
    :cond_0
    return-object v0

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/aq;->lx:[I

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/gallery3d/app/aq;->lx:[I

    iget-object v1, p0, Lcom/android/gallery3d/app/aq;->lx:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/aq;->lz:I

    .line 297
    iget-object v0, p0, Lcom/android/gallery3d/app/aq;->iC:Lcom/android/gallery3d/a/r;

    iget v1, p0, Lcom/android/gallery3d/app/aq;->lz:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/dw;->c(Lcom/android/gallery3d/a/r;I)Lcom/android/gallery3d/a/ax;

    move-result-object v1

    .line 298
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 299
    const-string v0, "SlideshowPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to find image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/app/aq;->lz:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/gallery3d/app/bw;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/android/gallery3d/app/aq;->lw:Ljava/util/Random;

    iget-object v2, p0, Lcom/android/gallery3d/app/aq;->lx:[I

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/aq;->lz:I

    .line 301
    iget-object v0, p0, Lcom/android/gallery3d/app/aq;->iC:Lcom/android/gallery3d/a/r;

    iget v2, p0, Lcom/android/gallery3d/app/aq;->lz:I

    invoke-static {v0, v2}, Lcom/android/gallery3d/app/dw;->c(Lcom/android/gallery3d/a/r;I)Lcom/android/gallery3d/a/ax;

    move-result-object v2

    .line 298
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public a(Lcom/android/gallery3d/a/an;)V
    .locals 1
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/gallery3d/app/aq;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/an;)V

    .line 333
    return-void
.end method

.method public aT()J
    .locals 4

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/gallery3d/app/aq;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aT()J

    move-result-wide v0

    .line 308
    iget-wide v2, p0, Lcom/android/gallery3d/app/aq;->ad:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 309
    iput-wide v0, p0, Lcom/android/gallery3d/app/aq;->ad:J

    .line 310
    iget-object v2, p0, Lcom/android/gallery3d/app/aq;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->aR()I

    move-result v2

    .line 311
    iget-object v3, p0, Lcom/android/gallery3d/app/aq;->lx:[I

    array-length v3, v3

    if-eq v2, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/aq;->aa(I)V

    .line 313
    :cond_0
    return-wide v0
.end method

.method public b(Lcom/android/gallery3d/a/an;)V
    .locals 1
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/gallery3d/app/aq;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/r;->b(Lcom/android/gallery3d/a/an;)V

    .line 337
    return-void
.end method

.method public c(Lcom/android/gallery3d/a/dd;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 289
    return p2
.end method
