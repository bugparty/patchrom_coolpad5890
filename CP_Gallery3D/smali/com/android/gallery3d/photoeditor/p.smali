.class Lcom/android/gallery3d/photoeditor/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic lV:Lcom/android/gallery3d/photoeditor/ap;

.field final synthetic ns:Lcom/android/gallery3d/photoeditor/x;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/x;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/p;->lV:Lcom/android/gallery3d/photoeditor/ap;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/p;->ns:Lcom/android/gallery3d/photoeditor/x;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/p;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ap;->c(Lcom/android/gallery3d/photoeditor/ap;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/p;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ap;->d(Lcom/android/gallery3d/photoeditor/ap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sub-int v0, v1, v0

    .line 164
    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/p;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ap;->e(Lcom/android/gallery3d/photoeditor/ap;)Lcom/android/gallery3d/photoeditor/aj;

    move-result-object v0

    .line 165
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/aj;->ej()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    :goto_2
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/p;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/ap;->g(Lcom/android/gallery3d/photoeditor/ap;)Lcom/android/gallery3d/photoeditor/PhotoView;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/photoeditor/z;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/photoeditor/z;-><init>(Lcom/android/gallery3d/photoeditor/p;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/PhotoView;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/p;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/ap;->f(Lcom/android/gallery3d/photoeditor/ap;)[Lcom/android/gallery3d/photoeditor/aj;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/p;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v2, v0}, Lcom/android/gallery3d/photoeditor/ap;->a(Lcom/android/gallery3d/photoeditor/ap;I)I

    move-result v0

    aget-object v0, v1, v0

    goto :goto_1

    .line 165
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method
