.class Lcom/android/gallery3d/photoeditor/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/ai;


# instance fields
.field final synthetic qR:Lcom/android/gallery3d/photoeditor/a;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/a;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/aa;->qR:Lcom/android/gallery3d/photoeditor/a;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 146
    invoke-static {}, Lcom/android/gallery3d/photoeditor/an;->dismissDialog()V

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/aa;->qR:Lcom/android/gallery3d/photoeditor/a;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/a;->ao:Lcom/android/gallery3d/photoeditor/al;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/al;->tR:Lcom/android/gallery3d/photoeditor/av;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/av;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v0, p1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->a(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/net/Uri;)Landroid/net/Uri;

    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/aa;->qR:Lcom/android/gallery3d/photoeditor/a;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/a;->ao:Lcom/android/gallery3d/photoeditor/al;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/al;->tR:Lcom/android/gallery3d/photoeditor/av;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/av;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->a(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/ActionBar;

    move-result-object v1

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/aa;->qR:Lcom/android/gallery3d/photoeditor/a;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/a;->ao:Lcom/android/gallery3d/photoeditor/al;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/al;->tR:Lcom/android/gallery3d/photoeditor/av;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/av;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->d(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/ActionBar;->p(Z)V

    .line 149
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
