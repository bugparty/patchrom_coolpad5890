.class public Lcom/android/gallery3d/a/bp;
.super Lcom/android/gallery3d/a/r;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/an;


# static fields
.field private static final TAG:Ljava/lang/String; = "ComboAlbumSet"


# instance fields
.field private final hP:[Lcom/android/gallery3d/a/r;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;[Lcom/android/gallery3d/a/r;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {}, Lcom/android/gallery3d/a/bp;->ex()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/a/r;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 33
    iput-object p3, p0, Lcom/android/gallery3d/a/bp;->hP:[Lcom/android/gallery3d/a/r;

    .line 34
    iget-object v1, p0, Lcom/android/gallery3d/a/bp;->hP:[Lcom/android/gallery3d/a/r;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 35
    invoke-virtual {v3, p0}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/an;)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    invoke-interface {p2}, Lcom/android/gallery3d/app/cl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/bp;->mName:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public A(I)Lcom/android/gallery3d/a/r;
    .locals 5
    .parameter

    .prologue
    .line 43
    iget-object v1, p0, Lcom/android/gallery3d/a/bp;->hP:[Lcom/android/gallery3d/a/r;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 44
    invoke-virtual {v3}, Lcom/android/gallery3d/a/r;->aP()I

    move-result v4

    .line 45
    if-ge p1, v4, :cond_0

    .line 46
    invoke-virtual {v3, p1}, Lcom/android/gallery3d/a/r;->A(I)Lcom/android/gallery3d/a/r;

    move-result-object v0

    .line 50
    :goto_1
    return-object v0

    .line 48
    :cond_0
    sub-int/2addr p1, v4

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/android/gallery3d/a/da;)Lcom/android/gallery3d/b/l;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/a/bp;->hP:[Lcom/android/gallery3d/a/r;

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/a/bp;->a([Lcom/android/gallery3d/a/r;Lcom/android/gallery3d/a/da;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    return-object v0
.end method

.method public aP()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/gallery3d/a/bp;->hP:[Lcom/android/gallery3d/a/r;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 57
    invoke-virtual {v4}, Lcom/android/gallery3d/a/r;->aP()I

    move-result v4

    add-int/2addr v1, v4

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return v1
.end method

.method public aT()J
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/gallery3d/a/bp;->hP:[Lcom/android/gallery3d/a/r;

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 71
    iget-object v3, p0, Lcom/android/gallery3d/a/bp;->hP:[Lcom/android/gallery3d/a/r;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/gallery3d/a/r;->aT()J

    move-result-wide v3

    .line 72
    iget-wide v5, p0, Lcom/android/gallery3d/a/bj;->vI:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 70
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/gallery3d/a/bp;->ex()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    .line 75
    :cond_2
    iget-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    return-wide v0
.end method

.method public aW()V
    .locals 0

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/gallery3d/a/bp;->aS()V

    .line 80
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/a/bp;->mName:Ljava/lang/String;

    return-object v0
.end method
