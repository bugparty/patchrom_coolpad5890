.class Lcom/android/gallery3d/app/do;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Dd:Ljava/lang/String; = "bookmark"

.field private static final De:I = 0x64

.field private static final Df:I = 0x2800

.field private static final Dg:I = 0x1

.field private static final Dh:I = 0x7530

.field private static final Di:I = 0x1d4c0

.field private static final TAG:Ljava/lang/String; = "Bookmarker"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object p1, p0, Lcom/android/gallery3d/app/do;->mContext:Landroid/content/Context;

    .line 425
    return-void
.end method


# virtual methods
.method public c(Landroid/net/Uri;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/do;->mContext:Landroid/content/Context;

    const-string v1, "bookmark"

    const/16 v2, 0x64

    const/16 v3, 0x2800

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/b/ae;->a(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v0

    .line 433
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 434
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 435
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 437
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 438
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 439
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/gallery3d/common/BlobCache;->insert(J[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    const-string v1, "Bookmarker"

    const-string v2, "setBookmark failed"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/app/bw;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public i(Landroid/net/Uri;)Ljava/lang/Integer;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/do;->mContext:Landroid/content/Context;

    const-string v2, "bookmark"

    const/16 v3, 0x64

    const/16 v4, 0x2800

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/b/ae;->a(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v1

    .line 451
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/common/BlobCache;->lookup(J)[B

    move-result-object v1

    .line 452
    if-nez v1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-object v0

    .line 454
    :cond_1
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 457
    invoke-static {v2}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 459
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 461
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    const/16 v1, 0x7530

    if-lt v3, v1, :cond_0

    const v1, 0x1d4c0

    if-lt v2, v1, :cond_0

    add-int/lit16 v1, v2, -0x7530

    if-gt v3, v1, :cond_0

    .line 469
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v1

    .line 471
    const-string v2, "Bookmarker"

    const-string v3, "getBookmark failed"

    invoke-static {v2, v3, v1}, Lcom/android/gallery3d/app/bw;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
