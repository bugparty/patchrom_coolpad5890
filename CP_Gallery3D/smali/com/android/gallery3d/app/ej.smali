.class Lcom/android/gallery3d/app/ej;
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
    .line 1041
    iput-object p1, p0, Lcom/android/gallery3d/app/ej;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1042
    iput-object p2, p0, Lcom/android/gallery3d/app/ej;->ah:Lcom/android/gallery3d/a/ax;

    .line 1043
    return-void
.end method


# virtual methods
.method public bridge synthetic c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1038
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/ej;->h(Lcom/android/gallery3d/b/j;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/android/gallery3d/b/j;)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .parameter

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/gallery3d/app/ej;->ah:Lcom/android/gallery3d/a/ax;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ej;->ah:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->al()Lcom/android/gallery3d/b/ab;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/gallery3d/b/ab;->c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    goto :goto_0
.end method
