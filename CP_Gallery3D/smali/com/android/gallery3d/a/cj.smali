.class public Lcom/android/gallery3d/a/cj;
.super Lcom/android/gallery3d/a/r;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/an;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClusterAlbumSet"


# instance fields
.field private Gq:Z

.field private fC:I

.field private i:Lcom/android/gallery3d/app/cl;

.field private jr:Lcom/android/gallery3d/a/r;

.field private ju:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;Lcom/android/gallery3d/a/r;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/a/r;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/cj;->ju:Ljava/util/ArrayList;

    .line 38
    iput-object p2, p0, Lcom/android/gallery3d/a/cj;->i:Lcom/android/gallery3d/app/cl;

    .line 39
    iput-object p3, p0, Lcom/android/gallery3d/a/cj;->jr:Lcom/android/gallery3d/a/r;

    .line 40
    iput p4, p0, Lcom/android/gallery3d/a/cj;->fC:I

    .line 41
    invoke-virtual {p3, p0}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/an;)V

    .line 42
    return-void
.end method

.method private bU()V
    .locals 8

    .prologue
    .line 126
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/a/cj;->jr:Lcom/android/gallery3d/a/r;

    new-instance v1, Lcom/android/gallery3d/a/x;

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/a/x;-><init>(Lcom/android/gallery3d/a/cj;Ljava/util/HashSet;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/r;->b(Lcom/android/gallery3d/a/bu;)V

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/a/cj;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 139
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/a/cj;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/az;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/az;->bB()Ljava/util/ArrayList;

    move-result-object v4

    .line 141
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 143
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v6, :cond_1

    .line 144
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/dd;

    .line 145
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 146
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/a/cj;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/az;

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/a/az;->a(Ljava/util/ArrayList;)V

    .line 150
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/a/cj;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 139
    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 154
    :cond_3
    return-void
.end method

.method private ga()V
    .locals 9

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/a/cj;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/a/cj;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v0

    .line 81
    iget v1, p0, Lcom/android/gallery3d/a/cj;->fC:I

    packed-switch v1, :pswitch_data_0

    .line 95
    :pswitch_0
    new-instance v1, Lcom/android/gallery3d/a/cz;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/a/cz;-><init>(Landroid/content/Context;)V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/a/cj;->jr:Lcom/android/gallery3d/a/r;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/a/aw;->a(Lcom/android/gallery3d/a/r;)V

    .line 100
    invoke-virtual {v1}, Lcom/android/gallery3d/a/aw;->J()I

    move-result v4

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/a/cj;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v5

    .line 102
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_3

    .line 104
    invoke-virtual {v1, v3}, Lcom/android/gallery3d/a/aw;->l(I)Ljava/lang/String;

    move-result-object v6

    .line 105
    iget v0, p0, Lcom/android/gallery3d/a/cj;->fC:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/a/bj;->uj:Lcom/android/gallery3d/a/dd;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/a/dd;->A(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    move-object v2, v0

    .line 113
    :goto_2
    invoke-virtual {v5, v2}, Lcom/android/gallery3d/a/ao;->d(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/az;

    .line 115
    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/android/gallery3d/a/az;

    invoke-direct {v0, v2, v5, p0}, Lcom/android/gallery3d/a/az;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/a/ao;Lcom/android/gallery3d/a/r;)V

    .line 118
    :cond_0
    invoke-virtual {v1, v3}, Lcom/android/gallery3d/a/aw;->i(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/a/az;->a(Ljava/util/ArrayList;)V

    .line 119
    invoke-virtual {v0, v6}, Lcom/android/gallery3d/a/az;->setName(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1, v3}, Lcom/android/gallery3d/a/aw;->U(I)Lcom/android/gallery3d/a/ax;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/a/az;->a(Lcom/android/gallery3d/a/ax;)V

    .line 121
    iget-object v2, p0, Lcom/android/gallery3d/a/cj;->ju:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 83
    :pswitch_1
    new-instance v1, Lcom/android/gallery3d/a/bb;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/a/bb;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 86
    :pswitch_2
    new-instance v1, Lcom/android/gallery3d/a/h;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/a/h;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 89
    :pswitch_3
    new-instance v1, Lcom/android/gallery3d/a/bd;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/a/bd;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 92
    :pswitch_4
    new-instance v1, Lcom/android/gallery3d/a/ab;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/a/ab;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 107
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/a/cj;->fC:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    move-object v0, v1

    .line 108
    check-cast v0, Lcom/android/gallery3d/a/cz;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/a/cz;->bl(I)J

    move-result-wide v7

    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/a/bj;->uj:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v0, v7, v8}, Lcom/android/gallery3d/a/dd;->i(J)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    move-object v2, v0

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/a/bj;->uj:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/a/dd;->bn(I)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    .line 123
    :cond_3
    return-void

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public A(I)Lcom/android/gallery3d/a/r;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/a/cj;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/r;

    return-object v0
.end method

.method public aP()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/a/cj;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public aT()J
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/a/cj;->jr:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aT()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/a/bj;->vI:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 62
    iget-boolean v0, p0, Lcom/android/gallery3d/a/cj;->Gq:Z

    if-eqz v0, :cond_1

    .line 63
    invoke-direct {p0}, Lcom/android/gallery3d/a/cj;->bU()V

    .line 68
    :goto_0
    invoke-static {}, Lcom/android/gallery3d/a/cj;->ex()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    .line 70
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    return-wide v0

    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/a/cj;->ga()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/a/cj;->Gq:Z

    goto :goto_0
.end method

.method public aW()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/gallery3d/a/cj;->aS()V

    .line 75
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/a/cj;->jr:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
