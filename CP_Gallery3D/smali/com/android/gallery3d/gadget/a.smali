.class public Lcom/android/gallery3d/gadget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/gadget/l;


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DATE_ADDED:Ljava/lang/String; = "date_added"

.field private static final DATE_TAKEN:Ljava/lang/String; = "datetaken"

.field private static final TAG:Ljava/lang/String; = "LocalPhotoSource"

.field private static final ke:I = 0x80

.field private static final kf:[Ljava/lang/String;

.field private static final kg:[Ljava/lang/String;

.field private static final kh:Ljava/lang/String;

.field private static final ki:Ljava/lang/String;

.field private static final kn:Lcom/android/gallery3d/a/dd;


# instance fields
.field private ih:Lcom/android/gallery3d/a/ao;

.field private kj:Ljava/util/ArrayList;

.field private kk:Lcom/android/gallery3d/a/an;

.field private kl:Landroid/database/ContentObserver;

.field private km:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/gallery3d/gadget/a;->CONTENT_URI:Landroid/net/Uri;

    .line 52
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/gadget/a;->kf:[Ljava/lang/String;

    .line 53
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "count(*)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/gadget/a;->kg:[Ljava/lang/String;

    .line 55
    const-string v0, "%s != %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "bucket_id"

    aput-object v2, v1, v3

    invoke-static {}, Lcom/android/gallery3d/gadget/a;->ch()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/gadget/a;->kh:Ljava/lang/String;

    .line 57
    const-string v0, "%s DESC"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "date_added"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/gadget/a;->ki:Ljava/lang/String;

    .line 65
    const-string v0, "/local/image/item"

    invoke-static {v0}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/gadget/a;->kn:Lcom/android/gallery3d/a/dd;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/gadget/a;->kj:Ljava/util/ArrayList;

    .line 63
    iput-boolean v3, p0, Lcom/android/gallery3d/gadget/a;->km:Z

    .line 68
    iput-object p1, p0, Lcom/android/gallery3d/gadget/a;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/gadget/a;->ih:Lcom/android/gallery3d/a/ao;

    .line 70
    new-instance v0, Lcom/android/gallery3d/gadget/e;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/gadget/e;-><init>(Lcom/android/gallery3d/gadget/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/gallery3d/gadget/a;->kl:Landroid/database/ContentObserver;

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/gadget/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/gadget/a;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/gallery3d/gadget/a;->kl:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 79
    return-void
.end method

.method private X(I)Z
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/gadget/a;->kj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x80

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v7

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/gadget/a;->kj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    move v7, v6

    goto :goto_0

    .line 138
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/gadget/a;->kj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/gadget/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/gadget/a;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/gadget/a;->kg:[Ljava/lang/String;

    const-string v5, "%s in (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "_id"

    aput-object v9, v8, v7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v6

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_0

    .line 149
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 150
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/gallery3d/gadget/a;->kj:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v0, v2, :cond_5

    move v0, v6

    .line 152
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v7, v0

    goto :goto_0

    :cond_5
    move v0, v7

    .line 150
    goto :goto_2

    .line 152
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(Landroid/content/ContentResolver;)I
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 123
    sget-object v1, Lcom/android/gallery3d/gadget/a;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/gadget/a;->kg:[Ljava/lang/String;

    sget-object v3, Lcom/android/gallery3d/gadget/a;->kh:Ljava/lang/String;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 125
    if-nez v1, :cond_0

    move v0, v6

    .line 130
    :goto_0
    return v0

    .line 127
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 128
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 130
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic a(Lcom/android/gallery3d/gadget/a;)Lcom/android/gallery3d/a/an;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/gadget/a;->kk:Lcom/android/gallery3d/a/an;

    return-object v0
.end method

.method static synthetic a(Lcom/android/gallery3d/gadget/a;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/gallery3d/gadget/a;->km:Z

    return p1
.end method

.method private static ch()I
    .locals 1

    .prologue
    .line 193
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Lcom/android/gallery3d/b/y;->z(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private n(II)[I
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 107
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 108
    if-le p2, p1, :cond_0

    move p2, p1

    .line 109
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(I)V

    .line 110
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-ge v2, p2, :cond_2

    .line 111
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    neg-double v2, v2

    int-to-double v4, p1

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 112
    if-ge v2, p1, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_2
    new-array v2, p2, [I

    .line 115
    const/4 v0, 0x0

    .line 116
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 117
    add-int/lit8 v0, v1, 0x1

    aput v4, v2, v1

    move v1, v0

    goto :goto_1

    .line 119
    :cond_3
    return-object v2
.end method


# virtual methods
.method public V(I)Landroid/net/Uri;
    .locals 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/gadget/a;->kj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 88
    sget-object v0, Lcom/android/gallery3d/gadget/a;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/gadget/a;->kj:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public W(I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/gadget/a;->kj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    move-object v0, v1

    .line 103
    :goto_0
    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/gadget/a;->kj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/gadget/a;->ih:Lcom/android/gallery3d/a/ao;

    sget-object v4, Lcom/android/gallery3d/gadget/a;->kn:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v4, v2, v3}, Lcom/android/gallery3d/a/dd;->i(J)Lcom/android/gallery3d/a/dd;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    .line 101
    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {v0}, Lcom/android/gallery3d/gadget/j;->f(Lcom/android/gallery3d/a/ax;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Lcom/android/gallery3d/a/an;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/gallery3d/gadget/a;->kk:Lcom/android/gallery3d/a/an;

    .line 202
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/gadget/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/gadget/a;->kl:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 83
    return-void
.end method

.method public reload()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 157
    iget-boolean v0, p0, Lcom/android/gallery3d/gadget/a;->km:Z

    if-nez v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iput-boolean v6, p0, Lcom/android/gallery3d/gadget/a;->km:Z

    .line 160
    iget-object v0, p0, Lcom/android/gallery3d/gadget/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 161
    invoke-direct {p0, v0}, Lcom/android/gallery3d/gadget/a;->a(Landroid/content/ContentResolver;)I

    move-result v0

    .line 162
    invoke-direct {p0, v0}, Lcom/android/gallery3d/gadget/a;->X(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/gadget/a;->n(II)[I

    move-result-object v7

    .line 165
    invoke-static {v7}, Ljava/util/Arrays;->sort([I)V

    .line 167
    iget-object v0, p0, Lcom/android/gallery3d/gadget/a;->kj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 168
    iget-object v0, p0, Lcom/android/gallery3d/gadget/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/gadget/a;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/gadget/a;->kf:[Ljava/lang/String;

    sget-object v3, Lcom/android/gallery3d/gadget/a;->kh:Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/gallery3d/gadget/a;->ki:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 170
    if-eqz v1, :cond_0

    .line 172
    :try_start_0
    array-length v2, v7

    move v0, v6

    :goto_1
    if-ge v0, v2, :cond_3

    aget v3, v7, v0

    .line 173
    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    iget-object v3, p0, Lcom/android/gallery3d/gadget/a;->kj:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/a;->reload()V

    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/gadget/a;->kj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
