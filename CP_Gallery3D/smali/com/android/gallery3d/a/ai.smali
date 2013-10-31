.class Lcom/android/gallery3d/a/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/ab;


# instance fields
.field final synthetic nI:Lcom/android/gallery3d/a/p;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/a/p;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/gallery3d/a/ai;->nI:Lcom/android/gallery3d/a/p;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/a/p;Lcom/android/gallery3d/a/aj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/android/gallery3d/a/ai;-><init>(Lcom/android/gallery3d/a/p;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/ai;->h(Lcom/android/gallery3d/b/j;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/android/gallery3d/b/j;)Landroid/graphics/BitmapRegionDecoder;
    .locals 3
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/a/ai;->nI:Lcom/android/gallery3d/a/p;

    invoke-static {v0, p1}, Lcom/android/gallery3d/a/p;->a(Lcom/android/gallery3d/a/p;Lcom/android/gallery3d/b/j;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 212
    :goto_0
    return-object v0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/a/ai;->nI:Lcom/android/gallery3d/a/p;

    invoke-static {v0}, Lcom/android/gallery3d/a/p;->b(Lcom/android/gallery3d/a/p;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/gallery3d/a/cy;->a(Lcom/android/gallery3d/b/j;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/android/gallery3d/a/ai;->nI:Lcom/android/gallery3d/a/p;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/a/p;->a(Lcom/android/gallery3d/a/p;I)I

    .line 211
    iget-object v1, p0, Lcom/android/gallery3d/a/ai;->nI:Lcom/android/gallery3d/a/p;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/a/p;->b(Lcom/android/gallery3d/a/p;I)I

    goto :goto_0
.end method
