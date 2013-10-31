.class Lcom/android/gallery3d/app/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/ed;


# instance fields
.field final synthetic bU:Lcom/android/gallery3d/app/ak;

.field private final dZ:Lcom/android/gallery3d/ui/cq;

.field final synthetic ea:Lcom/android/gallery3d/ui/ek;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ak;Lcom/android/gallery3d/ui/ek;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/gallery3d/app/bp;->bU:Lcom/android/gallery3d/app/ak;

    iput-object p2, p0, Lcom/android/gallery3d/app/bp;->ea:Lcom/android/gallery3d/ui/ek;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 687
    new-instance v0, Lcom/android/gallery3d/ui/cq;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/cq;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/bp;->dZ:Lcom/android/gallery3d/ui/cq;

    return-void
.end method


# virtual methods
.method public a(JLcom/android/gallery3d/ui/cq;)Lcom/android/gallery3d/ui/cq;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/gallery3d/app/bp;->ea:Lcom/android/gallery3d/ui/ek;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ek;->a(Ljava/lang/Long;)Lcom/android/gallery3d/ui/cq;

    move-result-object v0

    .line 690
    if-nez v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/gallery3d/app/bp;->dZ:Lcom/android/gallery3d/ui/cq;

    .line 692
    iget v1, p3, Lcom/android/gallery3d/ui/cq;->x:F

    iget v2, p3, Lcom/android/gallery3d/ui/cq;->y:F

    const/high16 v3, 0x4300

    iget v4, p3, Lcom/android/gallery3d/ui/cq;->yx:F

    const/high16 v5, 0x3f80

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/cq;->a(FFFFF)V

    .line 694
    :cond_0
    return-object v0
.end method
