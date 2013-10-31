.class Lcom/android/gallery3d/photoeditor/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/au;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/au;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->b(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->d(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/au;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->a(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/ActionBar;->eQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    new-instance v0, Lcom/android/gallery3d/photoeditor/ab;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/au;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    new-instance v2, Lcom/android/gallery3d/photoeditor/at;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/photoeditor/at;-><init>(Lcom/android/gallery3d/photoeditor/au;)V

    new-instance v3, Lcom/android/gallery3d/photoeditor/as;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/photoeditor/as;-><init>(Lcom/android/gallery3d/photoeditor/au;)V

    const v4, 0x7f0d0005

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/photoeditor/ab;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/ab;->show()Landroid/app/AlertDialog;

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/au;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->finish()V

    goto :goto_0
.end method
