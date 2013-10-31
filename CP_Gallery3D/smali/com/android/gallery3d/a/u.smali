.class public Lcom/android/gallery3d/a/u;
.super Lcom/android/gallery3d/a/r;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/an;


# static fields
.field private static final PAGE_SIZE:I = 0x40

.field private static final TAG:Ljava/lang/String; = "LocalMergeAlbum"


# instance fields
.field private final hs:Ljava/util/Comparator;

.field private final ht:[Lcom/android/gallery3d/a/r;

.field private hu:[Lcom/android/gallery3d/a/am;

.field private hv:I

.field private hw:Ljava/util/TreeMap;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/dd;Ljava/util/Comparator;[Lcom/android/gallery3d/a/r;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 47
    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/android/gallery3d/a/r;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 43
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/u;->hw:Ljava/util/TreeMap;

    .line 48
    iput-object p2, p0, Lcom/android/gallery3d/a/u;->hs:Ljava/util/Comparator;

    .line 49
    iput-object p3, p0, Lcom/android/gallery3d/a/u;->ht:[Lcom/android/gallery3d/a/r;

    .line 50
    array-length v0, p3

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/gallery3d/a/u;->mName:Ljava/lang/String;

    .line 51
    iget-object v2, p0, Lcom/android/gallery3d/a/u;->ht:[Lcom/android/gallery3d/a/r;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v1, v2, v0

    .line 52
    invoke-virtual {v1, p0}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/an;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 50
    :cond_0
    aget-object v0, p3, v1

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method

.method private bi()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/a/u;->ht:[Lcom/android/gallery3d/a/r;

    array-length v0, v0

    if-nez v0, :cond_0

    move v0, v1

    .line 59
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/a/u;->ht:[Lcom/android/gallery3d/a/r;

    array-length v2, v2

    new-array v2, v2, [Lcom/android/gallery3d/a/am;

    iput-object v2, p0, Lcom/android/gallery3d/a/u;->hu:[Lcom/android/gallery3d/a/am;

    .line 60
    iget-object v2, p0, Lcom/android/gallery3d/a/u;->ht:[Lcom/android/gallery3d/a/r;

    array-length v3, v2

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    .line 61
    iget-object v4, p0, Lcom/android/gallery3d/a/u;->hu:[Lcom/android/gallery3d/a/am;

    new-instance v5, Lcom/android/gallery3d/a/am;

    iget-object v6, p0, Lcom/android/gallery3d/a/u;->ht:[Lcom/android/gallery3d/a/r;

    aget-object v6, v6, v0

    invoke-direct {v5, v6}, Lcom/android/gallery3d/a/am;-><init>(Lcom/android/gallery3d/a/r;)V

    aput-object v5, v4, v0

    .line 62
    iget-object v4, p0, Lcom/android/gallery3d/a/u;->ht:[Lcom/android/gallery3d/a/r;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/gallery3d/a/r;->am()I

    move-result v4

    and-int/2addr v2, v4

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 64
    :cond_1
    iput v2, p0, Lcom/android/gallery3d/a/u;->hv:I

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/a/u;->hw:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/a/u;->hw:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/a/u;->ht:[Lcom/android/gallery3d/a/r;

    array-length v3, v3

    new-array v3, v3, [I

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/a/u;->ht:[Lcom/android/gallery3d/a/r;

    array-length v0, v0

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lcom/android/gallery3d/a/u;->mName:Ljava/lang/String;

    .line 68
    return-void

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/a/u;->ht:[Lcom/android/gallery3d/a/r;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private bj()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/a/u;->ht:[Lcom/android/gallery3d/a/r;

    array-length v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    .line 72
    iget-object v3, p0, Lcom/android/gallery3d/a/u;->hu:[Lcom/android/gallery3d/a/am;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/gallery3d/a/am;->invalidate()V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/a/u;->hw:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/a/u;->hw:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/a/u;->ht:[Lcom/android/gallery3d/a/r;

    array-length v2, v2

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method


# virtual methods
.method public E(I)V
    .locals 4
    .parameter

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/gallery3d/a/u;->ht:[Lcom/android/gallery3d/a/r;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 178
    invoke-virtual {v3, p1}, Lcom/android/gallery3d/a/r;->E(I)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method

.method public aN()I
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/gallery3d/a/u;->aR()I

    move-result v0

    return v0
.end method

.method public aQ()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public aR()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 137
    .line 138
    iget-object v2, p0, Lcom/android/gallery3d/a/u;->ht:[Lcom/android/gallery3d/a/r;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 139
    invoke-virtual {v4}, Lcom/android/gallery3d/a/r;->aR()I

    move-result v4

    add-int/2addr v1, v4

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return v1
.end method

.method public aT()J
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 146
    .line 147
    iget-object v1, p0, Lcom/android/gallery3d/a/u;->ht:[Lcom/android/gallery3d/a/r;

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 148
    iget-object v3, p0, Lcom/android/gallery3d/a/u;->ht:[Lcom/android/gallery3d/a/r;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/gallery3d/a/r;->aT()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/gallery3d/a/bj;->vI:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 147
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    if-eqz v0, :cond_2

    .line 151
    invoke-static {}, Lcom/android/gallery3d/a/u;->ex()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    .line 152
    invoke-direct {p0}, Lcom/android/gallery3d/a/u;->bi()V

    .line 153
    invoke-direct {p0}, Lcom/android/gallery3d/a/u;->bj()V

    .line 155
    :cond_2
    iget-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    return-wide v0
.end method

.method public aW()V
    .locals 0

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/gallery3d/a/u;->aS()V

    .line 161
    return-void
.end method

.method public am()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/android/gallery3d/a/u;->hv:I

    return v0
.end method

.method public delete()V
    .locals 4

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/gallery3d/a/u;->ht:[Lcom/android/gallery3d/a/r;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 171
    invoke-virtual {v3}, Lcom/android/gallery3d/a/r;->delete()V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/a/u;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public j(II)Ljava/util/ArrayList;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/a/u;->hw:Ljava/util/TreeMap;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    .line 93
    invoke-interface {v2}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 95
    iget-object v2, p0, Lcom/android/gallery3d/a/u;->ht:[Lcom/android/gallery3d/a/r;

    array-length v2, v2

    new-array v6, v2, [Lcom/android/gallery3d/a/ax;

    .line 97
    iget-object v2, p0, Lcom/android/gallery3d/a/u;->ht:[Lcom/android/gallery3d/a/r;

    array-length v7, v2

    move v2, v3

    .line 100
    :goto_0
    if-ge v2, v7, :cond_0

    .line 101
    iget-object v5, p0, Lcom/android/gallery3d/a/u;->hu:[Lcom/android/gallery3d/a/am;

    aget-object v5, v5, v2

    aget v8, v0, v2

    invoke-virtual {v5, v8}, Lcom/android/gallery3d/a/am;->ah(I)Lcom/android/gallery3d/a/ax;

    move-result-object v5

    aput-object v5, v6, v2

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    .line 106
    :goto_1
    add-int v1, p1, p2

    if-ge v5, v1, :cond_4

    move v2, v3

    move v1, v4

    .line 108
    :goto_2
    if-ge v2, v7, :cond_3

    .line 109
    aget-object v9, v6, v2

    if-eqz v9, :cond_2

    .line 110
    if-eq v1, v4, :cond_1

    iget-object v9, p0, Lcom/android/gallery3d/a/u;->hs:Ljava/util/Comparator;

    aget-object v10, v6, v2

    aget-object v11, v6, v1

    invoke-interface {v9, v10, v11}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-gez v9, :cond_2

    :cond_1
    move v1, v2

    .line 108
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 117
    :cond_3
    if-ne v1, v4, :cond_5

    .line 132
    :cond_4
    return-object v8

    .line 120
    :cond_5
    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 121
    if-lt v5, p1, :cond_6

    .line 122
    aget-object v2, v6, v1

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/a/u;->hu:[Lcom/android/gallery3d/a/am;

    aget-object v2, v2, v1

    aget v9, v0, v1

    invoke-virtual {v2, v9}, Lcom/android/gallery3d/a/am;->ah(I)Lcom/android/gallery3d/a/ax;

    move-result-object v2

    aput-object v2, v6, v1

    .line 127
    add-int/lit8 v1, v5, 0x1

    rem-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_7

    .line 128
    iget-object v1, p0, Lcom/android/gallery3d/a/u;->hw:Ljava/util/TreeMap;

    add-int/lit8 v2, v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_7
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1
.end method
