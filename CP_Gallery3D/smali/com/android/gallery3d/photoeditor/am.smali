.class public Lcom/android/gallery3d/photoeditor/am;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# static fields
.field private static final jk:[Ljava/lang/String; = null

.field private static final kB:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss"

.field private static final nZ:I = 0x1

.field private static final oa:I = 0x2

.field private static final ob:I


# instance fields
.field private final context:Landroid/content/Context;

.field private final eS:Landroid/net/Uri;

.field private final tT:Lcom/android/gallery3d/photoeditor/ai;

.field private final tU:Ljava/lang/String;

.field private final tV:Ljava/lang/String;

.field private tW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "longitude"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/photoeditor/am;->jk:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/gallery3d/photoeditor/ai;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/am;->context:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/am;->eS:Landroid/net/Uri;

    .line 73
    iput-object p3, p0, Lcom/android/gallery3d/photoeditor/am;->tT:Lcom/android/gallery3d/photoeditor/ai;

    .line 75
    const v0, 0x7f0d0004

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/am;->tU:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/am;->tV:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private a(Ljava/io/File;)Landroid/net/Uri;
    .locals 15
    .parameter

    .prologue
    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v11, v0, v2

    .line 133
    const-wide/16 v9, 0x0

    .line 134
    const-wide/16 v6, 0x0

    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/am;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 137
    const/4 v8, 0x0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/am;->eS:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/photoeditor/am;->jk:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 140
    if-eqz v8, :cond_5

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 141
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v3

    .line 142
    const/4 v1, 0x1

    :try_start_2
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v1

    .line 143
    const/4 v5, 0x2

    :try_start_3
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v6

    move-wide v13, v6

    move-wide v5, v3

    move-wide v3, v1

    move-wide v1, v13

    .line 148
    :goto_0
    if-eqz v8, :cond_0

    .line 149
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_0
    :goto_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 154
    const-string v8, "title"

    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/am;->tV:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v8, "_display_name"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v8, "mime_type"

    const-string v9, "image/jpeg"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v8, "datetaken"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 158
    const-string v5, "date_modified"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    const-string v5, "date_added"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 160
    const-string v5, "orientation"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v5, "_data"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v5, "_size"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    cmpl-double v5, v1, v5

    if-eqz v5, :cond_2

    .line 166
    :cond_1
    const-string v5, "latitude"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v7, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 167
    const-string v3, "longitude"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v7, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 169
    :cond_2
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 145
    :catch_0
    move-exception v1

    move-object v5, v8

    move-wide v1, v9

    move-wide v3, v11

    .line 148
    :goto_2
    if-eqz v5, :cond_4

    .line 149
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-wide v13, v6

    move-wide v5, v3

    move-wide v3, v1

    move-wide v1, v13

    goto/16 :goto_1

    .line 148
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 149
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 145
    :catch_1
    move-exception v1

    move-object v5, v8

    move-wide v1, v9

    move-wide v3, v11

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v5, v8

    move-wide v1, v9

    goto :goto_2

    :catch_3
    move-exception v5

    move-object v5, v8

    goto :goto_2

    :cond_4
    move-wide v13, v6

    move-wide v5, v3

    move-wide v3, v1

    move-wide v1, v13

    goto/16 :goto_1

    :cond_5
    move-wide v1, v6

    move-wide v3, v9

    move-wide v5, v11

    goto/16 :goto_0
.end method

.method private l(Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0d00ba

    .line 109
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 112
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/am;->context:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->calRemaining(Ljava/lang/String;)J

    move-result-wide v3

    .line 117
    if-eqz v2, :cond_1

    const-wide/16 v5, 0x1

    cmp-long v2, v3, v5

    if-lez v2, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/am;->context:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/am;->tW:Ljava/lang/String;

    .line 123
    new-instance v1, Lcom/android/gallery3d/photoeditor/e;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/am;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/photoeditor/e;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/am;->tV:Ljava/lang/String;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/android/gallery3d/photoeditor/e;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 119
    :cond_1
    if-eqz v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/am;->context:Landroid/content/Context;

    const v1, 0x7f0d00b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 86
    aget-object v1, p1, v2

    if-nez v1, :cond_0

    .line 93
    :goto_0
    return-object v0

    .line 89
    :cond_0
    aget-object v1, p1, v2

    .line 90
    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/am;->l(Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/photoeditor/am;->a(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 92
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 42
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/am;->a([Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected g(Landroid/net/Uri;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 98
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/am;->context:Landroid/content/Context;

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/am;->context:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 101
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 102
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/am;->tT:Lcom/android/gallery3d/photoeditor/ai;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/photoeditor/ai;->f(Landroid/net/Uri;)V

    .line 105
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/am;->context:Landroid/content/Context;

    const v2, 0x7f0d00cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/am;->tW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/am;->g(Landroid/net/Uri;)V

    return-void
.end method
