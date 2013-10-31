.class Lcom/android/gallery3d/app/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic bT:Lcom/android/gallery3d/app/dq;

.field private final m:J


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/dq;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/gallery3d/app/ap;->bT:Lcom/android/gallery3d/app/dq;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-wide p2, p0, Lcom/android/gallery3d/app/ap;->m:J

    .line 248
    return-void
.end method

.method private e(J)I
    .locals 6
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/gallery3d/app/ap;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v0}, Lcom/android/gallery3d/app/dq;->c(Lcom/android/gallery3d/app/dq;)[J

    move-result-object v1

    .line 252
    array-length v2, v1

    .line 253
    iget-object v0, p0, Lcom/android/gallery3d/app/ap;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v0}, Lcom/android/gallery3d/app/dq;->d(Lcom/android/gallery3d/app/dq;)I

    move-result v0

    iget-object v3, p0, Lcom/android/gallery3d/app/ap;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v3}, Lcom/android/gallery3d/app/dq;->e(Lcom/android/gallery3d/app/dq;)I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_1

    .line 254
    rem-int v4, v0, v2

    .line 255
    rem-int v4, v0, v2

    aget-wide v4, v1, v4

    cmp-long v4, v4, p1

    if-eqz v4, :cond_0

    .line 257
    :goto_1
    return v0

    .line 253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ap;->cv()Lcom/android/gallery3d/app/am;

    move-result-object v0

    return-object v0
.end method

.method public cv()Lcom/android/gallery3d/app/am;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 262
    iget-wide v1, p0, Lcom/android/gallery3d/app/ap;->m:J

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/app/ap;->e(J)I

    move-result v2

    .line 263
    const/4 v1, -0x1

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/ap;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v1}, Lcom/android/gallery3d/app/dq;->f(Lcom/android/gallery3d/app/dq;)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/gallery3d/app/ap;->m:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 268
    :goto_0
    return-object v0

    .line 264
    :cond_0
    new-instance v1, Lcom/android/gallery3d/app/am;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/app/am;-><init>(Lcom/android/gallery3d/app/af;)V

    .line 265
    iget-object v0, p0, Lcom/android/gallery3d/app/ap;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v0}, Lcom/android/gallery3d/app/dq;->f(Lcom/android/gallery3d/app/dq;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/gallery3d/app/am;->ko:J

    .line 266
    iput v2, v1, Lcom/android/gallery3d/app/am;->index:I

    .line 267
    iget-object v0, p0, Lcom/android/gallery3d/app/ap;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v0}, Lcom/android/gallery3d/app/dq;->g(Lcom/android/gallery3d/app/dq;)I

    move-result v0

    iput v0, v1, Lcom/android/gallery3d/app/am;->size:I

    move-object v0, v1

    .line 268
    goto :goto_0
.end method
