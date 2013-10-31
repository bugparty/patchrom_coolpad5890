.class Lcom/android/gallery3d/photoeditor/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic lV:Lcom/android/gallery3d/photoeditor/ap;

.field final synthetic lW:Lcom/android/gallery3d/photoeditor/be;

.field final synthetic nq:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/ap;Landroid/graphics/Bitmap;Lcom/android/gallery3d/photoeditor/be;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/o;->lV:Lcom/android/gallery3d/photoeditor/ap;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/o;->nq:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/gallery3d/photoeditor/o;->lW:Lcom/android/gallery3d/photoeditor/be;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/o;->lV:Lcom/android/gallery3d/photoeditor/ap;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/o;->nq:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/aj;->k(Landroid/graphics/Bitmap;)Lcom/android/gallery3d/photoeditor/aj;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/ap;->a(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/aj;)Lcom/android/gallery3d/photoeditor/aj;

    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/o;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ap;->h(Lcom/android/gallery3d/photoeditor/ap;)V

    .line 184
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/o;->lV:Lcom/android/gallery3d/photoeditor/ap;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/o;->lW:Lcom/android/gallery3d/photoeditor/be;

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/ap;->a(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/be;)V

    .line 185
    return-void
.end method
