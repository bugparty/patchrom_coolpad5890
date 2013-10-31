.class public Lcom/android/gallery3d/ui/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/aq;


# static fields
.field private static final TAG:Ljava/lang/String; = "TileImageViewAdapter"


# instance fields
.field protected fx:I

.field protected fy:I

.field protected lb:Landroid/graphics/BitmapRegionDecoder;

.field protected sg:Landroid/graphics/Bitmap;

.field protected sh:I

.field protected si:Z

.field private final sj:Landroid/graphics/Rect;

.field private final sk:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/bl;->sj:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/bl;->sk:Landroid/graphics/Rect;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/bl;->sj:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/bl;->sk:Landroid/graphics/Rect;

    .line 44
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/ui/bl;->sg:Landroid/graphics/Bitmap;

    .line 45
    iput-object p2, p0, Lcom/android/gallery3d/ui/bl;->lb:Landroid/graphics/BitmapRegionDecoder;

    .line 46
    invoke-virtual {p2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/bl;->fx:I

    .line 47
    invoke-virtual {p2}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/bl;->fy:I

    .line 48
    invoke-direct {p0}, Lcom/android/gallery3d/ui/bl;->dL()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/bl;->sh:I

    .line 49
    return-void
.end method

.method private dL()I
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/gallery3d/ui/bl;->fx:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/bl;->sg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->ceilLog2(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/graphics/Bitmap;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/ui/bl;->sg:Landroid/graphics/Bitmap;

    .line 62
    iput p2, p0, Lcom/android/gallery3d/ui/bl;->fx:I

    .line 63
    iput p3, p0, Lcom/android/gallery3d/ui/bl;->fy:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/bl;->lb:Landroid/graphics/BitmapRegionDecoder;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/bl;->sh:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/bl;->si:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(IIII)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/bl;->lb:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 121
    :goto_0
    monitor-exit p0

    return-object v0

    .line 86
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/bl;->sk:Landroid/graphics/Rect;

    .line 87
    iget-object v3, p0, Lcom/android/gallery3d/ui/bl;->sj:Landroid/graphics/Rect;

    .line 88
    shl-int v1, p4, p1

    add-int/2addr v1, p2

    shl-int v4, p4, p1

    add-int/2addr v4, p3

    invoke-virtual {v2, p2, p3, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 89
    const/4 v1, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/gallery3d/ui/bl;->fx:I

    iget v6, p0, Lcom/android/gallery3d/ui/bl;->fy:I

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 92
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v1

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 94
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 95
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 96
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 97
    shl-int v4, v7, p1

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 102
    iget-object v4, p0, Lcom/android/gallery3d/ui/bl;->lb:Landroid/graphics/BitmapRegionDecoder;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    :try_start_2
    iget-object v5, p0, Lcom/android/gallery3d/ui/bl;->lb:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v5, v3, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 104
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :try_start_3
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 84
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 110
    :cond_1
    if-nez v1, :cond_2

    .line 111
    :try_start_6
    const-string v1, "TileImageViewAdapter"

    const-string v2, "fail in decoding region"

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 117
    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    shr-int/2addr v5, p1

    int-to-float v5, v5

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v2

    shr-int/2addr v2, p1

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v4, v1, v5, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 120
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method public declared-synchronized b(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    iput-object v0, p0, Lcom/android/gallery3d/ui/bl;->lb:Landroid/graphics/BitmapRegionDecoder;

    .line 71
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/bl;->fx:I

    .line 72
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/bl;->fy:I

    .line 73
    invoke-direct {p0}, Lcom/android/gallery3d/ui/bl;->dL()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/bl;->sh:I

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/bl;->si:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/gallery3d/ui/bl;->sg:Landroid/graphics/Bitmap;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/bl;->fx:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/bl;->fy:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/bl;->sh:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/bl;->lb:Landroid/graphics/BitmapRegionDecoder;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/bl;->si:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dM()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/bl;->si:Z

    .line 147
    return-void
.end method

.method public declared-synchronized i()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/bl;->sg:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/gallery3d/ui/bl;->fy:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/gallery3d/ui/bl;->fx:I

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/gallery3d/ui/bl;->sh:I

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/bl;->si:Z

    return v0
.end method
