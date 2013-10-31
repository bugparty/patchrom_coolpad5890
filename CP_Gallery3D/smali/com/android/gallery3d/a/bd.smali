.class public Lcom/android/gallery3d/a/bd;
.super Lcom/android/gallery3d/a/aw;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TagClustering"


# instance fields
.field private cb:Ljava/util/ArrayList;

.field private jq:Ljava/lang/String;

.field private mNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/gallery3d/a/aw;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/bd;->jq:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public J()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/a/bd;->cb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(Lcom/android/gallery3d/a/r;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 41
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 43
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 45
    new-instance v0, Lcom/android/gallery3d/a/t;

    invoke-direct {v0, p0, v4, v2}, Lcom/android/gallery3d/a/t;-><init>(Lcom/android/gallery3d/a/bd;Ljava/util/ArrayList;Ljava/util/TreeMap;)V

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/a/r;->b(Lcom/android/gallery3d/a/bu;)V

    .line 66
    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v3

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/bd;->cb:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/a/bd;->mNames:[Ljava/lang/String;

    .line 70
    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    iget-object v6, p0, Lcom/android/gallery3d/a/bd;->mNames:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v6, v2

    .line 72
    iget-object v1, p0, Lcom/android/gallery3d/a/bd;->cb:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_1

    :cond_0
    move v0, v1

    .line 68
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/a/bd;->mNames:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    iget-object v1, p0, Lcom/android/gallery3d/a/bd;->jq:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/a/bd;->cb:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_2
    return-void
.end method

.method public i(I)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/a/bd;->cb:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public j(I)D
    .locals 2
    .parameter

    .prologue
    .line 97
    const-wide/16 v0, 0x0

    .line 98
    return-wide v0
.end method

.method public k(I)D
    .locals 2
    .parameter

    .prologue
    .line 103
    const-wide/16 v0, 0x0

    .line 104
    return-wide v0
.end method

.method public l(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/a/bd;->mNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
