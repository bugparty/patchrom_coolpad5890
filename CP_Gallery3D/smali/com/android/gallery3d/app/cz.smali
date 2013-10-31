.class Lcom/android/gallery3d/app/cz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic o:Lcom/android/gallery3d/app/c;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/c;)V
    .locals 0
    .parameter

    .prologue
    .line 849
    iput-object p1, p0, Lcom/android/gallery3d/app/cz;->o:Lcom/android/gallery3d/app/c;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/c;Lcom/android/gallery3d/app/v;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 849
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/cz;-><init>(Lcom/android/gallery3d/app/c;)V

    return-void
.end method

.method private fo()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 852
    iget-object v1, p0, Lcom/android/gallery3d/app/cz;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v1}, Lcom/android/gallery3d/app/c;->g(Lcom/android/gallery3d/app/c;)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/app/cz;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v2}, Lcom/android/gallery3d/app/c;->h(Lcom/android/gallery3d/app/c;)I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 853
    iget-object v3, p0, Lcom/android/gallery3d/app/cz;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v3}, Lcom/android/gallery3d/app/c;->i(Lcom/android/gallery3d/app/c;)[Lcom/android/gallery3d/a/ax;

    move-result-object v3

    rem-int/lit8 v4, v1, 0x20

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    .line 856
    :cond_0
    :goto_1
    return v0

    .line 852
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 855
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/cz;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v1}, Lcom/android/gallery3d/app/c;->i(Lcom/android/gallery3d/app/c;)[Lcom/android/gallery3d/a/ax;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/cz;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v2}, Lcom/android/gallery3d/app/c;->j(Lcom/android/gallery3d/app/c;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x20

    aget-object v1, v1, v2

    .line 856
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/cz;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v2}, Lcom/android/gallery3d/app/c;->k(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/a/dd;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/android/gallery3d/app/cz;->fp()Lcom/android/gallery3d/app/be;

    move-result-object v0

    return-object v0
.end method

.method public fp()Lcom/android/gallery3d/app/be;
    .locals 3

    .prologue
    .line 862
    new-instance v0, Lcom/android/gallery3d/app/be;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/app/be;-><init>(Lcom/android/gallery3d/app/v;)V

    .line 863
    iget-object v1, p0, Lcom/android/gallery3d/app/cz;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v1}, Lcom/android/gallery3d/app/c;->l(Lcom/android/gallery3d/app/c;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/gallery3d/app/be;->ko:J

    .line 864
    invoke-direct {p0}, Lcom/android/gallery3d/app/cz;->fo()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/gallery3d/app/be;->pM:Z

    .line 865
    iget-object v1, p0, Lcom/android/gallery3d/app/cz;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v1}, Lcom/android/gallery3d/app/c;->k(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/a/dd;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/app/be;->pN:Lcom/android/gallery3d/a/dd;

    .line 866
    iget-object v1, p0, Lcom/android/gallery3d/app/cz;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v1}, Lcom/android/gallery3d/app/c;->j(Lcom/android/gallery3d/app/c;)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/app/be;->iW:I

    .line 867
    iget-object v1, p0, Lcom/android/gallery3d/app/cz;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v1}, Lcom/android/gallery3d/app/c;->g(Lcom/android/gallery3d/app/c;)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/app/be;->pO:I

    .line 868
    iget-object v1, p0, Lcom/android/gallery3d/app/cz;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v1}, Lcom/android/gallery3d/app/c;->h(Lcom/android/gallery3d/app/c;)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/app/be;->pP:I

    .line 869
    iget-object v1, p0, Lcom/android/gallery3d/app/cz;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v1}, Lcom/android/gallery3d/app/c;->m(Lcom/android/gallery3d/app/c;)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/app/be;->size:I

    .line 870
    return-object v0
.end method
