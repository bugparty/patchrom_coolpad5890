.class public Lcom/android/gallery3d/b/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile DA:Ljava/lang/Thread; = null

.field private static volatile DB:Z = false

.field private static final DC:D = 0.017453292519943295

.field private static final DD:D = 6367000.0

.field private static final Dn:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final Do:Ljava/lang/String; = "com.google.android.maps.MapsActivity"

.field private static final Dp:Ljava/lang/String; = "image/*"

.field private static final Dq:Ljava/lang/String; = "video/*"

.field private static final Dr:Ljava/lang/String; = "*/*"

.field private static final Ds:Ljava/lang/String; = "vnd.android.cursor.dir/image"

.field private static final Dt:Ljava/lang/String; = "vnd.android.cursor.dir/video"

.field private static final Du:Ljava/lang/String; = "editor-update-"

.field private static final Dv:Ljava/lang/String; = "has-editor-"

.field private static final Dw:Ljava/lang/String; = "camera-update"

.field private static final Dx:Ljava/lang/String; = "has-camera"

.field private static Dy:Landroid/content/Context; = null

.field static Dz:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "GalleryUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/high16 v0, -0x4080

    sput v0, Lcom/android/gallery3d/b/y;->Dz:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(D)D
    .locals 2
    .parameter

    .prologue
    .line 160
    const-wide v0, 0x4099240000000000L

    div-double v0, p0, v0

    return-wide v0
.end method

