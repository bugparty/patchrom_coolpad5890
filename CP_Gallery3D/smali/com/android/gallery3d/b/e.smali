.class public Lcom/android/gallery3d/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final gt:Ljava/util/Comparator;

.field public static final gu:I

.field public static final gv:I

.field public static final gw:I

.field private static final gx:[Lcom/android/gallery3d/a/dd;

.field private static final gy:[Lcom/android/gallery3d/a/dd;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcom/android/gallery3d/b/r;

    invoke-direct {v0}, Lcom/android/gallery3d/b/r;-><init>()V

    sput-object v0, Lcom/android/gallery3d/b/e;->gt:Ljava/util/Comparator;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v2, v3}, Landroid/provider/MediaStore;->getAvailablePath(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/b/y;->z(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/b/e;->gu:I

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v2, v3}, Landroid/provider/MediaStore;->getAvailablePath(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/b/y;->z(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/b/e;->gv:I

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v2, v3}, Landroid/provider/MediaStore;->getAvailablePath(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Imported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/b/y;->z(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/b/e;->gw:I

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/gallery3d/a/dd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/local/all/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/gallery3d/b/e;->gu:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/local/image/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/gallery3d/b/e;->gu:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/local/video/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/gallery3d/b/e;->gu:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/gallery3d/b/e;->gx:[Lcom/android/gallery3d/a/dd;

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/gallery3d/a/dd;

    const-string v1, "/local/all/-1563200424"

    invoke-static {v1}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "/local/image/-1563200424"

    invoke-static {v1}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "/local/video/-1563200424"

    invoke-static {v1}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "/local/all/-2067970974"

    invoke-static {v2}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/local/image/-2067970974"

    invoke-static {v2}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/local/video/-2067970974"

    invoke-static {v2}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/b/e;->gy:[Lcom/android/gallery3d/a/dd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static b(Lcom/android/gallery3d/a/dd;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 54
    sget-object v2, Lcom/android/gallery3d/b/e;->gx:[Lcom/android/gallery3d/a/dd;

    aget-object v2, v2, v0

    if-eq v2, p0, :cond_0

    sget-object v2, Lcom/android/gallery3d/b/e;->gx:[Lcom/android/gallery3d/a/dd;

    aget-object v2, v2, v1

    if-eq v2, p0, :cond_0

    sget-object v2, Lcom/android/gallery3d/b/e;->gx:[Lcom/android/gallery3d/a/dd;

    aget-object v2, v2, v3

    if-eq v2, p0, :cond_0

    sget-object v2, Lcom/android/gallery3d/b/e;->gy:[Lcom/android/gallery3d/a/dd;

    aget-object v2, v2, v0

    if-eq v2, p0, :cond_0

    sget-object v2, Lcom/android/gallery3d/b/e;->gy:[Lcom/android/gallery3d/a/dd;

    aget-object v2, v2, v1

    if-eq v2, p0, :cond_0

    sget-object v2, Lcom/android/gallery3d/b/e;->gy:[Lcom/android/gallery3d/a/dd;

    aget-object v2, v2, v3

    if-eq v2, p0, :cond_0

    sget-object v2, Lcom/android/gallery3d/b/e;->gy:[Lcom/android/gallery3d/a/dd;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    if-eq v2, p0, :cond_0

    sget-object v2, Lcom/android/gallery3d/b/e;->gy:[Lcom/android/gallery3d/a/dd;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    if-eq v2, p0, :cond_0

    sget-object v2, Lcom/android/gallery3d/b/e;->gy:[Lcom/android/gallery3d/a/dd;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    if-ne v2, p0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method
