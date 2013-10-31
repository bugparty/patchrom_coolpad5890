.class Lcom/android/gallery3d/photoeditor/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic lV:Lcom/android/gallery3d/photoeditor/ap;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/i;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 262
    invoke-static {}, Lcom/android/gallery3d/photoeditor/filters/Filter;->fJ()V

    .line 264
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/i;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/ap;->g(Lcom/android/gallery3d/photoeditor/ap;)Lcom/android/gallery3d/photoeditor/PhotoView;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->a(Lcom/android/gallery3d/photoeditor/aj;Z)V

    .line 265
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/i;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v1, v2}, Lcom/android/gallery3d/photoeditor/ap;->a(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/aj;)Lcom/android/gallery3d/photoeditor/aj;

    .line 266
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/i;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/ap;->f(Lcom/android/gallery3d/photoeditor/ap;)[Lcom/android/gallery3d/photoeditor/aj;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/i;->lV:Lcom/android/gallery3d/photoeditor/ap;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/ap;->f(Lcom/android/gallery3d/photoeditor/ap;)[Lcom/android/gallery3d/photoeditor/aj;

    move-result-object v1

    aput-object v2, v1, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method
