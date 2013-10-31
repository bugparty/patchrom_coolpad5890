.class Lcom/android/gallery3d/app/du;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/ab;


# instance fields
.field final synthetic EA:Lcom/android/gallery3d/app/dd;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/dd;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/gallery3d/app/du;->EA:Lcom/android/gallery3d/app/dd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/du;->n(Lcom/android/gallery3d/b/j;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public n(Lcom/android/gallery3d/b/j;)Ljava/lang/Void;
    .locals 2
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/gallery3d/app/du;->EA:Lcom/android/gallery3d/app/dd;

    invoke-static {v0}, Lcom/android/gallery3d/app/dd;->k(Lcom/android/gallery3d/app/dd;)Lcom/android/gallery3d/ui/ab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/ab;->g(Lcom/android/gallery3d/b/j;)V

    .line 263
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/gallery3d/app/du;->EA:Lcom/android/gallery3d/app/dd;

    invoke-static {v0}, Lcom/android/gallery3d/app/dd;->b(Lcom/android/gallery3d/app/dd;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 266
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
