.class Lcom/android/gallery3d/photoeditor/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic BO:Lcom/android/gallery3d/photoeditor/ax;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/ax;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/aq;->BO:Lcom/android/gallery3d/photoeditor/ax;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/android/gallery3d/photoeditor/an;->showDialog()V

    .line 110
    new-instance v0, Lcom/android/gallery3d/photoeditor/w;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/w;-><init>(Lcom/android/gallery3d/photoeditor/aq;)V

    .line 117
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/aq;->BO:Lcom/android/gallery3d/photoeditor/ax;

    iget-boolean v1, v1, Lcom/android/gallery3d/photoeditor/ax;->EB:Z

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/aq;->BO:Lcom/android/gallery3d/photoeditor/ax;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/ax;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->c(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/ap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/ap;->b(Lcom/android/gallery3d/photoeditor/be;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/aq;->BO:Lcom/android/gallery3d/photoeditor/ax;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/ax;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->c(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/ap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/ap;->c(Lcom/android/gallery3d/photoeditor/be;)V

    goto :goto_0
.end method
