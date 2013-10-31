.class Lcom/android/gallery3d/app/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/ab;


# instance fields
.field ah:Lcom/android/gallery3d/a/ax;

.field final synthetic oy:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/a/ax;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/android/gallery3d/app/by;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    iput-object p2, p0, Lcom/android/gallery3d/app/by;->ah:Lcom/android/gallery3d/a/ax;

    .line 1055
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/b/j;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/gallery3d/app/by;->ah:Lcom/android/gallery3d/a/ax;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/by;->ah:Lcom/android/gallery3d/a/ax;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/ax;->r(I)Lcom/android/gallery3d/b/ab;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/gallery3d/b/ab;->c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public bridge synthetic c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1050
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/by;->a(Lcom/android/gallery3d/b/j;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
