.class public Lcom/android/gallery3d/ui/ei;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FM:I = 0xff0000

.field private static final FN:I = 0x10

.field private static final FO:I = 0xff00

.field private static final FP:I = 0x8

.field private static final FQ:I = 0xff

.field private static final FR:I = 0x4

.field private static final FS:I = 0x9

.field private static final FT:I = 0x100

.field private static final FU:[I = null

.field public static final FV:I = 0x1

.field public static final FW:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 31
    const/16 v0, 0x900

    new-array v0, v0, [I

    sput-object v0, Lcom/android/gallery3d/ui/ei;->FU:[I

    move v4, v1

    move v0, v1

    .line 40
    :goto_0
    const/16 v2, 0x100

    if-ge v4, v2, :cond_1

    move v2, v0

    move v0, v1

    .line 41
    :goto_1
    const/16 v3, 0x9

    if-ge v0, v3, :cond_0

    .line 42
    sget-object v5, Lcom/android/gallery3d/ui/ei;->FU:[I

    add-int/lit8 v3, v2, 0x1

    aput v4, v5, v2

    .line 41
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private static a([I[IIII)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    const/4 v1, 0x0

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 74
    const/4 v4, 0x0

    .line 75
    const/4 v3, 0x0

    .line 76
    const/4 v2, 0x0

    .line 77
    const/4 v0, -0x4

    :goto_1
    const/4 v5, 0x4

    if-gt v0, v5, :cond_0

    .line 78
    invoke-static {v0, p2, p4}, Lcom/android/gallery3d/ui/ei;->g(III)I

    move-result v5

    add-int/2addr v5, v6

    aget v5, p0, v5

    .line 79
    const/high16 v7, 0xff

    and-int/2addr v7, v5

    shr-int/lit8 v7, v7, 0x10

    add-int/2addr v4, v7

    .line 80
    const v7, 0xff00

    and-int/2addr v7, v5

    shr-int/lit8 v7, v7, 0x8

    add-int/2addr v3, v7

    .line 81
    and-int/lit16 v5, v5, 0xff

    add-int/2addr v2, v5

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_0
    const/4 v0, 0x0

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    move v0, v1

    :goto_2
    if-ge v2, p2, :cond_1

    .line 85
    const/high16 v7, -0x100

    sget-object v8, Lcom/android/gallery3d/ui/ei;->FU:[I

    aget v8, v8, v5

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    sget-object v8, Lcom/android/gallery3d/ui/ei;->FU:[I

    aget v8, v8, v4

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    sget-object v8, Lcom/android/gallery3d/ui/ei;->FU:[I

    aget v8, v8, v3

    or-int/2addr v7, v8

    aput v7, p1, v0

    .line 92
    add-int/lit8 v7, v2, -0x4

    invoke-static {v7, p2, p4}, Lcom/android/gallery3d/ui/ei;->g(III)I

    move-result v7

    add-int/2addr v7, v6

    aget v7, p0, v7

    .line 93
    add-int/lit8 v8, v2, 0x4

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8, p2, p4}, Lcom/android/gallery3d/ui/ei;->g(III)I

    move-result v8

    add-int/2addr v8, v6

    aget v8, p0, v8

    .line 94
    const/high16 v9, 0xff

    and-int/2addr v9, v8

    const/high16 v10, 0xff

    and-int/2addr v10, v7

    sub-int/2addr v9, v10

    shr-int/lit8 v9, v9, 0x10

    add-int/2addr v5, v9

    .line 95
    const v9, 0xff00

    and-int/2addr v9, v8

    const v10, 0xff00

    and-int/2addr v10, v7

    sub-int/2addr v9, v10

    shr-int/lit8 v9, v9, 0x8

    add-int/2addr v4, v9

    .line 96
    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v7, v7, 0xff

    sub-int v7, v8, v7

    add-int/2addr v3, v7

    .line 83
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, p3

    goto :goto_2

    .line 72
    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int v0, v6, p2

    move v6, v0

    goto :goto_0

    .line 99
    :cond_2
    return-void
.end method

.method public static b(Landroid/graphics/Bitmap;II)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 61
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 62
    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 63
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 64
    mul-int v0, v3, v7

    new-array v0, v0, [I

    .line 65
    invoke-static {v1, v0, v3, v7, p1}, Lcom/android/gallery3d/ui/ei;->a([I[IIII)V

    .line 66
    invoke-static {v0, v1, v7, v3, p2}, Lcom/android/gallery3d/ui/ei;->a([I[IIII)V

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 67
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 68
    return-void
.end method

.method private static g(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    if-ltz p0, :cond_0

    if-ge p0, p1, :cond_0

    .line 52
    :goto_0
    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    if-gez p0, :cond_1

    add-int v0, p0, p1

    :goto_1
    move p0, v0

    goto :goto_0

    :cond_1
    sub-int v0, p0, p1

    goto :goto_1

    :cond_2
    if-gez p0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, p1, -0x1

    goto :goto_1
.end method
