.class public Lcom/android/gallery3d/a/bt;
.super Lcom/android/gallery3d/a/bh;
.source "SourceFile"


# instance fields
.field private aI:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/cl;Lcom/android/gallery3d/a/dd;ILjava/lang/String;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-static {p3}, Lcom/android/gallery3d/a/av;->an(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/a/bh;-><init>(Lcom/android/gallery3d/app/cl;Lcom/android/gallery3d/a/dd;IILjava/lang/String;I)V

    .line 153
    iput-object p4, p0, Lcom/android/gallery3d/a/bt;->aI:Ljava/lang/String;

    .line 154
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/gallery3d/a/bh;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Lcom/android/gallery3d/b/j;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/gallery3d/a/bh;->a(Lcom/android/gallery3d/b/j;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/android/gallery3d/b/j;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/gallery3d/a/bt;->aI:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery3d/common/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 160
    :cond_1
    return-object v0
.end method
