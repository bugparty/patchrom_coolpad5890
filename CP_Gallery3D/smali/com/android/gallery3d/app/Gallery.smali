.class public Lcom/android/gallery3d/app/Gallery;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery"

.field public static final fF:Ljava/lang/String; = "gpspic_path"

.field public static final fG:Ljava/lang/String; = "gpspic"

.field public static mHeight:I = 0x0

.field public static mWidth:I = 0x0

.field public static final tB:I = 0x0

.field public static final tC:I = 0x1

.field public static tD:I = 0x0

.field public static tE:I = 0x0

.field private static final tH:I = 0x14

.field private static final tI:I = 0x15

.field public static final tr:Ljava/lang/String; = "slideshow"

.field public static final ts:Ljava/lang/String; = "crop"

.field public static final tt:Ljava/lang/String; = "com.android.camera.action.REVIEW"

.field public static final tu:Ljava/lang/String; = "get-content"

.field public static final tv:Ljava/lang/String; = "get-album"

.field public static final tw:Ljava/lang/String; = "type-bits"

.field public static final tx:Ljava/lang/String; = "mediaTypes"

.field public static final ty:Ljava/lang/String; = "Camera_Image"


# instance fields
.field public tA:Z

.field private tF:Lcom/android/gallery3d/app/ag;

.field private tG:Landroid/app/Dialog;

.field public tJ:F

.field public tz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    sput v0, Lcom/android/gallery3d/app/Gallery;->tD:I

    .line 87
    sput v0, Lcom/android/gallery3d/app/Gallery;->tE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    .line 79
    iput-boolean v0, p0, Lcom/android/gallery3d/app/Gallery;->tz:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/gallery3d/app/Gallery;->tA:Z

    .line 97
    const/high16 v0, 0x437f

    iput v0, p0, Lcom/android/gallery3d/app/Gallery;->tJ:F

    return-void
.end method

