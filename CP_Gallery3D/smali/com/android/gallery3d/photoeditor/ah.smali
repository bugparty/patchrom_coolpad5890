.class public Lcom/android/gallery3d/photoeditor/ah;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# static fields
.field private static final st:I = 0x500

.field private static final su:I = 0x3c0


# instance fields
.field private final context:Landroid/content/Context;

.field private final sv:Lcom/android/gallery3d/photoeditor/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/photoeditor/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/ah;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/ah;->sv:Lcom/android/gallery3d/photoeditor/h;

    .line 50
    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 57
    aget-object v0, p1, v2

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/gallery3d/photoeditor/e;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/ah;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/photoeditor/e;-><init>(Landroid/content/Context;)V

    aget-object v1, p1, v2

    const/16 v2, 0x500

    const/16 v3, 0x3c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/photoeditor/e;->b(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 31
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/ah;->a([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected j(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 65
    if-nez p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ah;->context:Landroid/content/Context;

    const v1, 0x7f0d0001

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 67
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 68
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ah;->sv:Lcom/android/gallery3d/photoeditor/h;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/photoeditor/h;->g(Landroid/graphics/Bitmap;)V

    .line 71
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/ah;->j(Landroid/graphics/Bitmap;)V

    return-void
.end method
