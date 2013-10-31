.class Lcom/android/gallery3d/app/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/ed;


# instance fields
.field private final dZ:Lcom/android/gallery3d/ui/cq;

.field final synthetic ea:Lcom/android/gallery3d/ui/ek;

.field final synthetic eb:Lcom/android/gallery3d/app/da;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/da;Lcom/android/gallery3d/ui/ek;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/gallery3d/app/l;->eb:Lcom/android/gallery3d/app/da;

    iput-object p2, p0, Lcom/android/gallery3d/app/l;->ea:Lcom/android/gallery3d/ui/ek;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 383
    new-instance v0, Lcom/android/gallery3d/ui/cq;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/cq;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/l;->dZ:Lcom/android/gallery3d/ui/cq;

    return-void
.end method


# virtual methods
.method public a(JLcom/android/gallery3d/ui/cq;)Lcom/android/gallery3d/ui/cq;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/gallery3d/app/l;->ea:Lcom/android/gallery3d/ui/ek;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ek;->a(Ljava/lang/Long;)Lcom/android/gallery3d/ui/cq;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_0

    .line 389
    :goto_0
    return-object v0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/l;->dZ:Lcom/android/gallery3d/ui/cq;

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/ui/cq;->a(Lcom/android/gallery3d/ui/cq;)V

    .line 388
    iget-object v0, p0, Lcom/android/gallery3d/app/l;->dZ:Lcom/android/gallery3d/ui/cq;

    const/high16 v1, 0x4300

    iput v1, v0, Lcom/android/gallery3d/ui/cq;->z:F

    .line 389
    iget-object v0, p0, Lcom/android/gallery3d/app/l;->dZ:Lcom/android/gallery3d/ui/cq;

    goto :goto_0
.end method
