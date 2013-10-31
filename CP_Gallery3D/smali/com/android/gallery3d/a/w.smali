.class public Lcom/android/gallery3d/a/w;
.super Lcom/android/gallery3d/a/r;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/an;


# static fields
.field private static final TAG:Ljava/lang/String; = "ComboAlbum"


# instance fields
.field private final hP:[Lcom/android/gallery3d/a/r;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/dd;[Lcom/android/gallery3d/a/r;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-static {}, Lcom/android/gallery3d/a/w;->ex()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/a/r;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 34
    iput-object p2, p0, Lcom/android/gallery3d/a/w;->hP:[Lcom/android/gallery3d/a/r;

    .line 35
    iget-object v1, p0, Lcom/android/gallery3d/a/w;->hP:[Lcom/android/gallery3d/a/r;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 36
    invoke-virtual {v3, p0}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/an;)V

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    iput-object p3, p0, Lcom/android/gallery3d/a/w;->mName:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/a/da;)Lcom/android/gallery3d/b/l;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/a/w;->hP:[Lcom/android/gallery3d/a/r;

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/a/w;->a([Lcom/android/gallery3d/a/r;Lcom/android/gallery3d/a/da;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    return-object v0
.end method

.method public aN()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/gallery3d/a/w;->hP:[Lcom/android/gallery3d/a/r;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 64
    invoke-virtual {v4}, Lcom/android/gallery3d/a/r;->aN()I

    move-result v4

    add-int/2addr v1, v4

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return v1
.end method

.method public aQ()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public aT()J
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/gallery3d/a/w;->hP:[Lcom/android/gallery3d/a/r;

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 85
    iget-object v3, p0, Lcom/android/gallery3d/a/w;->hP:[Lcom/android/gallery3d/a/r;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/gallery3d/a/r;->aT()J

    move-result-wide v3

    .line 86
    iget-wide v5, p0, Lcom/android/gallery3d/a/bj;->vI:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 84
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/gallery3d/a/w;->ex()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    .line 89
    :cond_2
    iget-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    return-wide v0
.end method

.method public aW()V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/gallery3d/a/w;->aS()V

    .line 94
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/a/w;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public j(II)Ljava/util/ArrayList;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 43
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v5, p0, Lcom/android/gallery3d/a/w;->hP:[Lcom/android/gallery3d/a/r;

    array-length v6, v5

    move v3, v2

    move v1, p2

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v7, v5, v3

    .line 45
    invoke-virtual {v7}, Lcom/android/gallery3d/a/r;->aN()I

    move-result v0

    .line 46
    const/4 v8, 0x1

    if-ge v1, v8, :cond_1

    .line 57
    :cond_0
    return-object v4

    .line 47
    :cond_1
    if-ge p1, v0, :cond_3

    .line 48
    add-int v8, p1, v1

    if-gt v8, v0, :cond_2

    move v0, v1

    .line 49
    :goto_1
    invoke-virtual {v7, p1, v0}, Lcom/android/gallery3d/a/r;->j(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 50
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v1, v0

    move v0, v2

    .line 44
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move p1, v0

    goto :goto_0

    .line 48
    :cond_2
    sub-int/2addr v0, p1

    goto :goto_1

    .line 54
    :cond_3
    sub-int v0, p1, v0

    goto :goto_2
.end method
