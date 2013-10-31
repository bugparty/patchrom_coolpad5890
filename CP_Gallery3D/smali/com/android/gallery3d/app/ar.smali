.class public Lcom/android/gallery3d/app/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterUtils"

.field public static final ma:I = 0x1

.field public static final mb:I = 0x2

.field public static final mc:I = 0x4

.field public static final md:I = 0x8

.field public static final me:I = 0x10

.field public static final mf:I = 0x20

.field public static final mg:I = 0x1

.field public static final mh:I = 0x2

.field public static final mi:I = 0x4

.field private static final mj:I = 0x0

.field private static final mk:I = 0x1

.field private static final ml:I = 0x2

.field private static final mm:I = 0x3

.field private static final mn:I = 0x4

.field private static final mo:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 177
    packed-switch p1, :pswitch_data_0

    .line 188
    :goto_0
    return-object p0

    .line 179
    :pswitch_0
    const/4 v0, 0x2

    .line 188
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/filter/mediatype/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 182
    :pswitch_1
    const/4 v0, 0x4

    .line 183
    goto :goto_1

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 234
    aget-boolean v0, p1, v1

    if-eqz v0, :cond_0

    .line 259
    :goto_0
    return-object p0

    .line 236
    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/a/dd;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 237
    aget-object v0, v3, v1

    const-string v2, "cluster"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    aput-boolean v4, p1, v1

    .line 239
    aget-object v0, v3, v4

    invoke-static {v0}, Lcom/android/gallery3d/a/dd;->C(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object p0, v0, v1

    goto :goto_0

    .line 242
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 243
    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_5

    .line 244
    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    aget-object v2, v3, v0

    const-string v5, "{"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 246
    const-string v2, "{"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    aget-object v2, v3, v0

    invoke-static {v2}, Lcom/android/gallery3d/a/dd;->C(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v2, v1

    .line 248
    :goto_2
    array-length v6, v5

    if-ge v2, v6, :cond_3

    .line 249
    if-lez v2, :cond_2

    .line 250
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_2
    aget-object v6, v5, v2

    invoke-static {v6, p1}, Lcom/android/gallery3d/app/ar;->a(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 254
    :cond_3
    const-string v2, "}"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 256
    :cond_4
    aget-object v2, v3, v0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 259
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static a(Lcom/android/gallery3d/a/dd;[I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/gallery3d/app/ar;->a(Lcom/android/gallery3d/a/dd;[IZ)V

    .line 119
    return-void
.end method

.method private static a(Lcom/android/gallery3d/a/dd;[IZ)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/android/gallery3d/a/dd;->gx()[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 124
    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_1

    .line 125
    aget-object v2, v3, v0

    const-string v4, "{"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    aget-object v2, v3, v0

    invoke-static {v2}, Lcom/android/gallery3d/a/dd;->C(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v2, v1

    .line 127
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 128
    aget-object v5, v4, v2

    invoke-static {v5}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v5

    .line 129
    invoke-static {v5, p1, p2}, Lcom/android/gallery3d/app/ar;->a(Lcom/android/gallery3d/a/dd;[IZ)V

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 124
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    aget-object v0, v3, v1

    const-string v2, "cluster"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    array-length v0, v3

    if-ne v0, v7, :cond_2

    .line 138
    const/4 p2, 0x1

    .line 141
    :cond_2
    aget-object v0, v3, v6

    invoke-static {v0}, Lcom/android/gallery3d/app/ar;->l(Ljava/lang/String;)I

    move-result v0

    .line 142
    aget v2, p1, v1

    or-int/2addr v2, v0

    aput v2, p1, v1

    .line 143
    aput v0, p1, v7

    .line 144
    if-eqz p2, :cond_3

    .line 145
    aget v1, p1, v6

    or-int/2addr v0, v1

    aput v0, p1, v6

    .line 148
    :cond_3
    return-void
.end method

.method private static a(Lcom/android/gallery3d/app/ag;IZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/app/ag;->c(IZ)V

    .line 168
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/android/gallery3d/app/ag;IZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-virtual {p0, p1, p3}, Lcom/android/gallery3d/app/ag;->c(IZ)V

    .line 172
    return-void
.end method

.method public static a(Lcom/android/gallery3d/app/ag;Lcom/android/gallery3d/a/dd;Z)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 80
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 81
    invoke-static {p1, v0}, Lcom/android/gallery3d/app/ar;->a(Lcom/android/gallery3d/a/dd;[I)V

    .line 82
    aget v4, v0, v2

    .line 83
    aget v5, v0, v1

    .line 84
    const/4 v3, 0x3

    aget v6, v0, v3

    .line 85
    aget v7, v0, v10

    .line 86
    const/4 v3, 0x5

    aget v8, v0, v3

    .line 88
    const/4 v9, 0x2

    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_1

    move v3, v1

    :goto_0
    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {p0, v9, v3, v0}, Lcom/android/gallery3d/app/ar;->a(Lcom/android/gallery3d/app/ag;IZZ)V

    .line 90
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_3

    move v3, v1

    :goto_2
    and-int/lit8 v0, v7, 0x4

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-static {p0, v10, v3, v0}, Lcom/android/gallery3d/app/ar;->a(Lcom/android/gallery3d/app/ag;IZZ)V

    .line 92
    const/16 v9, 0x8

    and-int/lit8 v0, v4, 0x8

    if-eqz v0, :cond_5

    move v3, v1

    :goto_4
    and-int/lit8 v0, v7, 0x8

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    invoke-static {p0, v9, v3, v0}, Lcom/android/gallery3d/app/ar;->a(Lcom/android/gallery3d/app/ag;IZZ)V

    .line 94
    const/16 v9, 0x20

    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_7

    move v3, v1

    :goto_6
    and-int/lit8 v0, v7, 0x20

    if-eqz v0, :cond_8

    move v0, v1

    :goto_7
    invoke-static {p0, v9, v3, v0}, Lcom/android/gallery3d/app/ar;->a(Lcom/android/gallery3d/app/ag;IZZ)V

    .line 97
    if-eqz p2, :cond_0

    if-nez v4, :cond_9

    :cond_0
    move v0, v1

    :goto_8
    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/ag;->d(IZ)V

    .line 99
    const v9, 0x7f0a003f

    if-nez v4, :cond_a

    move v3, v1

    :goto_9
    if-nez v7, :cond_b

    move v0, v1

    :goto_a
    invoke-static {p0, v9, v3, v0}, Lcom/android/gallery3d/app/ar;->a(Lcom/android/gallery3d/app/ag;IZZ)V

    .line 104
    const v7, 0x7f0d0068

    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_c

    move v4, v1

    :goto_b
    and-int/lit8 v0, v5, 0x1

    if-nez v0, :cond_d

    if-nez v6, :cond_d

    move v3, v1

    :goto_c
    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_e

    move v0, v1

    :goto_d
    invoke-static {p0, v7, v4, v3, v0}, Lcom/android/gallery3d/app/ar;->a(Lcom/android/gallery3d/app/ag;IZZZ)V

    .line 108
    const v7, 0x7f0d0069

    and-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_f

    move v4, v1

    :goto_e
    and-int/lit8 v0, v5, 0x2

    if-nez v0, :cond_10

    if-nez v6, :cond_10

    move v3, v1

    :goto_f
    and-int/lit8 v0, v8, 0x2

    if-eqz v0, :cond_11

    move v0, v1

    :goto_10
    invoke-static {p0, v7, v4, v3, v0}, Lcom/android/gallery3d/app/ar;->a(Lcom/android/gallery3d/app/ag;IZZZ)V

    .line 112
    const v4, 0x7f0d006a

    if-nez v5, :cond_12

    move v3, v1

    :goto_11
    if-eqz v5, :cond_13

    if-nez v6, :cond_13

    move v0, v1

    :goto_12
    if-nez v8, :cond_14

    :goto_13
    invoke-static {p0, v4, v3, v0, v1}, Lcom/android/gallery3d/app/ar;->a(Lcom/android/gallery3d/app/ag;IZZZ)V

    .line 114
    return-void

    :cond_1
    move v3, v2

    .line 88
    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    move v3, v2

    .line 90
    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v3, v2

    .line 92
    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    move v3, v2

    .line 94
    goto :goto_6

    :cond_8
    move v0, v2

    goto :goto_7

    :cond_9
    move v0, v2

    .line 97
    goto :goto_8

    :cond_a
    move v3, v2

    .line 99
    goto :goto_9

    :cond_b
    move v0, v2

    goto :goto_a

    :cond_c
    move v4, v2

    .line 104
    goto :goto_b

    :cond_d
    move v3, v2

    goto :goto_c

    :cond_e
    move v0, v2

    goto :goto_d

    :cond_f
    move v4, v2

    .line 108
    goto :goto_e

    :cond_10
    move v3, v2

    goto :goto_f

    :cond_11
    move v0, v2

    goto :goto_10

    :cond_12
    move v3, v2

    .line 112
    goto :goto_11

    :cond_13
    move v0, v2

    goto :goto_12

    :cond_14
    move v1, v2

    goto :goto_13
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 194
    sparse-switch p1, :sswitch_data_0

    .line 214
    :goto_0
    return-object p0

    .line 196
    :sswitch_0
    const-string v0, "time"

    .line 214
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/cluster/{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 199
    :sswitch_1
    const-string v0, "location"

    goto :goto_1

    .line 202
    :sswitch_2
    const-string v0, "tag"

    goto :goto_1

    .line 205
    :sswitch_3
    const-string v0, "size"

    goto :goto_1

    .line 208
    :sswitch_4
    const-string v0, "face"

    goto :goto_1

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method private static b(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 269
    aget-boolean v0, p1, v1

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-object p0

    .line 271
    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/a/dd;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 272
    aget-object v0, v3, v1

    const-string v2, "filter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object v0, v3, v4

    const-string v2, "mediatype"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    aput-boolean v4, p1, v1

    .line 274
    const/4 v0, 0x3

    aget-object v0, v3, v0

    invoke-static {v0}, Lcom/android/gallery3d/a/dd;->C(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object p0, v0, v1

    goto :goto_0

    .line 277
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 278
    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_5

    .line 279
    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    aget-object v2, v3, v0

    const-string v5, "{"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 281
    const-string v2, "{"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    aget-object v2, v3, v0

    invoke-static {v2}, Lcom/android/gallery3d/a/dd;->C(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v2, v1

    .line 283
    :goto_2
    array-length v6, v5

    if-ge v2, v6, :cond_3

    .line 284
    if-lez v2, :cond_2

    .line 285
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_2
    aget-object v6, v5, v2

    invoke-static {v6, p1}, Lcom/android/gallery3d/app/ar;->b(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 289
    :cond_3
    const-string v2, "}"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 291
    :cond_4
    aget-object v2, v3, v0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 294
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-static {p0}, Lcom/android/gallery3d/app/ar;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/gallery3d/app/ar;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-static {p0}, Lcom/android/gallery3d/app/ar;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/gallery3d/app/ar;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static l(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 151
    const-string v0, "time"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x2

    .line 162
    :goto_0
    return v0

    .line 153
    :cond_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const/4 v0, 0x4

    goto :goto_0

    .line 155
    :cond_1
    const-string v0, "tag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    const/16 v0, 0x8

    goto :goto_0

    .line 157
    :cond_2
    const-string v0, "size"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    const/16 v0, 0x10

    goto :goto_0

    .line 159
    :cond_3
    const-string v0, "face"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    const/16 v0, 0x20

    goto :goto_0

    .line 162
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 229
    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 230
    invoke-static {p0, v0}, Lcom/android/gallery3d/app/ar;->a(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 264
    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 265
    invoke-static {p0, v0}, Lcom/android/gallery3d/app/ar;->b(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
