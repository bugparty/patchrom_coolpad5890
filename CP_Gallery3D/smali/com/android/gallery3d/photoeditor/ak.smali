.class Lcom/android/gallery3d/photoeditor/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic tN:Lcom/android/gallery3d/photoeditor/az;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/az;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/ak;->tN:Lcom/android/gallery3d/photoeditor/az;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ak;->tN:Lcom/android/gallery3d/photoeditor/az;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/az;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->d(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/ak;->tN:Lcom/android/gallery3d/photoeditor/az;

    iget-object v2, v2, Lcom/android/gallery3d/photoeditor/az;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->d(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/ak;->tN:Lcom/android/gallery3d/photoeditor/az;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/az;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->startActivity(Landroid/content/Intent;)V

    .line 176
    :cond_0
    return-void
.end method
