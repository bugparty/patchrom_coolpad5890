.class Lcom/android/gallery3d/photoeditor/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic lV:Lcom/android/gallery3d/photoeditor/ap;

.field final synthetic lW:Lcom/android/gallery3d/photoeditor/be;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/be;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/k;->lV:Lcom/android/gallery3d/photoeditor/ap;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/k;->lW:Lcom/android/gallery3d/photoeditor/be;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/k;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ap;->i(Lcom/android/gallery3d/photoeditor/ap;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/k;->lV:Lcom/android/gallery3d/photoeditor/ap;

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/k;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ap;->i(Lcom/android/gallery3d/photoeditor/ap;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/filters/Filter;

    invoke-static {v1, v0}, Lcom/android/gallery3d/photoeditor/ap;->a(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 230
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/k;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ap;->k(Lcom/android/gallery3d/photoeditor/ap;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/k;->lV:Lcom/android/gallery3d/photoeditor/ap;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/k;->lW:Lcom/android/gallery3d/photoeditor/be;

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/ap;->a(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/be;)V

    .line 233
    return-void
.end method
