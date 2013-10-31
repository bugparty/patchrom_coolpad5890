.class public Lcom/android/gallery3d/a/al;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraExif"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BIIZ)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    const/4 v0, 0x1

    .line 141
    if-eqz p3, :cond_0

    .line 142
    add-int/lit8 v0, p2, -0x1

    add-int/2addr p1, v0

    .line 143
    const/4 v0, -0x1

    .line 146
    :cond_0
    const/4 v1, 0x0

    .line 147
    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-lez p2, :cond_1

    .line 148
    shl-int/lit8 v1, v1, 0x8

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 149
    add-int/2addr p1, v0

    move p2, v2

    goto :goto_0

    .line 151
    :cond_1
    return v1
.end method

.method private static a(Ljava/io/InputStream;[BI)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 156
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 v0, 0x1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 157
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Ljava/io/InputStream;)I
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x6

    const/4 v0, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_1

    .line 135
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 32
    :cond_1
    const/16 v2, 0x8

    new-array v3, v2, [B

    .line 36
    :cond_2
    :goto_1
    invoke-static {p0, v3, v8}, Lcom/android/gallery3d/a/al;->a(Ljava/io/InputStream;[BI)Z

    move-result v2

    if-eqz v2, :cond_b

    aget-byte v2, v3, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xff

    if-ne v2, v4, :cond_b

    .line 37
    aget-byte v2, v3, v0

    and-int/lit16 v4, v2, 0xff

    .line 40
    const/16 v2, 0xff

    if-eq v4, v2, :cond_2

    .line 45
    const/16 v2, 0xd8

    if-eq v4, v2, :cond_2

    if-eq v4, v0, :cond_2

    .line 49
    const/16 v2, 0xd9

    if-eq v4, v2, :cond_0

    const/16 v2, 0xda

    if-eq v4, v2, :cond_0

    .line 54
    invoke-static {p0, v3, v8}, Lcom/android/gallery3d/a/al;->a(Ljava/io/InputStream;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-static {v3, v1, v8, v1}, Lcom/android/gallery3d/a/al;->a([BIIZ)I

    move-result v2

    .line 58
    if-ge v2, v8, :cond_3

    .line 59
    const-string v0, "CameraExif"

    const-string v2, "Invalid length"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_3
    add-int/lit8 v2, v2, -0x2

    .line 65
    const/16 v5, 0xe1

    if-ne v4, v5, :cond_4

    if-lt v2, v6, :cond_4

    .line 66
    invoke-static {p0, v3, v6}, Lcom/android/gallery3d/a/al;->a(Ljava/io/InputStream;[BI)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    add-int/lit8 v2, v2, -0x6

    .line 68
    invoke-static {v3, v1, v7, v1}, Lcom/android/gallery3d/a/al;->a([BIIZ)I

    move-result v4

    const v5, 0x45786966

    if-ne v4, v5, :cond_4

    invoke-static {v3, v7, v8, v1}, Lcom/android/gallery3d/a/al;->a([BIIZ)I

    move-result v4

    if-nez v4, :cond_4

    .line 84
    :goto_2
    const/16 v3, 0x8

    if-le v2, v3, :cond_a

    .line 86
    new-array v6, v2, [B

    .line 87
    invoke-static {p0, v6, v2}, Lcom/android/gallery3d/a/al;->a(Ljava/io/InputStream;[BI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    invoke-static {v6, v1, v7, v1}, Lcom/android/gallery3d/a/al;->a([BIIZ)I

    move-result v3

    .line 93
    const v4, 0x49492a00

    if-eq v3, v4, :cond_5

    const v4, 0x4d4d002a

    if-eq v3, v4, :cond_5

    .line 94
    const-string v0, "CameraExif"

    const-string v2, "Invalid byte order"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_4
    int-to-long v4, v2

    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 97
    :cond_5
    const v4, 0x49492a00

    if-ne v3, v4, :cond_7

    .line 100
    :goto_3
    invoke-static {v6, v7, v7, v0}, Lcom/android/gallery3d/a/al;->a([BIIZ)I

    move-result v3

    add-int/lit8 v4, v3, 0x2

    .line 101
    const/16 v3, 0xa

    if-lt v4, v3, :cond_6

    if-le v4, v2, :cond_8

    .line 102
    :cond_6
    const-string v0, "CameraExif"

    const-string v2, "Invalid offset"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 97
    goto :goto_3

    .line 105
    :cond_8
    add-int v3, v1, v4

    .line 106
    sub-int v4, v2, v4

    .line 109
    add-int/lit8 v2, v3, -0x2

    invoke-static {v6, v2, v8, v0}, Lcom/android/gallery3d/a/al;->a([BIIZ)I

    move-result v2

    move v5, v4

    move v4, v3

    .line 110
    :goto_4
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_a

    const/16 v2, 0xc

    if-lt v5, v2, :cond_a

    .line 112
    invoke-static {v6, v4, v8, v0}, Lcom/android/gallery3d/a/al;->a([BIIZ)I

    move-result v2

    .line 113
    const/16 v7, 0x112

    if-ne v2, v7, :cond_9

    .line 115
    add-int/lit8 v2, v4, 0x8

    invoke-static {v6, v2, v8, v0}, Lcom/android/gallery3d/a/al;->a([BIIZ)I

    move-result v0

    .line 116
    packed-switch v0, :pswitch_data_0

    .line 126
    :pswitch_1
    const-string v0, "CameraExif"

    const-string v2, "Unsupported orientation"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 120
    :pswitch_2
    const/16 v1, 0xb4

    goto/16 :goto_0

    .line 122
    :pswitch_3
    const/16 v1, 0x5a

    goto/16 :goto_0

    .line 124
    :pswitch_4
    const/16 v1, 0x10e

    goto/16 :goto_0

    .line 129
    :cond_9
    add-int/lit8 v2, v4, 0xc

    .line 130
    add-int/lit8 v4, v5, -0xc

    move v5, v4

    move v4, v2

    move v2, v3

    goto :goto_4

    .line 134
    :cond_a
    const-string v0, "CameraExif"

    const-string v2, "Orientation not found"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    move v2, v1

    goto/16 :goto_2

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