.method public static calRemaining(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 596
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x4980

    div-float/2addr v0, v1

    .line 600
    float-to-long v0, v0

    .line 606
    :goto_0
    return-wide v0

    .line 602
    :catch_0
    move-exception v0

    .line 606
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private ec()V
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 124
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/Gallery;->f(Landroid/content/Intent;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 130
    const-string v1, "Gallery"

    const-string v2, "action PICK is not supported"

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    const-string v2, "/image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    :cond_2
    const-string v2, "/video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/Gallery;->f(Landroid/content/Intent;)V

    goto :goto_0

    .line 137
    :cond_4
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.android.camera.action.REVIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 139
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/Gallery;->h(Landroid/content/Intent;)V

    goto :goto_0

    .line 141
    :cond_6
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->ed()V

    .line 143
    const-string v0, "com.yulong.android.soundrecorder"

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/Gallery;->t(Ljava/lang/String;)Z

    move-result v0

    .line 145
    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/gallery3d/app/dy;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/dy;-><init>(Lcom/android/gallery3d/app/Gallery;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private f(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 189
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 192
    :goto_0
    const-string v1, "get-content"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    invoke-static {p0, p1}, Lcom/android/gallery3d/b/y;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    .line 194
    const-string v2, "type-bits"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    const-string v2, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/a/ao;->ai(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/app/k;->c(Z)V

    .line 198
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/ak;

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 199
    return-void

    .line 189
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private g(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-object v0

    .line 205
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v1, "Gallery"

    const-string v2, "get type fail"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(Landroid/content/Intent;)V
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 215
    const-string v0, "slideshow"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 216
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/app/k;->c(Z)V

    .line 218
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 220
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v1

    .line 221
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/a/ao;->e(Landroid/net/Uri;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v3

    instance-of v3, v3, Lcom/android/gallery3d/a/ax;

    if-eqz v3, :cond_1

    .line 224
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/gallery3d/a/ao;->ai(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    .line 227
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 228
    const-string v3, "media-set-path"

    invoke-virtual {v0}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "random-order"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 230
    const-string v0, "repeat"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/dw;

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 360
    :cond_2
    :goto_0
    return-void

    .line 233
    :cond_3
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 234
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v3

    .line 235
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 236
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/Gallery;->g(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 237
    if-nez v5, :cond_4

    .line 238
    const v0, 0x7f0d0055

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->finish()V

    goto :goto_0

    .line 243
    :cond_4
    if-nez v0, :cond_5

    .line 244
    invoke-static {p0, p1}, Lcom/android/gallery3d/b/y;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    .line 245
    const-string v1, "type-bits"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    const-string v1, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/a/ao;->ai(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/k;->c(Z)V

    .line 249
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/ak;

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 250
    :cond_5
    const-string v6, "vnd.android.cursor.dir"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 252
    const-string v2, "mediaTypes"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 253
    if-eqz v2, :cond_6

    .line 254
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "mediaTypes"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 258
    :cond_6
    const-string v2, "gpspic_path"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    const-string v5, "gpspic"

    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/Gallery;->tz:Z

    .line 261
    if-eqz v2, :cond_7

    .line 262
    const-string v0, "media-path"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/da;

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 266
    :cond_7
    invoke-virtual {v3, v0}, Lcom/android/gallery3d/a/ao;->e(Landroid/net/Uri;)Lcom/android/gallery3d/a/dd;

    move-result-object v1

    .line 267
    const/4 v0, 0x0

    .line 268
    if-eqz v1, :cond_8

    .line 269
    invoke-virtual {v3, v1}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/r;

    .line 271
    :cond_8
    if-eqz v0, :cond_a

    .line 272
    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aQ()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 273
    const-string v0, "media-path"

    invoke-virtual {v1}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/da;

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 276
    :cond_9
    const-string v0, "media-path"

    invoke-virtual {v1}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/ak;

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 280
    :cond_a
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->ed()V

    goto/16 :goto_0

    .line 284
    :cond_b
    invoke-virtual {v3, v0}, Lcom/android/gallery3d/a/ao;->e(Landroid/net/Uri;)Lcom/android/gallery3d/a/dd;

    move-result-object v5

    .line 286
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 287
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "save_path"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 289
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "camera_best_photo"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 291
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "Camera_Image"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 292
    if-eqz v9, :cond_10

    .line 293
    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 294
    iput-boolean v2, p0, Lcom/android/gallery3d/app/Gallery;->tA:Z

    .line 296
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/gallery3d/a/ao;->j(Z)V

    .line 297
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/gallery3d/a/ao;->k(Z)V

    .line 307
    :goto_1
    if-eqz v8, :cond_c

    .line 308
    const-string v9, "camera_best_photo"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    if-eqz v5, :cond_c

    .line 310
    invoke-virtual {v5}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/gallery3d/a/av;->ry:Ljava/lang/String;

    .line 313
    :cond_c
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 315
    if-eqz v5, :cond_2

    .line 316
    invoke-virtual {v3, v5}, Lcom/android/gallery3d/a/ao;->m(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/dd;

    move-result-object v3

    .line 319
    const-string v9, "SingleItemOnly"

    invoke-virtual {p1, v9, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 321
    if-eqz v3, :cond_11

    .line 322
    invoke-virtual {v3}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 323
    invoke-virtual {v3}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/local/image/"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "content://media/external/video/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/video/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    sput v2, Lcom/android/gallery3d/app/Gallery;->tE:I

    .line 329
    :goto_2
    if-nez v9, :cond_d

    if-eqz v0, :cond_d

    .line 330
    const-string v2, "media-set-path"

    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    move v0, v1

    .line 351
    :goto_3
    if-nez v0, :cond_e

    .line 352
    const-string v0, "media-item-path"

    invoke-virtual {v5}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_e
    const-string v0, "media-mms-path"

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v0, "save_path"

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/ca;

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 299
    :cond_f
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/gallery3d/a/ao;->j(Z)V

    .line 300
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/gallery3d/a/ao;->k(Z)V

    goto/16 :goto_1

    .line 303
    :cond_10
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/gallery3d/a/ao;->j(Z)V

    .line 304
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/gallery3d/a/ao;->k(Z)V

    goto/16 :goto_1

    .line 336
    :cond_11
    const-string v0, "file:"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x7

    if-le v0, v3, :cond_13

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->ee()Ljava/util/ArrayList;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_13

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/local/image/item/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/local/image/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    if-nez v9, :cond_12

    if-eqz v0, :cond_12

    .line 343
    const-string v3, "media-set-path"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_12
    const-string v0, "media-item-path"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 347
    goto/16 :goto_3

    :cond_13
    move v0, v1

    goto/16 :goto_3

    :cond_14
    move-object v0, v3

    goto/16 :goto_2
.end method


# virtual methods
.method public dR()Lcom/android/gallery3d/app/ag;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->tF:Lcom/android/gallery3d/app/ag;

    return-object v0
.end method

.method public ed()V
    .locals 5

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 163
    invoke-static {p0}, Lcom/android/gallery3d/c/b;->b(Landroid/app/Activity;)V

    .line 164
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 169
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.gallery3d.app.GalleryForVideo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    :goto_0
    const-string v1, "type-bits"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    const-string v1, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/a/ao;->ai(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/ak;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 181
    invoke-static {p0}, Lcom/android/gallery3d/c/b;->c(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/Gallery;->tG:Landroid/app/Dialog;

    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->tG:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->tG:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 186
    :cond_0
    return-void

    .line 171
    :cond_1
    sget v3, Lcom/android/gallery3d/app/Gallery;->tE:I

    if-ne v3, v1, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "com.android.gallery3d"

    const-string v4, "com.android.gallery3d.app.GalleryForVideo"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public ee()Ljava/util/ArrayList;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 466
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 467
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 468
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 469
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 470
    const-string v3, "lower(_data) = lower(?)"

    .line 473
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "_id"

    aput-object v8, v2, v4

    const/4 v4, 0x1

    const-string v8, "bucket_id"

    aput-object v8, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 477
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 485
    :cond_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 492
    :goto_0
    return-object v7

    .line 487
    :catch_0
    move-exception v0

    .line 488
    const-string v1, "Gallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 481
    :catch_1
    move-exception v0

    move-object v0, v6

    .line 485
    :goto_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 487
    :catch_2
    move-exception v0

    .line 488
    const-string v1, "Gallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    :catchall_0
    move-exception v0

    .line 485
    :goto_2
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 489
    :goto_3
    throw v0

    .line 487
    :catch_3
    move-exception v1

    .line 488
    const-string v2, "Gallery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 484
    :catchall_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_2

    .line 481
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public ef()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 521
    .line 522
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/Gallery;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 525
    const/16 v3, 0x15

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 526
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v4, v2

    move v3, v2

    .line 527
    :goto_0
    if-ge v4, v6, :cond_2

    .line 528
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "com.android.gallery3d"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 530
    if-eqz v0, :cond_3

    .line 531
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    .line 532
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    .line 533
    if-gt v3, v1, :cond_0

    if-lez v0, :cond_1

    :cond_0
    move v0, v2

    .line 527
    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 536
    goto :goto_1

    .line 540
    :cond_2
    return v3

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method public eg()I
    .locals 3

    .prologue
    .line 557
    const/4 v0, 0x1

    .line 559
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 564
    :goto_0
    return v0

    .line 561
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public eh()V
    .locals 4

    .prologue
    .line 616
    .line 617
    const-string v0, "coolpadSystem"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/Gallery;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/server/systeminterface/SystemManager;

    .line 618
    invoke-virtual {v0}, Lcom/yulong/android/server/systeminterface/SystemManager;->getAppsSelected()Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 620
    const-string v2, "com.android.gallery3d"

    .line 621
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 622
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 623
    if-ltz v0, :cond_0

    .line 624
    new-instance v0, Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-direct {v0, p0}, Lcom/yulong/android/view/dialog/LoginDialog;-><init>(Landroid/content/Context;)V

    .line 625
    const v1, 0x7f0d00dc

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/dialog/LoginDialog;->setTitle(I)V

    .line 626
    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/LoginDialog;->show()V

    .line 627
    new-instance v1, Lcom/android/gallery3d/app/eb;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/app/eb;-><init>(Lcom/android/gallery3d/app/Gallery;Lcom/yulong/android/view/dialog/LoginDialog;)V

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/dialog/LoginDialog;->setLoginListener(Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;)V

    .line 651
    :cond_0
    return-void
.end method

.method public g(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 546
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->eg()I

    move-result v0

    .line 547
    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    .line 548
    :goto_0
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 549
    int-to-float v0, p1

    iget v2, p0, Lcom/android/gallery3d/app/Gallery;->tJ:F

    div-float/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 553
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 554
    return-void

    .line 547
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 551
    :cond_1
    const/high16 v0, -0x4080

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1
.end method

.method public m(Z)V
    .locals 4
    .parameter

    .prologue
    .line 574
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 575
    const-class v1, Landroid/view/ViewConfiguration;

    const-string v2, "sHasPermanentMenuKey"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 576
    if-eqz v1, :cond_0

    .line 577
    if-eqz p1, :cond_1

    .line 578
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 579
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 582
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 585
    :catch_0
    move-exception v0

    .line 586
    const-string v1, "Gallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/y;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v1

    .line 392
    invoke-interface {v1}, Lcom/android/gallery3d/ui/eh;->fY()V

    .line 394
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/k;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    invoke-interface {v1}, Lcom/android/gallery3d/ui/eh;->fZ()V

    .line 398
    return-void

    .line 396
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/android/gallery3d/ui/eh;->fZ()V

    throw v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->tG:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/Gallery;->tG:Landroid/app/Dialog;

    .line 460
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/Gallery;->requestWindowFeature(I)Z

    .line 105
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/Gallery;->requestWindowFeature(I)Z

    .line 106
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/Gallery;->requestWindowFeature(I)Z

    .line 108
    const v0, 0x7f04000c

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/Gallery;->setContentView(I)V

    .line 109
    new-instance v0, Lcom/android/gallery3d/app/ag;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/ag;-><init>(Lcom/android/gallery3d/app/bm;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/Gallery;->tF:Lcom/android/gallery3d/app/ag;

    .line 111
    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/k;->a(Landroid/os/Bundle;)V

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->eh()V

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/Gallery;->m(Z)V

    .line 119
    return-void

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/Gallery;->ec()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 364
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 365
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/k;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 402
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    .line 403
    const-string v0, "Gallery"

    const-string v1, "enter onDestroy()"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v0, 0x0

    sput v0, Lcom/android/gallery3d/app/Gallery;->tE:I

    .line 405
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v1

    .line 406
    invoke-interface {v1}, Lcom/android/gallery3d/ui/eh;->fY()V

    .line 408
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/k;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    invoke-interface {v1}, Lcom/android/gallery3d/ui/eh;->fZ()V

    .line 423
    return-void

    .line 410
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/android/gallery3d/ui/eh;->fZ()V

    throw v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/k;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->requestFocus()Z

    .line 657
    const/4 v0, 0x1

    .line 659
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 372
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/k;->aj()Lcom/android/gallery3d/app/w;

    move-result-object v0

    instance-of v0, v0, Lcom/android/gallery3d/app/ak;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/k;->aj()Lcom/android/gallery3d/app/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/w;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type-bits"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/k;->aj()Lcom/android/gallery3d/app/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/w;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "launch-gallery-on-top"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const/4 v0, 0x1

    .line 384
    :goto_0
    return v0

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v1

    .line 380
    invoke-interface {v1}, Lcom/android/gallery3d/ui/eh;->fY()V

    .line 382
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/k;->a(Landroid/view/MenuItem;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 384
    invoke-interface {v1}, Lcom/android/gallery3d/ui/eh;->fZ()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/android/gallery3d/ui/eh;->fZ()V

    throw v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 443
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 444
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->tG:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->tG:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 447
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/Gallery;->m(Z)V

    .line 448
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 428
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/k;->getStateCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 429
    const-string v0, "Gallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStateManager().getStateCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/k;->getStateCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->finish()V

    .line 433
    :cond_0
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 434
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->tG:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->tG:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 437
    :cond_1
    const/16 v0, 0xa0

    invoke-virtual {p0, v0, v3}, Lcom/android/gallery3d/app/Gallery;->g(IZ)V

    .line 438
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/Gallery;->m(Z)V

    .line 439
    return-void
.end method

.method public t(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 499
    .line 500
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/Gallery;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 503
    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 504
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    .line 505
    :goto_0
    if-ge v2, v4, :cond_0

    .line 506
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 508
    if-eqz v0, :cond_1

    .line 509
    const/4 v0, 0x1

    .line 505
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 512
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method
