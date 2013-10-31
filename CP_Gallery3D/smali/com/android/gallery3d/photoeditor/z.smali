.class Lcom/android/gallery3d/photoeditor/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nq:Landroid/graphics/Bitmap;

.field final synthetic po:Lcom/android/gallery3d/photoeditor/p;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/p;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/z;->po:Lcom/android/gallery3d/photoeditor/p;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/z;->nq:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/z;->po:Lcom/android/gallery3d/photoeditor/p;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/p;->ns:Lcom/android/gallery3d/photoeditor/x;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/z;->nq:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/photoeditor/x;->a(Landroid/graphics/Bitmap;)V

    .line 171
    return-void
.end method
