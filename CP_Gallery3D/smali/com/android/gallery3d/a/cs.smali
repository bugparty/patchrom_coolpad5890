.class public Lcom/android/gallery3d/a/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/ab;


# instance fields
.field aI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/android/gallery3d/a/cs;->aI:Ljava/lang/String;

    .line 277
    return-void
.end method


# virtual methods
.method public bridge synthetic c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/cs;->h(Lcom/android/gallery3d/b/j;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/android/gallery3d/b/j;)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/gallery3d/a/cs;->aI:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/gallery3d/a/cy;->a(Lcom/android/gallery3d/b/j;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
