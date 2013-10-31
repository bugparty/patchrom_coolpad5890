.class Lcom/android/gallery3d/photoeditor/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/h;


# instance fields
.field final synthetic Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/ba;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ba;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->c(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/ap;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/photoeditor/ao;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/ao;-><init>(Lcom/android/gallery3d/photoeditor/ba;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/photoeditor/ap;->a(Landroid/graphics/Bitmap;Lcom/android/gallery3d/photoeditor/be;)V

    .line 95
    return-void
.end method
