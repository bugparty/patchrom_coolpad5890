.class Lcom/android/gallery3d/photoeditor/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/ai;


# instance fields
.field final synthetic Ez:Lcom/android/gallery3d/photoeditor/c;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/c;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/aw;->Ez:Lcom/android/gallery3d/photoeditor/c;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Landroid/net/Uri;)V
    .locals 3
    .parameter

    .prologue
    .line 200
    invoke-static {}, Lcom/android/gallery3d/photoeditor/an;->dismissDialog()V

    .line 201
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/aw;->Ez:Lcom/android/gallery3d/photoeditor/c;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/c;->gB:Lcom/android/gallery3d/photoeditor/ar;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/ar;->Dj:Lcom/android/gallery3d/photoeditor/ay;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/ay;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v0, p1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->a(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/net/Uri;)Landroid/net/Uri;

    .line 202
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/aw;->Ez:Lcom/android/gallery3d/photoeditor/c;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/c;->gB:Lcom/android/gallery3d/photoeditor/ar;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/ar;->Dj:Lcom/android/gallery3d/photoeditor/ay;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/ay;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->a(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/ActionBar;

    move-result-object v1

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/aw;->Ez:Lcom/android/gallery3d/photoeditor/c;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/c;->gB:Lcom/android/gallery3d/photoeditor/ar;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/ar;->Dj:Lcom/android/gallery3d/photoeditor/ay;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/ay;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->d(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/ActionBar;->p(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/aw;->Ez:Lcom/android/gallery3d/photoeditor/c;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/c;->gB:Lcom/android/gallery3d/photoeditor/ar;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/ar;->Dj:Lcom/android/gallery3d/photoeditor/ay;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/ay;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->d(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/aw;->Ez:Lcom/android/gallery3d/photoeditor/c;

    iget-object v2, v2, Lcom/android/gallery3d/photoeditor/c;->gB:Lcom/android/gallery3d/photoeditor/ar;

    iget-object v2, v2, Lcom/android/gallery3d/photoeditor/ar;->Dj:Lcom/android/gallery3d/photoeditor/ay;

    iget-object v2, v2, Lcom/android/gallery3d/photoeditor/ay;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->d(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 206
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/aw;->Ez:Lcom/android/gallery3d/photoeditor/c;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/c;->gB:Lcom/android/gallery3d/photoeditor/ar;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/ar;->Dj:Lcom/android/gallery3d/photoeditor/ay;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/ay;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->startActivity(Landroid/content/Intent;)V

    .line 209
    :cond_0
    return-void

    .line 202
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
