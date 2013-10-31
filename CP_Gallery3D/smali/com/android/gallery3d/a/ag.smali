.class Lcom/android/gallery3d/a/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/a/bo;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/gallery3d/a/ag;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/a/ad;Lcom/android/gallery3d/a/ad;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 87
    iget-wide v0, p1, Lcom/android/gallery3d/a/ad;->jz:J

    iget-wide v2, p2, Lcom/android/gallery3d/a/ad;->jz:J

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
    .line 85
    check-cast p1, Lcom/android/gallery3d/a/ad;

    check-cast p2, Lcom/android/gallery3d/a/ad;

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/a/ag;->a(Lcom/android/gallery3d/a/ad;Lcom/android/gallery3d/a/ad;)I

    move-result v0

    return v0
.end method
