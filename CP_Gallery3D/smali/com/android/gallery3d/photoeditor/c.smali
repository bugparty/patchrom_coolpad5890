.class Lcom/android/gallery3d/photoeditor/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/x;


# instance fields
.field final synthetic gB:Lcom/android/gallery3d/photoeditor/ar;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/ar;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/c;->gB:Lcom/android/gallery3d/photoeditor/ar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter

    .prologue
    .line 197
    new-instance v0, Lcom/android/gallery3d/photoeditor/aw;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/aw;-><init>(Lcom/android/gallery3d/photoeditor/c;)V

    .line 211
    new-instance v1, Lcom/android/gallery3d/photoeditor/am;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/c;->gB:Lcom/android/gallery3d/photoeditor/ar;

    iget-object v2, v2, Lcom/android/gallery3d/photoeditor/ar;->Dj:Lcom/android/gallery3d/photoeditor/ay;

    iget-object v2, v2, Lcom/android/gallery3d/photoeditor/ay;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/c;->gB:Lcom/android/gallery3d/photoeditor/ar;

    iget-object v3, v3, Lcom/android/gallery3d/photoeditor/ar;->Dj:Lcom/android/gallery3d/photoeditor/ay;

    iget-object v3, v3, Lcom/android/gallery3d/photoeditor/ay;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v3}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->e(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/gallery3d/photoeditor/am;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/gallery3d/photoeditor/ai;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/am;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 213
    return-void
.end method
