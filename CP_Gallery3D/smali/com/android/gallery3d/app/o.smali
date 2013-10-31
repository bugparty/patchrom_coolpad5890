.class Lcom/android/gallery3d/app/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/ed;


# instance fields
.field private final dZ:Lcom/android/gallery3d/ui/cq;

.field final synthetic ea:Lcom/android/gallery3d/ui/ek;

.field final synthetic eb:Lcom/android/gallery3d/app/da;

.field final synthetic ed:[I

.field final synthetic ee:Ljava/util/Random;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/da;Lcom/android/gallery3d/ui/ek;[ILjava/util/Random;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/gallery3d/app/o;->eb:Lcom/android/gallery3d/app/da;

    iput-object p2, p0, Lcom/android/gallery3d/app/o;->ea:Lcom/android/gallery3d/ui/ek;

    iput-object p3, p0, Lcom/android/gallery3d/app/o;->ed:[I

    iput-object p4, p0, Lcom/android/gallery3d/app/o;->ee:Ljava/util/Random;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 402
    new-instance v0, Lcom/android/gallery3d/ui/cq;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/cq;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/o;->dZ:Lcom/android/gallery3d/ui/cq;

    return-void
.end method


# virtual methods
.method public a(JLcom/android/gallery3d/ui/cq;)Lcom/android/gallery3d/ui/cq;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 404
    iget-object v0, p0, Lcom/android/gallery3d/app/o;->ea:Lcom/android/gallery3d/ui/ek;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ek;->a(Ljava/lang/Long;)Lcom/android/gallery3d/ui/cq;

    move-result-object v0

    .line 405
    if-eqz v0, :cond_0

    .line 414
    :goto_0
    return-object v0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/o;->ed:[I

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/gallery3d/app/o;->ee:Ljava/util/Random;

    invoke-virtual {v0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    .line 408
    iget-object v0, p0, Lcom/android/gallery3d/app/o;->dZ:Lcom/android/gallery3d/ui/cq;

    iget-object v1, p0, Lcom/android/gallery3d/app/o;->ed:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/o;->ed:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/gallery3d/app/o;->ee:Ljava/util/Random;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    int-to-float v4, v4

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/cq;->a(FFFFF)V

    .line 414
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/o;->dZ:Lcom/android/gallery3d/ui/cq;

    goto :goto_0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/o;->dZ:Lcom/android/gallery3d/ui/cq;

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/ui/cq;->a(Lcom/android/gallery3d/ui/cq;)V

    .line 412
    iget-object v0, p0, Lcom/android/gallery3d/app/o;->dZ:Lcom/android/gallery3d/ui/cq;

    const/high16 v1, 0x4300

    iput v1, v0, Lcom/android/gallery3d/ui/cq;->z:F

    goto :goto_1
.end method
