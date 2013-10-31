.class public Lcom/android/gallery3d/a/z;
.super Lcom/android/gallery3d/a/r;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/an;


# static fields
.field private static final TAG:Ljava/lang/String; = "MapAlbum"


# instance fields
.field private ig:Ljava/util/ArrayList;

.field private ih:Lcom/android/gallery3d/a/ao;

.field private ii:Lcom/android/gallery3d/a/r;

.field private ij:Lcom/android/gallery3d/a/ax;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/a/ao;Lcom/android/gallery3d/a/r;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-static {}, Lcom/android/gallery3d/a/z;->ex()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/a/r;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/z;->ig:Ljava/util/ArrayList;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/a/z;->mName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/android/gallery3d/a/z;->ih:Lcom/android/gallery3d/a/ao;

    .line 19
    iput-object p3, p0, Lcom/android/gallery3d/a/z;->ii:Lcom/android/gallery3d/a/r;

    .line 20
    iget-object v0, p0, Lcom/android/gallery3d/a/z;->ii:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/an;)V

    .line 21
    return-void
.end method

.method public static a(Ljava/util/ArrayList;IILcom/android/gallery3d/a/ao;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    :goto_0
    return-object v0

    .line 66
    :cond_0
    add-int v1, p1, p2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 68
    sub-int v3, v2, p1

    new-array v3, v3, [Lcom/android/gallery3d/a/ax;

    .line 69
    new-instance v4, Lcom/android/gallery3d/a/cf;

    invoke-direct {v4, v3}, Lcom/android/gallery3d/a/cf;-><init>([Lcom/android/gallery3d/a/ax;)V

    .line 74
    invoke-virtual {p3, v1, v4, v0}, Lcom/android/gallery3d/a/ao;->a(Ljava/util/ArrayList;Lcom/android/gallery3d/a/bu;I)V

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    sub-int/2addr v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_1

    .line 77
    aget-object v2, v3, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 79
    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/android/gallery3d/a/bu;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/a/z;->ih:Lcom/android/gallery3d/a/ao;

    iget-object v1, p0, Lcom/android/gallery3d/a/z;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/gallery3d/a/ao;->a(Ljava/util/ArrayList;Lcom/android/gallery3d/a/bu;I)V

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/a/z;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(Lcom/android/gallery3d/a/ax;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/gallery3d/a/z;->ij:Lcom/android/gallery3d/a/ax;

    .line 25
    return-void
.end method

.method a(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/gallery3d/a/z;->ig:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method public aN()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/a/z;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public aO()Lcom/android/gallery3d/a/ax;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/a/z;->ij:Lcom/android/gallery3d/a/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/a/z;->ij:Lcom/android/gallery3d/a/ax;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/gallery3d/a/r;->aO()Lcom/android/gallery3d/a/ax;

    move-result-object v0

    goto :goto_0
.end method

.method public aQ()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public aR()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/a/z;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public aT()J
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/a/z;->ii:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aT()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/a/bj;->vI:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 96
    invoke-static {}, Lcom/android/gallery3d/a/z;->ex()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    .line 98
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    return-wide v0
.end method

.method public aW()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/gallery3d/a/z;->aS()V

    .line 103
    return-void
.end method

.method public am()I
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x405

    return v0
.end method

.method bB()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/a/z;->ig:Ljava/util/ArrayList;

    return-object v0
.end method

.method public delete()V
    .locals 4

    .prologue
    .line 112
    new-instance v0, Lcom/android/gallery3d/a/ce;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/a/ce;-><init>(Lcom/android/gallery3d/a/z;)V

    .line 119
    iget-object v1, p0, Lcom/android/gallery3d/a/z;->ih:Lcom/android/gallery3d/a/ao;

    iget-object v2, p0, Lcom/android/gallery3d/a/z;->ig:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/gallery3d/a/ao;->a(Ljava/util/ArrayList;Lcom/android/gallery3d/a/bu;I)V

    .line 120
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/a/z;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public j(II)Ljava/util/ArrayList;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/a/z;->ig:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/a/z;->ih:Lcom/android/gallery3d/a/ao;

    invoke-static {v0, p1, p2, v1}, Lcom/android/gallery3d/a/z;->a(Ljava/util/ArrayList;IILcom/android/gallery3d/a/ao;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/gallery3d/a/z;->mName:Ljava/lang/String;

    .line 43
    return-void
.end method
