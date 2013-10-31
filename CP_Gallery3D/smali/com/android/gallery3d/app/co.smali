.class Lcom/android/gallery3d/app/co;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic bT:Lcom/android/gallery3d/app/dq;

.field private final zi:Lcom/android/gallery3d/app/am;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/dq;Lcom/android/gallery3d/app/am;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p2, p0, Lcom/android/gallery3d/app/co;->zi:Lcom/android/gallery3d/app/am;

    .line 277
    return-void
.end method


# virtual methods
.method public cI()Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 282
    iget-object v0, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v0}, Lcom/android/gallery3d/app/dq;->b(Lcom/android/gallery3d/app/dq;)Lcom/android/gallery3d/app/h;

    move-result-object v0

    if-nez v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-object v6

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/co;->zi:Lcom/android/gallery3d/app/am;

    .line 284
    iget-object v1, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    iget-wide v2, v0, Lcom/android/gallery3d/app/am;->ko:J

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/app/dq;->a(Lcom/android/gallery3d/app/dq;J)J

    .line 285
    iget-object v1, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v1}, Lcom/android/gallery3d/app/dq;->g(Lcom/android/gallery3d/app/dq;)I

    move-result v1

    iget v2, v0, Lcom/android/gallery3d/app/am;->size:I

    if-eq v1, v2, :cond_4

    .line 286
    iget-object v1, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    iget v2, v0, Lcom/android/gallery3d/app/am;->size:I

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/dq;->a(Lcom/android/gallery3d/app/dq;I)I

    .line 287
    iget-object v1, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v1}, Lcom/android/gallery3d/app/dq;->h(Lcom/android/gallery3d/app/dq;)Lcom/android/gallery3d/ui/dl;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v1}, Lcom/android/gallery3d/app/dq;->h(Lcom/android/gallery3d/app/dq;)Lcom/android/gallery3d/ui/dl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v2}, Lcom/android/gallery3d/app/dq;->g(Lcom/android/gallery3d/app/dq;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/dl;->T(I)V

    .line 288
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v1}, Lcom/android/gallery3d/app/dq;->e(Lcom/android/gallery3d/app/dq;)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v2}, Lcom/android/gallery3d/app/dq;->g(Lcom/android/gallery3d/app/dq;)I

    move-result v2

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    iget-object v2, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v2}, Lcom/android/gallery3d/app/dq;->g(Lcom/android/gallery3d/app/dq;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/dq;->b(Lcom/android/gallery3d/app/dq;I)I

    .line 289
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v1}, Lcom/android/gallery3d/app/dq;->i(Lcom/android/gallery3d/app/dq;)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v2}, Lcom/android/gallery3d/app/dq;->g(Lcom/android/gallery3d/app/dq;)I

    move-result v2

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    iget-object v2, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v2}, Lcom/android/gallery3d/app/dq;->g(Lcom/android/gallery3d/app/dq;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/dq;->c(Lcom/android/gallery3d/app/dq;I)I

    .line 292
    :cond_4
    iget v1, v0, Lcom/android/gallery3d/app/am;->index:I

    iget-object v2, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v2}, Lcom/android/gallery3d/app/dq;->d(Lcom/android/gallery3d/app/dq;)I

    move-result v2

    if-lt v1, v2, :cond_0

    iget v1, v0, Lcom/android/gallery3d/app/am;->index:I

    iget-object v2, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v2}, Lcom/android/gallery3d/app/dq;->e(Lcom/android/gallery3d/app/dq;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 293
    iget v1, v0, Lcom/android/gallery3d/app/am;->index:I

    iget-object v2, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v2}, Lcom/android/gallery3d/app/dq;->j(Lcom/android/gallery3d/app/dq;)[[Lcom/android/gallery3d/a/ax;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    .line 294
    iget-object v2, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v2}, Lcom/android/gallery3d/app/dq;->c(Lcom/android/gallery3d/app/dq;)[J

    move-result-object v2

    iget-wide v3, v0, Lcom/android/gallery3d/app/am;->ko:J

    aput-wide v3, v2, v1

    .line 295
    iget-object v2, v0, Lcom/android/gallery3d/app/am;->kp:Lcom/android/gallery3d/a/r;

    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->et()J

    move-result-wide v2

    .line 296
    iget-object v4, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v4}, Lcom/android/gallery3d/app/dq;->k(Lcom/android/gallery3d/app/dq;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    .line 297
    iget-object v4, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v4}, Lcom/android/gallery3d/app/dq;->k(Lcom/android/gallery3d/app/dq;)[J

    move-result-object v4

    aput-wide v2, v4, v1

    .line 298
    iget-object v2, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v2}, Lcom/android/gallery3d/app/dq;->l(Lcom/android/gallery3d/app/dq;)[Lcom/android/gallery3d/a/r;

    move-result-object v2

    iget-object v3, v0, Lcom/android/gallery3d/app/am;->kp:Lcom/android/gallery3d/a/r;

    aput-object v3, v2, v1

    .line 299
    iget-object v2, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v2}, Lcom/android/gallery3d/app/dq;->j(Lcom/android/gallery3d/app/dq;)[[Lcom/android/gallery3d/a/ax;

    move-result-object v2

    iget-object v3, v0, Lcom/android/gallery3d/app/am;->kq:[Lcom/android/gallery3d/a/ax;

    aput-object v3, v2, v1

    .line 300
    iget-object v1, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v1}, Lcom/android/gallery3d/app/dq;->h(Lcom/android/gallery3d/app/dq;)Lcom/android/gallery3d/ui/dl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/gallery3d/app/am;->index:I

    iget-object v2, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v2}, Lcom/android/gallery3d/app/dq;->m(Lcom/android/gallery3d/app/dq;)I

    move-result v2

    if-lt v1, v2, :cond_0

    iget v1, v0, Lcom/android/gallery3d/app/am;->index:I

    iget-object v2, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v2}, Lcom/android/gallery3d/app/dq;->i(Lcom/android/gallery3d/app/dq;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/gallery3d/app/co;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v1}, Lcom/android/gallery3d/app/dq;->h(Lcom/android/gallery3d/app/dq;)Lcom/android/gallery3d/ui/dl;

    move-result-object v1

    iget v0, v0, Lcom/android/gallery3d/app/am;->index:I

    invoke-interface {v1, v0}, Lcom/android/gallery3d/ui/dl;->Y(I)V

    goto/16 :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/gallery3d/app/co;->cI()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
