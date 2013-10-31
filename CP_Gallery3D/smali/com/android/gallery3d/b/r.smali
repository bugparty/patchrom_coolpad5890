.class public Lcom/android/gallery3d/b/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/a/r;Lcom/android/gallery3d/a/r;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/android/gallery3d/a/r;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/gallery3d/a/r;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    check-cast p1, Lcom/android/gallery3d/a/r;

    check-cast p2, Lcom/android/gallery3d/a/r;

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/b/r;->a(Lcom/android/gallery3d/a/r;Lcom/android/gallery3d/a/r;)I

    move-result v0

    return v0
.end method
