.class public Lcom/android/gallery3d/a/bz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AY:I = -0x1


# instance fields
.field private AZ:Ljava/util/ArrayList;

.field private Ba:Lcom/android/gallery3d/a/q;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/bz;->AZ:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Lcom/android/gallery3d/a/q;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/a/q;-><init>(Lcom/android/gallery3d/a/cd;)V

    iput-object v0, p0, Lcom/android/gallery3d/a/bz;->Ba:Lcom/android/gallery3d/a/q;

    .line 30
    new-instance v0, Lcom/android/gallery3d/a/q;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/a/q;-><init>(Lcom/android/gallery3d/a/cd;)V

    iput-object v0, p0, Lcom/android/gallery3d/a/bz;->Ba:Lcom/android/gallery3d/a/q;

    .line 31
    return-void
.end method


# virtual methods
.method public aJ(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/a/bz;->AZ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aK(I)I
    .locals 5
    .parameter

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/a/bz;->AZ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 72
    :goto_0
    return v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string v2, "PathMatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/gallery3d/ui/y;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public aL(I)J
    .locals 2
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/a/bz;->AZ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public i(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-static {p1}, Lcom/android/gallery3d/a/dd;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 35
    iget-object v1, p0, Lcom/android/gallery3d/a/bz;->Ba:Lcom/android/gallery3d/a/q;

    .line 36
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 37
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/a/q;->c(Ljava/lang/String;)Lcom/android/gallery3d/a/q;

    move-result-object v1

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/gallery3d/a/q;->x(I)V

    .line 40
    return-void
.end method

.method public s(Lcom/android/gallery3d/a/dd;)I
    .locals 5
    .parameter

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/android/gallery3d/a/dd;->gx()[Ljava/lang/String;

    move-result-object v3

    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/a/bz;->AZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    iget-object v1, p0, Lcom/android/gallery3d/a/bz;->Ba:Lcom/android/gallery3d/a/q;

    .line 46
    const/4 v0, 0x0

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_1

    .line 47
    aget-object v2, v3, v0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/a/q;->d(Ljava/lang/String;)Lcom/android/gallery3d/a/q;

    move-result-object v2

    .line 48
    if-nez v2, :cond_2

    .line 49
    const-string v2, "*"

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/a/q;->d(Ljava/lang/String;)Lcom/android/gallery3d/a/q;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    iget-object v2, p0, Lcom/android/gallery3d/a/bz;->AZ:Ljava/util/ArrayList;

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    const/4 v0, -0x1

    .line 58
    :goto_2
    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/gallery3d/a/q;->aB()I

    move-result v0

    goto :goto_2

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method
