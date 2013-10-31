.class public Lcom/android/gallery3d/a/ab;
.super Lcom/android/gallery3d/a/aw;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceClustering"


# instance fields
.field private jp:[Lcom/android/gallery3d/a/bi;

.field private jq:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/gallery3d/a/aw;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/ab;->jq:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/android/gallery3d/a/ab;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/a/ab;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/gallery3d/a/ab;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public J()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/a/ab;->jp:[Lcom/android/gallery3d/a/bi;

    array-length v0, v0

    return v0
.end method

.method public U(I)Lcom/android/gallery3d/a/ax;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/a/ab;->jp:[Lcom/android/gallery3d/a/bi;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/gallery3d/a/bi;->ep()Lcom/android/gallery3d/a/ax;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/android/gallery3d/a/r;)V
    .locals 4
    .parameter

    .prologue
    .line 92
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 94
    new-instance v1, Lcom/android/gallery3d/a/bi;

    iget-object v2, p0, Lcom/android/gallery3d/a/ab;->jq:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/a/bi;-><init>(Lcom/android/gallery3d/a/ab;Ljava/lang/String;)V

    .line 96
    new-instance v2, Lcom/android/gallery3d/a/ck;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/gallery3d/a/ck;-><init>(Lcom/android/gallery3d/a/ab;Lcom/android/gallery3d/a/bi;Ljava/util/TreeMap;)V

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/a/r;->b(Lcom/android/gallery3d/a/bu;)V

    .line 115
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v2

    .line 116
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/gallery3d/a/bi;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/android/gallery3d/a/bi;

    invoke-interface {v3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/a/bi;

    iput-object v0, p0, Lcom/android/gallery3d/a/ab;->jp:[Lcom/android/gallery3d/a/bi;

    .line 117
    invoke-virtual {v1}, Lcom/android/gallery3d/a/bi;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/a/ab;->jp:[Lcom/android/gallery3d/a/bi;

    aput-object v1, v0, v2

    .line 120
    :cond_0
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i(I)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/a/ab;->jp:[Lcom/android/gallery3d/a/bi;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/gallery3d/a/bi;->ig:Ljava/util/ArrayList;

    return-object v0
.end method

.method public j(I)D
    .locals 2
    .parameter

    .prologue
    .line 144
    const-wide/16 v0, 0x0

    .line 145
    return-wide v0
.end method

.method public k(I)D
    .locals 2
    .parameter

    .prologue
    .line 150
    const-wide/16 v0, 0x0

    .line 151
    return-wide v0
.end method

.method public l(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/a/ab;->jp:[Lcom/android/gallery3d/a/bi;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/gallery3d/a/bi;->mName:Ljava/lang/String;

    return-object v0
.end method
