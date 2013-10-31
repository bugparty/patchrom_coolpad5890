.class Lcom/android/gallery3d/photoeditor/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/x;


# instance fields
.field final synthetic ao:Lcom/android/gallery3d/photoeditor/al;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/al;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/a;->ao:Lcom/android/gallery3d/photoeditor/al;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter

    .prologue
    .line 142
    new-instance v0, Lcom/android/gallery3d/photoeditor/aa;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/aa;-><init>(Lcom/android/gallery3d/photoeditor/a;)V

    .line 151
    new-instance v1, Lcom/android/gallery3d/photoeditor/am;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/a;->ao:Lcom/android/gallery3d/photoeditor/al;

    iget-object v2, v2, Lcom/android/gallery3d/photoeditor/al;->tR:Lcom/android/gallery3d/photoeditor/av;

    iget-object v2, v2, Lcom/android/gallery3d/photoeditor/av;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/a;->ao:Lcom/android/gallery3d/photoeditor/al;

    iget-object v3, v3, Lcom/android/gallery3d/photoeditor/al;->tR:Lcom/android/gallery3d/photoeditor/av;

    iget-object v3, v3, Lcom/android/gallery3d/photoeditor/av;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v3}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->e(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/gallery3d/photoeditor/am;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/gallery3d/photoeditor/ai;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/am;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 153
    return-void
.end method
