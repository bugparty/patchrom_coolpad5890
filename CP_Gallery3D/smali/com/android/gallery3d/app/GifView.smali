.class public Lcom/android/gallery3d/app/GifView;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "APP_Gallery_GifView"

.field private static final gZ:I = 0x1

.field private static final ha:I = 0x64

.field private static final hb:I = 0xa

.field private static final hc:I = 0x384


# instance fields
.field handler:Landroid/os/Handler;

.field private hd:Landroid/widget/ImageView;

.field private he:Ljava/util/Timer;

.field private hf:I

.field private hg:I

.field private hh:[I

.field private hi:Z

.field mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/GifView;->he:Ljava/util/Timer;

    .line 52
    iput v1, p0, Lcom/android/gallery3d/app/GifView;->hf:I

    .line 54
    iput v1, p0, Lcom/android/gallery3d/app/GifView;->hg:I

    .line 56
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/app/GifView;->hh:[I

    .line 58
    iput-boolean v2, p0, Lcom/android/gallery3d/app/GifView;->hi:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/GifView;->mBitmap:Landroid/graphics/Bitmap;

    .line 67
    new-instance v0, Lcom/android/gallery3d/app/av;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/av;-><init>(Lcom/android/gallery3d/app/GifView;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GifView;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/GifView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lcom/android/gallery3d/app/GifView;->hg:I

    return p1
.end method

.method static synthetic a(Lcom/android/gallery3d/app/GifView;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/gallery3d/app/GifView;->hi:Z

    return v0
.end method

.method static synthetic b(Lcom/android/gallery3d/app/GifView;)[I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/gallery3d/app/GifView;->hh:[I

    return-object v0
.end method

.method private bg()V
    .locals 1

    .prologue
    .line 189
    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/GifView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/gallery3d/app/GifView;->hd:Landroid/widget/ImageView;

    .line 193
    return-void
.end method

.method static synthetic c(Lcom/android/gallery3d/app/GifView;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/android/gallery3d/app/GifView;->hg:I

    return v0
.end method

.method static synthetic d(Lcom/android/gallery3d/app/GifView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/gallery3d/app/GifView;->hd:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/android/gallery3d/app/GifView;)I
    .locals 2
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/android/gallery3d/app/GifView;->hg:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/gallery3d/app/GifView;->hg:I

    return v0
.end method

.method static synthetic f(Lcom/android/gallery3d/app/GifView;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/android/gallery3d/app/GifView;->hf:I

    return v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 12
    .parameter

    .prologue
    const/16 v11, 0x384

    const/16 v10, 0xc8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 200
    invoke-static {}, Lcom/yulong/android/service/gifplayer/GifPlayerJNI;->gifplayerInit()I

    .line 201
    iput v8, p0, Lcom/android/gallery3d/app/GifView;->hf:I

    .line 203
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    if-nez v0, :cond_1

    .line 206
    const-string v0, "APP_Gallery_GifView"

    const-string v1, "File Exits"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 212
    long-to-int v3, v1

    new-array v3, v3, [B

    .line 214
    if-nez v3, :cond_2

    .line 215
    const-string v0, "APP_Gallery_GifView"

    const-string v1, "adFileBuff malloc is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 222
    if-nez v4, :cond_4

    .line 223
    const-string v0, "APP_Gallery_GifView"

    const-string v4, "FileInputStream fIn is NULL"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 235
    const-string v4, "APP_Gallery_GifView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proc Error..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_1
    invoke-static {v3, v1, v2, v8}, Lcom/yulong/android/service/gifplayer/GifPlayerJNI;->gifplayerOpen([BJI)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/GifView;->hf:I

    .line 254
    const-string v0, "APP_Gallery_GifView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the framecount is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/GifView;->hf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget v0, p0, Lcom/android/gallery3d/app/GifView;->hf:I

    if-lez v0, :cond_5

    iget v0, p0, Lcom/android/gallery3d/app/GifView;->hf:I

    if-ge v0, v11, :cond_5

    .line 259
    iget v0, p0, Lcom/android/gallery3d/app/GifView;->hf:I

    if-lt v0, v10, :cond_3

    .line 260
    iput v10, p0, Lcom/android/gallery3d/app/GifView;->hf:I

    .line 263
    :cond_3
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/GifView;->D(I)I

    goto :goto_0

    .line 229
    :cond_4
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 230
    const-string v5, "APP_Gallery_GifView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File Len: ."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 264
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/app/GifView;->hf:I

    if-le v0, v11, :cond_6

    .line 265
    const v0, 0x7f0d00aa

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 267
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifView;->finish()V

    goto/16 :goto_0

    .line 269
    :cond_6
    iget v0, p0, Lcom/android/gallery3d/app/GifView;->hf:I

    if-gez v0, :cond_0

    .line 270
    const v0, 0x7f0d00ab

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 272
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifView;->finish()V

    goto/16 :goto_0
.end method


# virtual methods
.method public D(I)I
    .locals 4
    .parameter

    .prologue
    .line 283
    new-instance v0, Lcom/android/gallery3d/app/au;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/au;-><init>(Lcom/android/gallery3d/app/GifView;)V

    .line 291
    iget-object v1, p0, Lcom/android/gallery3d/app/GifView;->he:Ljava/util/Timer;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v0, 0x7f04000b

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/GifView;->setContentView(I)V

    .line 109
    invoke-direct {p0}, Lcom/android/gallery3d/app/GifView;->bg()V

    .line 112
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_1

    .line 134
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    const-string v2, "APP_Gallery_GifView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uriFile.length() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x989680

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 139
    const v0, 0x7f0d00aa

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifView;->finish()V

    .line 156
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/GifView;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    :try_start_1
    const-string v1, "APP_Gallery_GifView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    throw v0

    .line 152
    :cond_1
    const-string v0, "APP_Gallery_GifView"

    const-string v1, "Intent GetData is NULL !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/GifView;->hi:Z

    .line 166
    iget-object v0, p0, Lcom/android/gallery3d/app/GifView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GifView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/gallery3d/app/GifView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 171
    :cond_0
    invoke-static {}, Lcom/yulong/android/service/gifplayer/GifPlayerJNI;->gifplayerUnit()I

    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 184
    const-string v0, "APP_Gallery_GifView"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method
