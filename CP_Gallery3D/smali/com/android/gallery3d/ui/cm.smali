.class Lcom/android/gallery3d/ui/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/u;


# instance fields
.field final synthetic uh:Lcom/android/gallery3d/ui/eu;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/eu;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/gallery3d/ui/cm;->uh:Lcom/android/gallery3d/ui/eu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/b/l;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/cm;->uh:Lcom/android/gallery3d/ui/eu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/eu;->a(Lcom/android/gallery3d/ui/eu;Lcom/android/gallery3d/b/l;)Lcom/android/gallery3d/b/l;

    .line 68
    invoke-interface {p1}, Lcom/android/gallery3d/b/l;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/ui/cm;->uh:Lcom/android/gallery3d/ui/eu;

    invoke-static {v0}, Lcom/android/gallery3d/ui/eu;->b(Lcom/android/gallery3d/ui/eu;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/ui/dz;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/ui/dz;-><init>(Lcom/android/gallery3d/ui/cm;Lcom/android/gallery3d/b/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    :cond_0
    return-void
.end method
