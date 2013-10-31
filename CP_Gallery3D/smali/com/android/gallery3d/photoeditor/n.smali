.class Lcom/android/gallery3d/photoeditor/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic lV:Lcom/android/gallery3d/photoeditor/ap;

.field final synthetic ng:Lcom/android/gallery3d/photoeditor/filters/Filter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/filters/Filter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/n;->lV:Lcom/android/gallery3d/photoeditor/ap;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/n;->ng:Lcom/android/gallery3d/photoeditor/filters/Filter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 200
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/n;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ap;->i(Lcom/android/gallery3d/photoeditor/ap;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/n;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/ap;->i(Lcom/android/gallery3d/photoeditor/ap;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/filters/Filter;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/filters/Filter;->release()V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/n;->lV:Lcom/android/gallery3d/photoeditor/ap;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/n;->ng:Lcom/android/gallery3d/photoeditor/filters/Filter;

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/ap;->a(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 204
    return-void
.end method
