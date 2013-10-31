.class Lcom/android/gallery3d/app/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/u;
.implements Ljava/lang/Runnable;


# instance fields
.field private final m:J

.field private n:Lcom/android/gallery3d/b/l;

.field final synthetic o:Lcom/android/gallery3d/app/c;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/c;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/gallery3d/app/bs;->o:Lcom/android/gallery3d/app/c;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-wide p2, p0, Lcom/android/gallery3d/app/bs;->m:J

    .line 294
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/b/l;)V
    .locals 3
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/gallery3d/app/bs;->n:Lcom/android/gallery3d/b/l;

    .line 299
    iget-object v0, p0, Lcom/android/gallery3d/app/bs;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->b(Lcom/android/gallery3d/app/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/bs;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v1}, Lcom/android/gallery3d/app/c;->b(Lcom/android/gallery3d/app/c;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 301
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 305
    iget-object v0, p0, Lcom/android/gallery3d/app/bs;->n:Lcom/android/gallery3d/b/l;

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 306
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 308
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 309
    iget-object v3, p0, Lcom/android/gallery3d/app/bs;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v3}, Lcom/android/gallery3d/app/c;->c(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/ui/bl;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/gallery3d/ui/bl;->a(Landroid/graphics/Bitmap;II)V

    .line 310
    iget-object v0, p0, Lcom/android/gallery3d/app/bs;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->d(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/ui/ap;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/ap;->ad(I)V

    .line 311
    iget-object v0, p0, Lcom/android/gallery3d/app/bs;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->e(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/a/ax;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/gallery3d/app/bs;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->e(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/a/ax;

    move-result-object v0

    iput-boolean v4, v0, Lcom/android/gallery3d/a/ax;->rL:Z

    .line 316
    :cond_0
    return-void
.end method
