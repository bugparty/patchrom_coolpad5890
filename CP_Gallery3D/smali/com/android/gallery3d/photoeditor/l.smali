.class Lcom/android/gallery3d/photoeditor/l;
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
    .line 209
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/l;->lV:Lcom/android/gallery3d/photoeditor/ap;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/l;->lW:Lcom/android/gallery3d/photoeditor/be;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/l;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ap;->c(Lcom/android/gallery3d/photoeditor/ap;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/l;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ap;->i(Lcom/android/gallery3d/photoeditor/ap;)Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/l;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/ap;->c(Lcom/android/gallery3d/photoeditor/ap;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/l;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ap;->j(Lcom/android/gallery3d/photoeditor/ap;)V

    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/l;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ap;->h(Lcom/android/gallery3d/photoeditor/ap;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/l;->lV:Lcom/android/gallery3d/photoeditor/ap;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/l;->lW:Lcom/android/gallery3d/photoeditor/be;

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/ap;->a(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/be;)V

    .line 219
    return-void
.end method
