.class public Lcom/android/gallery3d/a/as;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TABLE_NAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DownloadCache"

.field private static final qA:I = 0x0

.field private static final qB:I = 0x1

.field private static final qC:I = 0x2

.field private static final qD:I = 0x3

.field private static final qE:Ljava/lang/String; = "_id = ?"

.field private static final qF:[Ljava/lang/String; = null

.field private static final qG:I = 0x0

.field private static final qs:I = 0x10

.field private static final qt:I = 0x4

.field private static final qu:[Ljava/lang/String; = null

.field private static final qv:Ljava/lang/String; = null

.field private static final qw:I = 0x0

.field private static final qx:I = 0x1

.field private static final qy:[Ljava/lang/String;

.field private static final qz:Ljava/lang/String;


# instance fields
.field private final i:Lcom/android/gallery3d/app/cl;

.field private ia:J

.field private mInitialized:Z

.field private final qH:Lcom/android/gallery3d/common/LruCache;

.field private final qI:Ljava/util/HashMap;

.field private final qJ:Ljava/io/File;

.field private final qK:Landroid/database/sqlite/SQLiteDatabase;

.field private final qL:J

.field private qM:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 47
    sget-object v0, Lcom/android/gallery3d/a/bq;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/a/as;->TABLE_NAME:Ljava/lang/String;

    .line 49
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/a/as;->qu:[Ljava/lang/String;

    .line 50
    const-string v0, "%s = ? AND %s = ?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "hash_code"

    aput-object v2, v1, v4

    const-string v2, "content_url"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/a/as;->qv:Ljava/lang/String;

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "content_url"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/a/as;->qy:[Ljava/lang/String;

    .line 57
    const-string v0, "%s ASC"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "last_access"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/a/as;->qz:Ljava/lang/String;

    .line 66
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "sum(%s)"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "_size"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/gallery3d/a/as;->qF:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/cl;Ljava/io/File;J)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/android/gallery3d/common/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/a/as;->qH:Lcom/android/gallery3d/common/LruCache;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/as;->qI:Ljava/util/HashMap;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/a/as;->ia:J

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/a/as;->mInitialized:Z

    .line 81
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/as;->qM:Ljava/util/WeakHashMap;

    .line 84
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/android/gallery3d/a/as;->qJ:Ljava/io/File;

    .line 85
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/cl;

    iput-object v0, p0, Lcom/android/gallery3d/a/as;->i:Lcom/android/gallery3d/app/cl;

    .line 86
    iput-wide p3, p0, Lcom/android/gallery3d/a/as;->qL:J

    .line 87
    new-instance v0, Lcom/android/gallery3d/a/ca;

    invoke-interface {p1}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/a/ca;-><init>(Lcom/android/gallery3d/a/as;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ca;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/as;->qK:Landroid/database/sqlite/SQLiteDatabase;

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/a/as;Ljava/lang/String;Ljava/io/File;)J
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/a/as;->a(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/io/File;)J
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 217
    iget-wide v2, p0, Lcom/android/gallery3d/a/as;->ia:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/gallery3d/a/as;->ia:J

    .line 219
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 220
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 221
    const-string v4, "_data"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v4, "hash_code"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v3, "content_url"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v3, "_size"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    const-string v0, "last_updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/a/as;->qK:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/android/gallery3d/a/as;->TABLE_NAME:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/android/gallery3d/a/as;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/a/as;->qJ:Ljava/io/File;

    return-object v0
.end method

.method static synthetic a(Lcom/android/gallery3d/a/as;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/gallery3d/a/as;->am(I)V

    return-void
.end method

.method private declared-synchronized am(I)V
    .locals 10
    .parameter

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/gallery3d/a/as;->ia:J

    iget-wide v2, p0, Lcom/android/gallery3d/a/as;->qL:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 213
    :goto_0
    monitor-exit p0

    return-void

    .line 187
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/a/as;->qK:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/android/gallery3d/a/as;->TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/android/gallery3d/a/as;->qy:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/android/gallery3d/a/as;->qz:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    move v0, p1

    .line 191
    :cond_1
    :goto_1
    if-lez v0, :cond_2

    :try_start_2
    iget-wide v2, p0, Lcom/android/gallery3d/a/as;->ia:J

    iget-wide v4, p0, Lcom/android/gallery3d/a/as;->qL:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 193
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 194
    const/4 v5, 0x3

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 195
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 197
    iget-object v8, p0, Lcom/android/gallery3d/a/as;->qH:Lcom/android/gallery3d/common/LruCache;

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    :try_start_3
    iget-object v9, p0, Lcom/android/gallery3d/a/as;->qH:Lcom/android/gallery3d/common/LruCache;

    invoke-virtual {v9, v4}, Lcom/android/gallery3d/common/LruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 199
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 200
    if-nez v4, :cond_1

    .line 201
    add-int/lit8 v0, v0, -0x1

    .line 202
    :try_start_4
    iget-wide v8, p0, Lcom/android/gallery3d/a/as;->ia:J

    sub-long v4, v8, v5

    iput-wide v4, p0, Lcom/android/gallery3d/a/as;->ia:J

    .line 203
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 204
    iget-object v4, p0, Lcom/android/gallery3d/a/as;->qK:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Lcom/android/gallery3d/a/as;->TABLE_NAME:Ljava/lang/String;

    const-string v6, "_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 211
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 186
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 199
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 211
    :cond_2
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/gallery3d/a/as;)Ljava/util/WeakHashMap;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/a/as;->qM:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/android/gallery3d/a/as;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/a/as;->qI:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/android/gallery3d/a/as;)Lcom/android/gallery3d/common/LruCache;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/a/as;->qH:Lcom/android/gallery3d/common/LruCache;

    return-object v0
.end method

.method private f(J)V
    .locals 7
    .parameter

    .prologue
    .line 179
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 180
    const-string v1, "last_access"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    iget-object v1, p0, Lcom/android/gallery3d/a/as;->qK:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/android/gallery3d/a/as;->TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method private declared-synchronized initialize()V
    .locals 8

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/a/as;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 231
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/gallery3d/a/as;->mInitialized:Z

    .line 232
    iget-object v0, p0, Lcom/android/gallery3d/a/as;->qJ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/a/as;->qJ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/a/as;->qJ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    .line 234
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/a/as;->qJ:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 237
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/gallery3d/a/as;->qK:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/android/gallery3d/a/as;->TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/android/gallery3d/a/as;->qF:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 239
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/gallery3d/a/as;->ia:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/a/as;->ia:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 245
    :cond_4
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 247
    iget-wide v0, p0, Lcom/android/gallery3d/a/as;->ia:J

    iget-wide v2, p0, Lcom/android/gallery3d/a/as;->qL:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/gallery3d/a/as;->am(I)V

    goto :goto_0

    .line 245
    :catchall_1
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private r(Ljava/lang/String;)Lcom/android/gallery3d/a/ae;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 92
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v0

    .line 93
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    aput-object p1, v4, v6

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/a/as;->qK:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/android/gallery3d/a/as;->TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/android/gallery3d/a/as;->qu:[Ljava/lang/String;

    sget-object v3, Lcom/android/gallery3d/a/as;->qv:Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 97
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v2, Ljava/io/File;

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v3, v0

    .line 101
    iget-object v6, p0, Lcom/android/gallery3d/a/as;->qH:Lcom/android/gallery3d/common/LruCache;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/a/as;->qH:Lcom/android/gallery3d/common/LruCache;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ae;

    .line 103
    if-nez v0, :cond_1

    .line 104
    new-instance v5, Lcom/android/gallery3d/a/ae;

    invoke-direct {v5, p0, v3, v4, v2}, Lcom/android/gallery3d/a/ae;-><init>(Lcom/android/gallery3d/a/as;JLjava/io/File;)V

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/a/as;->qH:Lcom/android/gallery3d/common/LruCache;

    invoke-virtual {v0, p1, v5}, Lcom/android/gallery3d/common/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :goto_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 113
    :goto_1
    return-object v5

    .line 107
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    :catchall_1
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_1
    move-object v5, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/net/URL;)Lcom/android/gallery3d/a/ae;
    .locals 5
    .parameter

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/gallery3d/a/as;->mInitialized:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/a/as;->initialize()V

    .line 118
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    iget-object v2, p0, Lcom/android/gallery3d/a/as;->qH:Lcom/android/gallery3d/common/LruCache;

    monitor-enter v2

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/a/as;->qH:Lcom/android/gallery3d/common/LruCache;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ae;

    .line 123
    if-eqz v0, :cond_1

    .line 124
    iget-wide v3, v0, Lcom/android/gallery3d/a/ae;->lk:J

    invoke-direct {p0, v3, v4}, Lcom/android/gallery3d/a/as;->f(J)V

    .line 125
    monitor-exit v2

    .line 138
    :goto_0
    return-object v0

    .line 127
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    iget-object v2, p0, Lcom/android/gallery3d/a/as;->qI:Ljava/util/HashMap;

    monitor-enter v2

    .line 132
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/gallery3d/a/as;->r(Ljava/lang/String;)Lcom/android/gallery3d/a/ae;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_2

    .line 134
    iget-wide v3, v0, Lcom/android/gallery3d/a/ae;->lk:J

    invoke-direct {p0, v3, v4}, Lcom/android/gallery3d/a/as;->f(J)V

    .line 135
    monitor-exit v2

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 127
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 137
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/android/gallery3d/b/j;Ljava/net/URL;)Lcom/android/gallery3d/a/ae;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/gallery3d/a/as;->mInitialized:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/a/as;->initialize()V

    .line 144
    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    iget-object v2, p0, Lcom/android/gallery3d/a/as;->qH:Lcom/android/gallery3d/common/LruCache;

    monitor-enter v2

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/a/as;->qH:Lcom/android/gallery3d/common/LruCache;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ae;

    .line 149
    if-eqz v0, :cond_1

    .line 150
    iget-wide v3, v0, Lcom/android/gallery3d/a/ae;->lk:J

    invoke-direct {p0, v3, v4}, Lcom/android/gallery3d/a/as;->f(J)V

    .line 151
    monitor-exit v2

    .line 175
    :goto_0
    return-object v0

    .line 153
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    new-instance v2, Lcom/android/gallery3d/a/au;

    invoke-direct {v2}, Lcom/android/gallery3d/a/au;-><init>()V

    .line 157
    iget-object v3, p0, Lcom/android/gallery3d/a/as;->qI:Ljava/util/HashMap;

    monitor-enter v3

    .line 158
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/gallery3d/a/as;->r(Ljava/lang/String;)Lcom/android/gallery3d/a/ae;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_2

    .line 160
    iget-wide v1, v0, Lcom/android/gallery3d/a/ae;->lk:J

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/a/as;->f(J)V

    .line 161
    monitor-exit v3

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 153
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 166
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/gallery3d/a/as;->qI:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/l;

    .line 167
    if-nez v0, :cond_3

    .line 168
    new-instance v0, Lcom/android/gallery3d/a/l;

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/a/l;-><init>(Lcom/android/gallery3d/a/as;Ljava/lang/String;)V

    .line 169
    iget-object v4, p0, Lcom/android/gallery3d/a/as;->qI:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v1, p0, Lcom/android/gallery3d/a/as;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v1}, Lcom/android/gallery3d/app/cl;->dw()Lcom/android/gallery3d/b/n;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/a/l;->a(Lcom/android/gallery3d/a/l;Lcom/android/gallery3d/b/l;)Lcom/android/gallery3d/b/l;

    .line 172
    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/a/l;->b(Lcom/android/gallery3d/a/au;)V

    .line 173
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/a/au;->m(Lcom/android/gallery3d/b/j;)Lcom/android/gallery3d/a/ae;

    move-result-object v0

    goto :goto_0
.end method
