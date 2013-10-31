.class public Lcom/android/gallery3d/a/cw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final HA:I = 0x9

.field public static final HB:I = 0xa

.field public static final HC:I = 0xb

.field public static final HD:I = 0x64

.field public static final HE:I = 0x65

.field public static final HF:I = 0x66

.field public static final HG:I = 0x67

.field public static final HH:I = 0x68

.field public static final HI:I = 0x69

.field public static final HJ:I = 0x6a

.field public static final HK:I = 0x6b

.field public static final HL:I = 0x6c

.field public static final HM:I = 0xc8

.field public static final Hw:I = 0x1

.field public static final Hx:I = 0x2

.field public static final Hy:I = 0x3

.field public static final Hz:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MediaDetails"

.field public static final jj:I = 0x7

.field public static final of:I = 0x8

.field public static final rA:I = 0x6

.field public static final rz:I = 0x5


# instance fields
.field private Hu:Ljava/util/TreeMap;

.field private Hv:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/cw;->Hu:Ljava/util/TreeMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/cw;->Hv:Ljava/util/HashMap;

    .line 65
    return-void
.end method

.method private static a(Lcom/android/gallery3d/a/cw;Landroid/media/ExifInterface;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-virtual {p1, p2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    const/16 v1, 0x66

    if-ne p3, v1, :cond_1

    .line 131
    new-instance v1, Lcom/android/gallery3d/a/n;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/gallery3d/a/n;-><init>(I)V

    .line 133
    invoke-virtual {p0, p3, v1}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p0, p3, v0}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Lcom/android/gallery3d/a/cw;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    .line 142
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 143
    const-string v0, "Flash"

    const/16 v1, 0x66

    invoke-static {p0, v2, v0, v1}, Lcom/android/gallery3d/a/cw;->a(Lcom/android/gallery3d/a/cw;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 146
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/a/cw;->bf(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 147
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/a/cw;->bf(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 149
    if-lez v0, :cond_0

    if-gtz v1, :cond_1

    .line 151
    :cond_0
    const-string v0, "ImageWidth"

    invoke-virtual {v2, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 152
    const-string v1, "ImageWidth"

    invoke-virtual {v2, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 154
    if-lez v0, :cond_3

    if-lez v1, :cond_3

    .line 155
    const-string v0, "ImageWidth"

    const/4 v1, 0x5

    invoke-static {p0, v2, v0, v1}, Lcom/android/gallery3d/a/cw;->a(Lcom/android/gallery3d/a/cw;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 157
    const-string v0, "ImageLength"

    const/4 v1, 0x6

    invoke-static {p0, v2, v0, v1}, Lcom/android/gallery3d/a/cw;->a(Lcom/android/gallery3d/a/cw;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 184
    :cond_1
    :goto_0
    const-string v0, "Make"

    const/16 v1, 0x64

    invoke-static {p0, v2, v0, v1}, Lcom/android/gallery3d/a/cw;->a(Lcom/android/gallery3d/a/cw;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 185
    const-string v0, "Model"

    const/16 v1, 0x65

    invoke-static {p0, v2, v0, v1}, Lcom/android/gallery3d/a/cw;->a(Lcom/android/gallery3d/a/cw;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 186
    const-string v0, "FNumber"

    const/16 v1, 0x69

    invoke-static {p0, v2, v0, v1}, Lcom/android/gallery3d/a/cw;->a(Lcom/android/gallery3d/a/cw;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 187
    const-string v0, "ISOSpeedRatings"

    const/16 v1, 0x6c

    invoke-static {p0, v2, v0, v1}, Lcom/android/gallery3d/a/cw;->a(Lcom/android/gallery3d/a/cw;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 188
    const-string v0, "WhiteBalance"

    const/16 v1, 0x68

    invoke-static {p0, v2, v0, v1}, Lcom/android/gallery3d/a/cw;->a(Lcom/android/gallery3d/a/cw;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 190
    const-string v0, "ExposureTime"

    const/16 v1, 0x6b

    invoke-static {p0, v2, v0, v1}, Lcom/android/gallery3d/a/cw;->a(Lcom/android/gallery3d/a/cw;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 193
    const-string v0, "FocalLength"

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 194
    cmpl-double v2, v0, v7

    if-eqz v2, :cond_2

    .line 195
    const/16 v2, 0x67

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 196
    const/16 v0, 0x67

    const v1, 0x7f0d0089

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/a/cw;->H(II)V

    .line 202
    :cond_2
    :goto_1
    return-void

    .line 161
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/a/cw;->bf(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 163
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/a/cw;->bf(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 164
    if-gtz v4, :cond_4

    .line 165
    const/16 v4, 0xa

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 170
    :cond_4
    :goto_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :try_start_1
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 173
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 174
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v9, v1

    move v1, v0

    move v0, v9

    .line 179
    :goto_3
    const/4 v3, 0x6

    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 180
    const/4 v0, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 200
    const-string v1, "MediaDetails"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 168
    :cond_5
    const/16 v4, 0xa

    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 176
    :catch_1
    move-exception v3

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_3
.end method


# virtual methods
.method public H(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/a/cw;->Hv:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/a/cw;->Hu:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public bf(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/a/cw;->Hu:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bg(I)Z
    .locals 2
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/a/cw;->Hv:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bh(I)I
    .locals 2
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/a/cw;->Hv:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/a/cw;->Hu:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/a/cw;->Hu:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method
