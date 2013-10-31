.class Lcom/android/gallery3d/app/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic gD:Lcom/android/gallery3d/app/aj;

.field private mq:Lcom/android/gallery3d/app/ax;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/aj;Lcom/android/gallery3d/app/ax;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p2, p0, Lcom/android/gallery3d/app/as;->mq:Lcom/android/gallery3d/app/ax;

    .line 255
    return-void
.end method


# virtual methods
.method public cI()Ljava/lang/Void;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 259
    iget-object v2, p0, Lcom/android/gallery3d/app/as;->mq:Lcom/android/gallery3d/app/ax;

    .line 260
    iget-object v0, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    iget-wide v3, v2, Lcom/android/gallery3d/app/ax;->ko:J

    invoke-static {v0, v3, v4}, Lcom/android/gallery3d/app/aj;->a(Lcom/android/gallery3d/app/aj;J)J

    .line 261
    iget-object v0, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v0}, Lcom/android/gallery3d/app/aj;->d(Lcom/android/gallery3d/app/aj;)I

    move-result v0

    iget v1, v2, Lcom/android/gallery3d/app/ax;->size:I

    if-eq v0, v1, :cond_2

    .line 262
    iget-object v0, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    iget v1, v2, Lcom/android/gallery3d/app/ax;->size:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/aj;->a(Lcom/android/gallery3d/app/aj;I)I

    .line 263
    iget-object v0, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v0}, Lcom/android/gallery3d/app/aj;->h(Lcom/android/gallery3d/app/aj;)Lcom/android/gallery3d/ui/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v0}, Lcom/android/gallery3d/app/aj;->h(Lcom/android/gallery3d/app/aj;)Lcom/android/gallery3d/ui/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v1}, Lcom/android/gallery3d/app/aj;->d(Lcom/android/gallery3d/app/aj;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/ai;->T(I)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v0}, Lcom/android/gallery3d/app/aj;->g(Lcom/android/gallery3d/app/aj;)I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v1}, Lcom/android/gallery3d/app/aj;->d(Lcom/android/gallery3d/app/aj;)I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    iget-object v1, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v1}, Lcom/android/gallery3d/app/aj;->d(Lcom/android/gallery3d/app/aj;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/aj;->b(Lcom/android/gallery3d/app/aj;I)I

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v0}, Lcom/android/gallery3d/app/aj;->i(Lcom/android/gallery3d/app/aj;)I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v1}, Lcom/android/gallery3d/app/aj;->d(Lcom/android/gallery3d/app/aj;)I

    move-result v1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    iget-object v1, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v1}, Lcom/android/gallery3d/app/aj;->d(Lcom/android/gallery3d/app/aj;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/aj;->c(Lcom/android/gallery3d/app/aj;I)I

    .line 268
    :cond_2
    iget-object v3, v2, Lcom/android/gallery3d/app/ax;->oo:Ljava/util/ArrayList;

    .line 270
    if-nez v3, :cond_4

    .line 290
    :cond_3
    return-object v10

    .line 271
    :cond_4
    iget v0, v2, Lcom/android/gallery3d/app/ax;->om:I

    iget-object v1, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v1}, Lcom/android/gallery3d/app/aj;->f(Lcom/android/gallery3d/app/aj;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 272
    iget v1, v2, Lcom/android/gallery3d/app/ax;->om:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v4}, Lcom/android/gallery3d/app/aj;->g(Lcom/android/gallery3d/app/aj;)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v1, v0

    .line 274
    :goto_0
    if-ge v1, v4, :cond_3

    .line 275
    rem-int/lit16 v5, v1, 0x3e8

    .line 276
    iget-object v0, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v0}, Lcom/android/gallery3d/app/aj;->e(Lcom/android/gallery3d/app/aj;)[J

    move-result-object v0

    iget-wide v6, v2, Lcom/android/gallery3d/app/ax;->ko:J

    aput-wide v6, v0, v5

    .line 277
    iget v0, v2, Lcom/android/gallery3d/app/ax;->om:I

    sub-int v0, v1, v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    .line 279
    if-eqz v0, :cond_5

    .line 280
    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->et()J

    move-result-wide v6

    .line 281
    iget-object v8, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v8}, Lcom/android/gallery3d/app/aj;->j(Lcom/android/gallery3d/app/aj;)[J

    move-result-object v8

    aget-wide v8, v8, v5

    cmp-long v8, v8, v6

    if-eqz v8, :cond_5

    .line 282
    iget-object v8, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v8}, Lcom/android/gallery3d/app/aj;->j(Lcom/android/gallery3d/app/aj;)[J

    move-result-object v8

    aput-wide v6, v8, v5

    .line 283
    iget-object v6, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v6}, Lcom/android/gallery3d/app/aj;->k(Lcom/android/gallery3d/app/aj;)[Lcom/android/gallery3d/a/ax;

    move-result-object v6

    aput-object v0, v6, v5

    .line 284
    iget-object v0, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v0}, Lcom/android/gallery3d/app/aj;->h(Lcom/android/gallery3d/app/aj;)Lcom/android/gallery3d/ui/ai;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v0}, Lcom/android/gallery3d/app/aj;->l(Lcom/android/gallery3d/app/aj;)I

    move-result v0

    if-lt v1, v0, :cond_5

    iget-object v0, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v0}, Lcom/android/gallery3d/app/aj;->i(Lcom/android/gallery3d/app/aj;)I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 285
    iget-object v0, p0, Lcom/android/gallery3d/app/as;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v0}, Lcom/android/gallery3d/app/aj;->h(Lcom/android/gallery3d/app/aj;)Lcom/android/gallery3d/ui/ai;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/ai;->Y(I)V

    .line 274
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/gallery3d/app/as;->cI()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
