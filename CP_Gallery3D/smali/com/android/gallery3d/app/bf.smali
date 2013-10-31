.class Lcom/android/gallery3d/app/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic gD:Lcom/android/gallery3d/app/aj;

.field private final m:J


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/aj;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/gallery3d/app/bf;->gD:Lcom/android/gallery3d/app/aj;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-wide p2, p0, Lcom/android/gallery3d/app/bf;->m:J

    .line 229
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/gallery3d/app/bf;->dq()Lcom/android/gallery3d/app/ax;

    move-result-object v0

    return-object v0
.end method

.method public dq()Lcom/android/gallery3d/app/ax;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 232
    new-instance v1, Lcom/android/gallery3d/app/ax;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/app/ax;-><init>(Lcom/android/gallery3d/app/bx;)V

    .line 233
    iget-wide v3, p0, Lcom/android/gallery3d/app/bf;->m:J

    .line 234
    iget-object v2, p0, Lcom/android/gallery3d/app/bf;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v2}, Lcom/android/gallery3d/app/aj;->c(Lcom/android/gallery3d/app/aj;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/gallery3d/app/ax;->ko:J

    .line 235
    iget-object v2, p0, Lcom/android/gallery3d/app/bf;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v2}, Lcom/android/gallery3d/app/aj;->d(Lcom/android/gallery3d/app/aj;)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/app/ax;->size:I

    .line 236
    iget-object v2, p0, Lcom/android/gallery3d/app/bf;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v2}, Lcom/android/gallery3d/app/aj;->e(Lcom/android/gallery3d/app/aj;)[J

    move-result-object v5

    .line 237
    iget-object v2, p0, Lcom/android/gallery3d/app/bf;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v2}, Lcom/android/gallery3d/app/aj;->f(Lcom/android/gallery3d/app/aj;)I

    move-result v2

    iget-object v6, p0, Lcom/android/gallery3d/app/bf;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v6}, Lcom/android/gallery3d/app/aj;->g(Lcom/android/gallery3d/app/aj;)I

    move-result v6

    :goto_0
    if-ge v2, v6, :cond_1

    .line 238
    rem-int/lit16 v7, v2, 0x3e8

    .line 239
    aget-wide v7, v5, v7

    cmp-long v7, v7, v3

    if-eqz v7, :cond_0

    .line 240
    iput v2, v1, Lcom/android/gallery3d/app/ax;->om:I

    .line 241
    const/16 v0, 0x40

    sub-int v2, v6, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/android/gallery3d/app/ax;->on:I

    .line 245
    :goto_1
    return-object v1

    .line 237
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/bf;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v2}, Lcom/android/gallery3d/app/aj;->c(Lcom/android/gallery3d/app/aj;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/gallery3d/app/bf;->m:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method
