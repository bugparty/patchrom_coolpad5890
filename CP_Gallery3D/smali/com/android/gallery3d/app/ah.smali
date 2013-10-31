.class Lcom/android/gallery3d/app/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/bt;


# instance fields
.field final synthetic bU:Lcom/android/gallery3d/app/ak;

.field private mIndex:I


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/android/gallery3d/app/ah;->bU:Lcom/android/gallery3d/app/ak;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/ak;Lcom/android/gallery3d/app/bl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 799
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/ah;-><init>(Lcom/android/gallery3d/app/ak;)V

    return-void
.end method


# virtual methods
.method public H(I)I
    .locals 2
    .parameter

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/gallery3d/app/ah;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v0}, Lcom/android/gallery3d/app/ak;->m(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/app/dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/dq;->L(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    iput p1, p0, Lcom/android/gallery3d/app/ah;->mIndex:I

    .line 820
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/ah;->mIndex:I

    :goto_0
    return v0

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ah;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v0}, Lcom/android/gallery3d/app/ak;->m(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/app/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/dq;->bC()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/ah;->mIndex:I

    .line 816
    iget-object v0, p0, Lcom/android/gallery3d/app/ah;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v0}, Lcom/android/gallery3d/app/ak;->m(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/app/dq;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/app/ah;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/dq;->L(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public aq()Lcom/android/gallery3d/a/cw;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 825
    iget-object v0, p0, Lcom/android/gallery3d/app/ah;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v0}, Lcom/android/gallery3d/app/ak;->m(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/app/dq;

    move-result-object v0

    iget v2, p0, Lcom/android/gallery3d/app/ah;->mIndex:I

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/dq;->as(I)Lcom/android/gallery3d/a/r;

    move-result-object v0

    .line 826
    iget-object v2, p0, Lcom/android/gallery3d/app/ah;->bU:Lcom/android/gallery3d/app/ak;

    iget-object v2, v2, Lcom/android/gallery3d/app/ak;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ev;->gu()Ljava/util/Set;

    move-result-object v2

    .line 827
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    .line 828
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    if-nez v3, :cond_4

    .line 829
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/dd;

    .line 830
    if-eqz v0, :cond_3

    .line 831
    iget-object v2, p0, Lcom/android/gallery3d/app/ah;->bU:Lcom/android/gallery3d/app/ak;

    iget-object v2, v2, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v2}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/a/ao;->g(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/r;

    move-result-object v3

    .line 832
    iget-object v2, p0, Lcom/android/gallery3d/app/ah;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v2}, Lcom/android/gallery3d/app/ak;->n(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/a/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->aP()I

    move-result v4

    .line 833
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    .line 834
    iget-object v5, p0, Lcom/android/gallery3d/app/ah;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v5}, Lcom/android/gallery3d/app/ak;->n(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/a/r;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/gallery3d/a/r;->A(I)Lcom/android/gallery3d/a/r;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v5

    .line 835
    invoke-virtual {v0}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 836
    if-eqz v5, :cond_0

    .line 837
    iget-object v5, p0, Lcom/android/gallery3d/app/ah;->bU:Lcom/android/gallery3d/app/ak;

    iput v2, v5, Lcom/android/gallery3d/app/ak;->iW:I

    .line 833
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 841
    :cond_1
    if-eqz v3, :cond_2

    .line 842
    iget-object v0, p0, Lcom/android/gallery3d/app/ah;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v0}, Lcom/android/gallery3d/app/ak;->o(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/ui/ca;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ca;->p(Lcom/android/gallery3d/a/dd;)V

    .line 843
    invoke-virtual {v3}, Lcom/android/gallery3d/a/r;->aq()Lcom/android/gallery3d/a/cw;

    move-result-object v0

    .line 844
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/gallery3d/app/ah;->bU:Lcom/android/gallery3d/app/ak;

    iget v2, v2, Lcom/android/gallery3d/app/ak;->iW:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 857
    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    .line 847
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 850
    goto :goto_1

    .line 852
    :cond_4
    if-eqz v0, :cond_5

    .line 853
    iget-object v1, p0, Lcom/android/gallery3d/app/ah;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v1}, Lcom/android/gallery3d/app/ak;->o(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/ui/ca;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ca;->p(Lcom/android/gallery3d/a/dd;)V

    .line 854
    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aq()Lcom/android/gallery3d/a/cw;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 857
    goto :goto_1
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 806
    iget v0, p0, Lcom/android/gallery3d/app/ah;->mIndex:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/gallery3d/app/ah;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v0}, Lcom/android/gallery3d/app/ak;->m(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/app/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/dq;->size()I

    move-result v0

    return v0
.end method
