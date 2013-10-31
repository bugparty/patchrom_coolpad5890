.class Lcom/android/gallery3d/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/a/cq;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/gallery3d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/a/ax;Lcom/android/gallery3d/a/ax;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/android/gallery3d/a/ax;->dx()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/gallery3d/a/ax;->dx()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/common/Utils;->compare(JJ)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    check-cast p1, Lcom/android/gallery3d/a/ax;

    check-cast p2, Lcom/android/gallery3d/a/ax;

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/a/d;->a(Lcom/android/gallery3d/a/ax;Lcom/android/gallery3d/a/ax;)I

    move-result v0

    return v0
.end method
