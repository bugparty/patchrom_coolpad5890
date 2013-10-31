.class public Lcom/android/gallery3d/a/cz;
.super Lcom/android/gallery3d/a/aw;
.source "SourceFile"


# static fields
.field private static final IU:J = 0x100000L

.field private static final IV:J = 0x40000000L

.field private static final IW:[J = null

.field private static final TAG:Ljava/lang/String; = "SizeClustering"


# instance fields
.field private IS:[Ljava/util/ArrayList;

.field private IT:[J

.field private mContext:Landroid/content/Context;

.field private mNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/a/cz;->IW:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x10t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0x6t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x80t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/gallery3d/a/aw;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/gallery3d/a/cz;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private bk(I)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const-wide/32 v3, 0x40000000

    .line 112
    sget-object v0, Lcom/android/gallery3d/a/cz;->IW:[J

    aget-wide v0, v0, p1

    .line 113
    cmp-long v2, v0, v3

    if-ltz v2, :cond_0

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v3, 0x100000

    div-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic gm()[J
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/gallery3d/a/cz;->IW:[J

    return-object v0
.end method


# virtual methods
.method public J()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/a/cz;->IS:[Ljava/util/ArrayList;

    array-length v0, v0

    return v0
.end method

.method public a(Lcom/android/gallery3d/a/r;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 53
    sget-object v0, Lcom/android/gallery3d/a/cz;->IW:[J

    array-length v0, v0

    new-array v0, v0, [Ljava/util/ArrayList;

    check-cast v0, [Ljava/util/ArrayList;

    .line 55
    new-instance v1, Lcom/android/gallery3d/a/a;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/a/a;-><init>(Lcom/android/gallery3d/a/cz;[Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/a/r;->b(Lcom/android/gallery3d/a/bu;)V

    move v1, v2

    move v3, v2

    .line 76
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 77
    aget-object v4, v0, v1

    if-eqz v4, :cond_0

    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 76
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_1
    new-array v1, v3, [Ljava/util/ArrayList;

    check-cast v1, [Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/gallery3d/a/cz;->IS:[Ljava/util/ArrayList;

    .line 83
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/a/cz;->mNames:[Ljava/lang/String;

    .line 84
    new-array v1, v3, [J

    iput-object v1, p0, Lcom/android/gallery3d/a/cz;->IT:[J

    .line 86
    iget-object v1, p0, Lcom/android/gallery3d/a/cz;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 90
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    move v1, v2

    :goto_1
    if-ltz v3, :cond_5

    .line 91
    aget-object v5, v0, v3

    if-nez v5, :cond_2

    .line 90
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 93
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/a/cz;->IS:[Ljava/util/ArrayList;

    aget-object v6, v0, v3

    aput-object v6, v5, v1

    .line 94
    if-nez v3, :cond_3

    .line 95
    iget-object v5, p0, Lcom/android/gallery3d/a/cz;->mNames:[Ljava/lang/String;

    const v6, 0x7f0d0094

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    add-int/lit8 v8, v3, 0x1

    invoke-direct {p0, v8}, Lcom/android/gallery3d/a/cz;->bk(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 106
    :goto_3
    iget-object v5, p0, Lcom/android/gallery3d/a/cz;->IT:[J

    sget-object v6, Lcom/android/gallery3d/a/cz;->IW:[J

    aget-wide v6, v6, v3

    aput-wide v6, v5, v1

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 97
    :cond_3
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_4

    .line 98
    iget-object v5, p0, Lcom/android/gallery3d/a/cz;->mNames:[Ljava/lang/String;

    const v6, 0x7f0d0095

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/android/gallery3d/a/cz;->bk(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    goto :goto_3

    .line 101
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/gallery3d/a/cz;->bk(I)Ljava/lang/String;

    move-result-object v5

    .line 102
    add-int/lit8 v6, v3, 0x1

    invoke-direct {p0, v6}, Lcom/android/gallery3d/a/cz;->bk(I)Ljava/lang/String;

    move-result-object v6

    .line 103
    iget-object v7, p0, Lcom/android/gallery3d/a/cz;->mNames:[Ljava/lang/String;

    const v8, 0x7f0d0096

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v2

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v1

    goto :goto_3

    .line 109
    :cond_5
    return-void
.end method

.method public bl(I)J
    .locals 2
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/a/cz;->IT:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public i(I)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/a/cz;->IS:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public j(I)D
    .locals 2
    .parameter

    .prologue
    .line 141
    const-wide/16 v0, 0x0

    .line 142
    return-wide v0
.end method

.method public k(I)D
    .locals 2
    .parameter

    .prologue
    .line 147
    const-wide/16 v0, 0x0

    .line 148
    return-wide v0
.end method

.method public l(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/a/cz;->mNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
