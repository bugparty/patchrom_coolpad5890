.class Lcom/android/gallery3d/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/bu;


# instance fields
.field final synthetic cf:I

.field final synthetic cg:[D

.field final synthetic ch:[Lcom/android/gallery3d/a/cn;

.field final synthetic ci:Lcom/android/gallery3d/a/h;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/h;I[D[Lcom/android/gallery3d/a/cn;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/gallery3d/a/i;->ci:Lcom/android/gallery3d/a/h;

    iput p2, p0, Lcom/android/gallery3d/a/i;->cf:I

    iput-object p3, p0, Lcom/android/gallery3d/a/i;->cg:[D

    iput-object p4, p0, Lcom/android/gallery3d/a/i;->ch:[Lcom/android/gallery3d/a/cn;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/android/gallery3d/a/ax;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 76
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/a/i;->cf:I

    if-lt p1, v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    new-instance v0, Lcom/android/gallery3d/a/cn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/a/cn;-><init>(Lcom/android/gallery3d/a/i;)V

    .line 78
    invoke-virtual {p2}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/a/cn;->jy:Lcom/android/gallery3d/a/dd;

    .line 79
    iget-object v1, p0, Lcom/android/gallery3d/a/i;->cg:[D

    invoke-virtual {p2, v1}, Lcom/android/gallery3d/a/ax;->a([D)V

    .line 80
    iget-object v1, p0, Lcom/android/gallery3d/a/i;->cg:[D

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    iput-wide v1, v0, Lcom/android/gallery3d/a/cn;->jA:D

    .line 81
    iget-object v1, p0, Lcom/android/gallery3d/a/i;->cg:[D

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    iput-wide v1, v0, Lcom/android/gallery3d/a/cn;->jB:D

    .line 82
    iget-object v1, p0, Lcom/android/gallery3d/a/i;->ch:[Lcom/android/gallery3d/a/cn;

    aput-object v0, v1, p1

    goto :goto_0
.end method
