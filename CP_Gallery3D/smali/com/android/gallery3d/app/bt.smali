.class Lcom/android/gallery3d/app/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/bt;


# instance fields
.field final synthetic eb:Lcom/android/gallery3d/app/da;

.field private mIndex:I


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/da;)V
    .locals 0
    .parameter

    .prologue
    .line 748
    iput-object p1, p0, Lcom/android/gallery3d/app/bt;->eb:Lcom/android/gallery3d/app/da;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/da;Lcom/android/gallery3d/app/u;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 748
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/bt;-><init>(Lcom/android/gallery3d/app/da;)V

    return-void
.end method

.method private dZ()Lcom/android/gallery3d/a/ax;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 810
    iget-object v2, p0, Lcom/android/gallery3d/app/bt;->eb:Lcom/android/gallery3d/app/da;

    iget-object v2, v2, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/ev;->x(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 811
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 812
    iget-object v0, p0, Lcom/android/gallery3d/app/bt;->eb:Lcom/android/gallery3d/app/da;

    iget-object v0, v0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v3

    .line 813
    const-string v0, "AlbumPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter getSingleSelectedItem() path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/dd;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    return-object v0

    :cond_0
    move v0, v1

    .line 811
    goto :goto_0
.end method


# virtual methods
.method public H(I)I
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 761
    iget-object v0, p0, Lcom/android/gallery3d/app/bt;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v0}, Lcom/android/gallery3d/app/da;->j(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/app/aj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/aj;->L(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 762
    iput p1, p0, Lcom/android/gallery3d/app/bt;->mIndex:I

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/bt;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v0}, Lcom/android/gallery3d/app/da;->k(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aN()I

    move-result v4

    .line 771
    iget-object v0, p0, Lcom/android/gallery3d/app/bt;->eb:Lcom/android/gallery3d/app/da;

    iget-object v0, v0, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/ev;->x(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 772
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_4

    if-le v4, v3, :cond_4

    iget-object v1, p0, Lcom/android/gallery3d/app/bt;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v1}, Lcom/android/gallery3d/app/da;->l(Lcom/android/gallery3d/app/da;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 773
    iget-object v1, p0, Lcom/android/gallery3d/app/bt;->eb:Lcom/android/gallery3d/app/da;

    iget-object v1, v1, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v1

    .line 774
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/dd;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    .line 776
    iget v1, p0, Lcom/android/gallery3d/app/bt;->mIndex:I

    move v8, v1

    move v1, v3

    move v3, v8

    .line 777
    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    if-ge v3, v4, :cond_4

    iget-object v5, p0, Lcom/android/gallery3d/app/bt;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v5}, Lcom/android/gallery3d/app/da;->j(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/app/aj;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/app/aj;->L(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 779
    const-string v5, "AlbumPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/ui/y;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v5, p0, Lcom/android/gallery3d/app/bt;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v5}, Lcom/android/gallery3d/app/da;->j(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/app/aj;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/app/aj;->L(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 781
    iget-object v5, p0, Lcom/android/gallery3d/app/bt;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v5}, Lcom/android/gallery3d/app/da;->j(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/app/aj;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/app/aj;->K(I)Lcom/android/gallery3d/a/ax;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v5

    .line 782
    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 783
    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    .line 784
    iput v3, p0, Lcom/android/gallery3d/app/bt;->mIndex:I

    move v1, v2

    .line 787
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 788
    goto :goto_0

    .line 764
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/bt;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v0}, Lcom/android/gallery3d/app/da;->j(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/app/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/aj;->bC()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/bt;->mIndex:I

    .line 765
    iget-object v0, p0, Lcom/android/gallery3d/app/bt;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v0}, Lcom/android/gallery3d/app/da;->j(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/app/aj;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/app/bt;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/aj;->L(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    const/4 v0, -0x1

    .line 792
    :goto_1
    return v0

    :cond_4
    iget v0, p0, Lcom/android/gallery3d/app/bt;->mIndex:I

    goto :goto_1
.end method

.method public aq()Lcom/android/gallery3d/a/cw;
    .locals 3

    .prologue
    .line 796
    invoke-direct {p0}, Lcom/android/gallery3d/app/bt;->dZ()Lcom/android/gallery3d/a/ax;

    move-result-object v0

    .line 797
    if-eqz v0, :cond_0

    .line 798
    iget-object v1, p0, Lcom/android/gallery3d/app/bt;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v1}, Lcom/android/gallery3d/app/da;->m(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/ui/ca;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ca;->p(Lcom/android/gallery3d/a/dd;)V

    .line 799
    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->aq()Lcom/android/gallery3d/a/cw;

    move-result-object v0

    .line 801
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Lcom/android/gallery3d/app/bt;->mIndex:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/gallery3d/app/bt;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v0}, Lcom/android/gallery3d/app/da;->j(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/app/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/aj;->size()I

    move-result v0

    return v0
.end method
