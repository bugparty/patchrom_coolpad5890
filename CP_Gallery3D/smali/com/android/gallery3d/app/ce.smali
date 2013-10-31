.class Lcom/android/gallery3d/app/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic o:Lcom/android/gallery3d/app/c;

.field xi:Lcom/android/gallery3d/app/be;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/c;Lcom/android/gallery3d/app/be;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 877
    iput-object p1, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 878
    iput-object p2, p0, Lcom/android/gallery3d/app/ce;->xi:Lcom/android/gallery3d/app/be;

    .line 879
    return-void
.end method

.method private eR()V
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->m(Lcom/android/gallery3d/app/c;)I

    move-result v0

    if-nez v0, :cond_0

    .line 933
    :goto_0
    return-void

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->j(Lcom/android/gallery3d/app/c;)I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v1}, Lcom/android/gallery3d/app/c;->m(Lcom/android/gallery3d/app/c;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 926
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    iget-object v1, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v1}, Lcom/android/gallery3d/app/c;->m(Lcom/android/gallery3d/app/c;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/c;->d(Lcom/android/gallery3d/app/c;I)I

    .line 927
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->d(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/ui/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ap;->cO()V

    .line 928
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->d(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/ui/ap;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ap;->o(I)V

    goto :goto_0

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->d(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/ui/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ap;->cO()V

    .line 931
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->d(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/ui/ap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ap;->o(I)V

    goto :goto_0
.end method


# virtual methods
.method public cI()Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 883
    iget-object v4, p0, Lcom/android/gallery3d/app/ce;->xi:Lcom/android/gallery3d/app/be;

    .line 884
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    iget-wide v2, v4, Lcom/android/gallery3d/app/be;->ko:J

    invoke-static {v0, v2, v3}, Lcom/android/gallery3d/app/c;->a(Lcom/android/gallery3d/app/c;J)J

    .line 886
    iget v0, v4, Lcom/android/gallery3d/app/be;->size:I

    iget-object v2, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v2}, Lcom/android/gallery3d/app/c;->m(Lcom/android/gallery3d/app/c;)I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 887
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    iget v2, v4, Lcom/android/gallery3d/app/be;->size:I

    invoke-static {v0, v2}, Lcom/android/gallery3d/app/c;->a(Lcom/android/gallery3d/app/c;I)I

    .line 888
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->h(Lcom/android/gallery3d/app/c;)I

    move-result v0

    iget-object v2, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v2}, Lcom/android/gallery3d/app/c;->m(Lcom/android/gallery3d/app/c;)I

    move-result v2

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    iget-object v2, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v2}, Lcom/android/gallery3d/app/c;->m(Lcom/android/gallery3d/app/c;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/gallery3d/app/c;->b(Lcom/android/gallery3d/app/c;I)I

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->n(Lcom/android/gallery3d/app/c;)I

    move-result v0

    iget-object v2, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v2}, Lcom/android/gallery3d/app/c;->m(Lcom/android/gallery3d/app/c;)I

    move-result v2

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    iget-object v2, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v2}, Lcom/android/gallery3d/app/c;->m(Lcom/android/gallery3d/app/c;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/gallery3d/app/c;->c(Lcom/android/gallery3d/app/c;I)I

    .line 892
    :cond_1
    iget v0, v4, Lcom/android/gallery3d/app/be;->iW:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 895
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/c;->a(Lcom/android/gallery3d/app/c;Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/dd;

    .line 896
    invoke-direct {p0}, Lcom/android/gallery3d/app/ce;->eR()V

    .line 901
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->o(Lcom/android/gallery3d/app/c;)V

    .line 903
    iget-object v0, v4, Lcom/android/gallery3d/app/be;->oo:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 904
    iget v0, v4, Lcom/android/gallery3d/app/be;->pO:I

    iget-object v2, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v2}, Lcom/android/gallery3d/app/c;->g(Lcom/android/gallery3d/app/c;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 905
    iget v2, v4, Lcom/android/gallery3d/app/be;->pO:I

    iget-object v3, v4, Lcom/android/gallery3d/app/be;->oo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v3}, Lcom/android/gallery3d/app/c;->h(Lcom/android/gallery3d/app/c;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 906
    rem-int/lit8 v2, v0, 0x20

    move v3, v2

    move v2, v0

    .line 907
    :goto_1
    if-ge v2, v5, :cond_4

    .line 908
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->i(Lcom/android/gallery3d/app/c;)[Lcom/android/gallery3d/a/ax;

    move-result-object v6

    iget-object v0, v4, Lcom/android/gallery3d/app/be;->oo:Ljava/util/ArrayList;

    iget v7, v4, Lcom/android/gallery3d/app/be;->pO:I

    sub-int v7, v2, v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    aput-object v0, v6, v3

    .line 909
    add-int/lit8 v0, v3, 0x1

    const/16 v3, 0x20

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    .line 907
    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_1

    .line 898
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    iget v2, v4, Lcom/android/gallery3d/app/be;->iW:I

    invoke-static {v0, v2}, Lcom/android/gallery3d/app/c;->d(Lcom/android/gallery3d/app/c;I)I

    goto :goto_0

    .line 912
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->k(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    if-nez v0, :cond_5

    .line 913
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->i(Lcom/android/gallery3d/app/c;)[Lcom/android/gallery3d/a/ax;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v2}, Lcom/android/gallery3d/app/c;->j(Lcom/android/gallery3d/app/c;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x20

    aget-object v0, v0, v2

    .line 914
    iget-object v2, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    if-nez v0, :cond_6

    move-object v0, v1

    :goto_2
    invoke-static {v2, v0}, Lcom/android/gallery3d/app/c;->a(Lcom/android/gallery3d/app/c;Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/dd;

    .line 916
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->p(Lcom/android/gallery3d/app/c;)V

    .line 917
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->q(Lcom/android/gallery3d/app/c;)V

    .line 918
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->r(Lcom/android/gallery3d/app/c;)V

    .line 919
    iget-object v0, p0, Lcom/android/gallery3d/app/ce;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->s(Lcom/android/gallery3d/app/c;)V

    .line 920
    return-object v1

    .line 914
    :cond_6
    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    goto :goto_2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 874
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ce;->cI()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
