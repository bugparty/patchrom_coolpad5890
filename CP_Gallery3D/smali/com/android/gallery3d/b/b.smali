.class public Lcom/android/gallery3d/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ce:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/b/b;->ce:Z

    return-void
.end method


# virtual methods
.method public K()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/gallery3d/b/b;->ce:Z

    return v0
.end method

.method public a(DD)D
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    cmpl-double v0, p1, p3

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/b/b;->ce:Z

    .line 45
    :goto_0
    return-wide p3

    :cond_0
    move-wide p3, p1

    goto :goto_0
.end method

.method public a(JJ)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/b/b;->ce:Z

    .line 37
    :goto_0
    return-wide p3

    :cond_0
    move-wide p3, p1

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-static {p1, p2}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/b/b;->ce:Z

    .line 61
    :goto_0
    return-object p2

    :cond_0
    move-object p2, p1

    goto :goto_0
.end method

.method public b(FF)D
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    cmpl-float v0, p1, p2

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/b/b;->ce:Z

    .line 53
    :goto_0
    float-to-double v0, p2

    return-wide v0

    :cond_0
    move p2, p1

    goto :goto_0
.end method

.method public c(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    if-eq p1, p2, :cond_0

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/b/b;->ce:Z

    .line 29
    :goto_0
    return p2

    :cond_0
    move p2, p1

    goto :goto_0
.end method