.method public static a(DDDD)D
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v2, 0x3f91df46a2529d39L

    .line 128
    sub-double v0, p0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    sub-double v0, p2, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 130
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/android/gallery3d/b/y;->b(DDDD)D

    move-result-wide v0

    .line 146
    :goto_0
    return-wide v0

    .line 133
    :cond_1
    sub-double v0, p0, p4

    .line 136
    sub-double v2, p2, p6

    .line 140
    add-double v4, p0, p4

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 141
    mul-double/2addr v4, v4

    .line 142
    mul-double/2addr v0, v0

    mul-double/2addr v4, v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 143
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 146
    const-wide v2, 0x415849c600000000L

    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x3

    .line 280
    .line 281
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 283
    const-string v2, "*/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    :cond_0
    :goto_0
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    or-int/lit8 v0, v0, 0x4

    .line 299
    :cond_1
    return v0

    .line 285
    :cond_2
    const-string v2, "image/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "vnd.android.cursor.dir/image"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 287
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 288
    :cond_4
    const-string v2, "video/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "vnd.android.cursor.dir/video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    :cond_5
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;DD)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(D[J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 337
    const-wide v0, 0x3ee4f8b588e368f1L

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/gallery3d/b/y;->a(D[JD)V

    .line 338
    return-void
.end method

.method private static a(D[JD)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/high16 v8, 0x3ff0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 341
    double-to-long v0, p0

    .line 342
    long-to-double v2, v0

    sub-double v2, p0, v2

    .line 343
    const-wide v4, 0x3eb0c6f7a0b5ed8dL

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_0

    cmpl-double v4, p3, v8

    if-lez v4, :cond_1

    .line 344
    :cond_0
    long-to-double v0, v0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    aput-wide v0, p2, v6

    .line 345
    const-wide/16 v0, 0x1

    aput-wide v0, p2, v7

    .line 352
    :goto_0
    return-void

    .line 347
    :cond_1
    div-double v4, v8, v2

    div-double v2, p3, v2

    invoke-static {v4, v5, p2, v2, v3}, Lcom/android/gallery3d/b/y;->a(D[JD)V

    .line 348
    aget-wide v2, p2, v6

    mul-long/2addr v0, v2

    aget-wide v2, p2, v7

    add-long/2addr v0, v2

    .line 349
    aget-wide v2, p2, v6

    aput-wide v2, p2, v7

    .line 350
    aput-wide v0, p2, v6

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 276
    invoke-static {p0}, Lcom/android/gallery3d/b/o;->d(Landroid/app/Activity;)Lcom/android/gallery3d/b/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/b/o;->l(Z)V

    .line 277
    return-void
.end method

.method public static a(Landroid/content/Context;DD)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    :try_start_0
    const-string v0, "http://maps.google.com/maps?f=q&q=(%f,%f)"

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/gallery3d/b/y;->a(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.apps.maps"

    const-string v3, "com.google.android.maps.MapsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 232
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 235
    const-string v1, "GalleryUtils"

    const-string v2, "GMM activity not found!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    const-string v0, "geo:%f,%f"

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/gallery3d/b/y;->a(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v0

    .line 237
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 238
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a([FFFF)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 249
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {p0, v3, v0, v1}, Ljava/util/Arrays;->fill([FIIF)V

    .line 250
    const/4 v0, 0x5

    const/16 v1, 0xf

    neg-float v2, p3

    aput v2, p0, v1

    aput v2, p0, v0

    aput v2, p0, v3

    .line 251
    const/16 v0, 0x8

    aput p1, p0, v0

    .line 252
    const/16 v0, 0x9

    aput p2, p0, v0

    .line 253
    const/16 v0, 0xa

    const/16 v1, 0xb

    const/high16 v2, 0x3f80

    aput v2, p0, v1

    aput v2, p0, v0

    .line 254
    return-void
.end method

.method public static aV(I)I
    .locals 1
    .parameter

    .prologue
    .line 86
    int-to-float v0, p0

    invoke-static {v0}, Lcom/android/gallery3d/b/y;->r(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static aW(I)I
    .locals 1
    .parameter

    .prologue
    .line 303
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 304
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    const v0, 0x7f0d0040

    .line 308
    :goto_0
    return v0

    .line 304
    :cond_0
    const v0, 0x7f0d0041

    goto :goto_0

    .line 308
    :cond_1
    const v0, 0x7f0d003f

    goto :goto_0
.end method

.method public static b(DDDD)D
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    const-wide/high16 v0, 0x3fe0

    sub-double v2, p4, p0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 152
    const-wide/high16 v2, 0x3fe0

    sub-double v4, p6, p2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 153
    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 154
    const-wide/high16 v2, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0

    sub-double v0, v8, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v2

    const-wide v2, 0x415849c600000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static b(Lcom/android/gallery3d/b/j;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 165
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 166
    new-instance v1, Lcom/android/gallery3d/b/t;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/b/t;-><init>(Landroid/os/ConditionVariable;)V

    invoke-interface {p0, v1}, Lcom/android/gallery3d/b/j;->a(Lcom/android/gallery3d/b/a;)V

    .line 171
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 172
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/gallery3d/b/j;->a(Lcom/android/gallery3d/b/a;)V

    .line 173
    return-void
.end method

.method public static b(DD)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 210
    cmpl-double v0, p0, v1

    if-nez v0, :cond_0

    cmpl-double v0, p2, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 262
    div-int/lit16 v0, p1, 0xe10

    .line 263
    mul-int/lit16 v1, v0, 0xe10

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x3c

    .line 264
    mul-int/lit16 v2, v0, 0xe10

    mul-int/lit8 v3, v1, 0x3c

    add-int/2addr v2, v3

    sub-int v2, p1, v2

    .line 266
    if-nez v0, :cond_0

    .line 267
    const v0, 0x7f0d002d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    .line 269
    :cond_0
    const v3, 0x7f0d002e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 176
    invoke-static {p0}, Lcom/android/gallery3d/app/PackagesMonitor;->c(Landroid/content/Context;)I

    move-result v2

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "editor-update-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "has-editor-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 182
    invoke-interface {v5, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v2, :cond_1

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 184
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.EDIT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 186
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 191
    :cond_1
    invoke-interface {v5, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    sput-object p0, Lcom/android/gallery3d/b/y;->Dy:Landroid/content/Context;

    .line 72
    sget v0, Lcom/android/gallery3d/b/y;->Dz:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 73
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 74
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 76
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 77
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/gallery3d/b/y;->Dz:F

    .line 79
    :cond_0
    return-void
.end method

.method public static e(Lcom/android/gallery3d/a/ax;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 355
    if-nez p0, :cond_1

    .line 358
    :cond_0
    :goto_0
    return v0

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/a/ax;->getWidth()I

    move-result v1

    .line 357
    invoke-virtual {p0}, Lcom/android/gallery3d/a/ax;->getHeight()I

    move-result v2

    .line 358
    if-lez v2, :cond_0

    div-int/2addr v1, v2

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fL()V
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/b/y;->DA:Ljava/lang/Thread;

    .line 112
    return-void
.end method

.method public static fM()V
    .locals 3

    .prologue
    .line 115
    sget-boolean v0, Lcom/android/gallery3d/b/y;->DB:Z

    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/b/y;->DA:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 117
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/gallery3d/b/y;->DB:Z

    .line 118
    const-string v0, "GalleryUtils"

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Should not do this in render thread"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :cond_0
    return-void
.end method

.method public static fN()V
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/b/y;->Dy:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 331
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 333
    :cond_0
    return-void
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-char v5, v3, v0

    .line 98
    add-int/lit8 v6, v1, 0x1

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    aput-byte v7, v2, v1

    .line 99
    add-int/lit8 v1, v6, 0x1

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-object v2
.end method

.method public static hasSpaceForSize(J)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 313
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 314
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v0

    .line 318
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 321
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, v3

    cmp-long v1, v1, p0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 323
    :catch_0
    move-exception v1

    .line 324
    const-string v2, "GalleryUtils"

    const-string v3, "Fail to access external storage"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 195
    invoke-static {p0}, Lcom/android/gallery3d/app/PackagesMonitor;->c(Landroid/content/Context;)I

    move-result v2

    .line 196
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 197
    const-string v4, "camera-update"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_1

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 199
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 201
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "camera-update"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "has-camera"

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    :cond_0
    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    :cond_1
    const-string v0, "has-camera"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static r(F)F
    .locals 1
    .parameter

    .prologue
    .line 82
    sget v0, Lcom/android/gallery3d/b/y;->Dz:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public static s(F)I
    .locals 2
    .parameter

    .prologue
    .line 91
    const v0, 0x421d7ae1

    mul-float/2addr v0, p0

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/gallery3d/b/y;->r(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static z(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 257
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
