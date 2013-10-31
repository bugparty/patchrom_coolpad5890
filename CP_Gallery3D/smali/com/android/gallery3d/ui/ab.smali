.class public Lcom/android/gallery3d/ui/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheStorageUsageInfo"


# instance fields
.field private et:Lcom/android/gallery3d/app/bm;

.field private ia:J

.field private ib:J

.field private ic:J

.field private ie:J

.field private if:J

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/bm;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/gallery3d/ui/ab;->et:Lcom/android/gallery3d/app/bm;

    .line 51
    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ab;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public bt()J
    .locals 4

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/android/gallery3d/ui/ab;->ib:J

    iget-wide v2, p0, Lcom/android/gallery3d/ui/ab;->ic:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/gallery3d/ui/ab;->ie:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/gallery3d/ui/ab;->if:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public bu()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/android/gallery3d/ui/ab;->ib:J

    return-wide v0
.end method

.method public bv()J
    .locals 4

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/android/gallery3d/ui/ab;->ia:J

    iget-wide v2, p0, Lcom/android/gallery3d/ui/ab;->ib:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public d(J)V
    .locals 2
    .parameter

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/gallery3d/ui/ab;->if:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/ab;->if:J

    .line 56
    return-void
.end method

.method public g(Lcom/android/gallery3d/b/j;)V
    .locals 8
    .parameter

    .prologue
    .line 59
    const-string v0, "CacheStorageUsageInfo"

    const-string v1, "enter loadStorageInfo"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/bw;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->eb()Ljava/io/File;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/ui/ab;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 69
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 72
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v4, v0

    .line 73
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    .line 75
    mul-long v6, v2, v0

    iput-wide v6, p0, Lcom/android/gallery3d/ui/ab;->ia:J

    .line 76
    sub-long/2addr v0, v4

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/ui/ab;->ib:J

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/ui/ab;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ao;->di()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/ab;->ic:J

    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/ui/ab;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ao;->dj()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/ab;->ie:J

    .line 79
    return-void
.end method

.method public getTotalBytes()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/android/gallery3d/ui/ab;->ia:J

    return-wide v0
.end method
