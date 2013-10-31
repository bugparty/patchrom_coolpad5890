.class public Lcom/android/gallery3d/a/db;
.super Lcom/android/gallery3d/a/r;
.source "SourceFile"


# static fields
.field private static final Jz:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LocalAlbum"

.field private static final kg:[Ljava/lang/String;


# instance fields
.field private final JA:Ljava/lang/String;

.field private final JB:Ljava/lang/String;

.field private final JC:I

.field private final JD:Ljava/lang/String;

.field private final JE:Z

.field private JF:I

.field private final ae:Lcom/android/gallery3d/a/dd;

.field private final i:Lcom/android/gallery3d/app/cl;

.field private final jx:Lcom/android/gallery3d/a/cb;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mProjection:[Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/a/db;->kg:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;IZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-interface {p2}, Lcom/android/gallery3d/app/cl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/gallery3d/a/br;->a(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/a/db;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;IZLjava/lang/String;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;IZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-static {}, Lcom/android/gallery3d/a/db;->ex()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/a/r;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/a/db;->JF:I

    .line 57
    iput-object p2, p0, Lcom/android/gallery3d/a/db;->i:Lcom/android/gallery3d/app/cl;

    .line 58
    invoke-interface {p2}, Lcom/android/gallery3d/app/cl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/db;->mResolver:Landroid/content/ContentResolver;

    .line 59
    iput p3, p0, Lcom/android/gallery3d/a/db;->JC:I

    .line 60
    iput-object p5, p0, Lcom/android/gallery3d/a/db;->JD:Ljava/lang/String;

    .line 61
    iput-boolean p4, p0, Lcom/android/gallery3d/a/db;->JE:Z

    .line 63
    if-eqz p4, :cond_0

    .line 64
    const-string v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/android/gallery3d/a/db;->JA:Ljava/lang/String;

    .line 65
    const-string v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/android/gallery3d/a/db;->JB:Ljava/lang/String;

    .line 67
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/a/db;->mBaseUri:Landroid/net/Uri;

    .line 68
    sget-object v0, Lcom/android/gallery3d/a/av;->kf:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/a/db;->mProjection:[Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/android/gallery3d/a/av;->nV:Lcom/android/gallery3d/a/dd;

    iput-object v0, p0, Lcom/android/gallery3d/a/db;->ae:Lcom/android/gallery3d/a/dd;

    .line 80
    :goto_0
    new-instance v0, Lcom/android/gallery3d/a/cb;

    iget-object v1, p0, Lcom/android/gallery3d/a/db;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/a/cb;-><init>(Lcom/android/gallery3d/a/r;Landroid/net/Uri;Lcom/android/gallery3d/app/cl;)V

    iput-object v0, p0, Lcom/android/gallery3d/a/db;->jx:Lcom/android/gallery3d/a/cb;

    .line 81
    return-void

    .line 71
    :cond_0
    const-string v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/android/gallery3d/a/db;->JA:Ljava/lang/String;

    .line 72
    const-string v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/android/gallery3d/a/db;->JB:Ljava/lang/String;

    .line 74
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/a/db;->mBaseUri:Landroid/net/Uri;

    .line 75
    sget-object v0, Lcom/android/gallery3d/a/ak;->kf:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/a/db;->mProjection:[Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/android/gallery3d/a/ak;->nV:Lcom/android/gallery3d/a/dd;

    iput-object v0, p0, Lcom/android/gallery3d/a/db;->ae:Lcom/android/gallery3d/a/dd;

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/android/gallery3d/a/dd;Landroid/database/Cursor;Lcom/android/gallery3d/a/ao;Lcom/android/gallery3d/app/cl;Z)Lcom/android/gallery3d/a/ax;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-virtual {p2, p0}, Lcom/android/gallery3d/a/ao;->d(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/at;

    .line 136
    if-nez v0, :cond_1

    .line 137
    if-eqz p4, :cond_0

    .line 138
    new-instance v0, Lcom/android/gallery3d/a/av;

    invoke-direct {v0, p0, p3, p1}, Lcom/android/gallery3d/a/av;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;Landroid/database/Cursor;)V

    .line 145
    :goto_0
    return-object v0

    .line 140
    :cond_0
    new-instance v0, Lcom/android/gallery3d/a/ak;

    invoke-direct {v0, p0, p3, p1}, Lcom/android/gallery3d/a/ak;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;Landroid/database/Cursor;)V

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/at;->c(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public static a(Lcom/android/gallery3d/app/cl;ZLjava/util/ArrayList;)[Lcom/android/gallery3d/a/ax;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 152
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v7, v0, [Lcom/android/gallery3d/a/ax;

    .line 153
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v7

    .line 206
    :goto_0
    return-object v0

    .line 154
    :cond_0
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 155
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 161
    if-eqz p1, :cond_1

    .line 162
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 163
    sget-object v2, Lcom/android/gallery3d/a/av;->kf:[Ljava/lang/String;

    .line 164
    sget-object v0, Lcom/android/gallery3d/a/av;->nV:Lcom/android/gallery3d/a/dd;

    move-object v6, v0

    .line 171
    :goto_1
    invoke-interface {p0}, Lcom/android/gallery3d/app/cl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 172
    invoke-interface {p0}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v10

    .line 173
    const-string v3, "_id BETWEEN ? AND ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 176
    if-nez v2, :cond_2

    .line 177
    const-string v0, "LocalAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/a/bx;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 178
    goto :goto_0

    .line 166
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 167
    sget-object v2, Lcom/android/gallery3d/a/ak;->kf:[Ljava/lang/String;

    .line 168
    sget-object v0, Lcom/android/gallery3d/a/ak;->nV:Lcom/android/gallery3d/a/dd;

    move-object v6, v0

    goto :goto_1

    .line 181
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v8

    .line 184
    :cond_3
    :goto_2
    if-ge v1, v3, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 185
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 188
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v4, :cond_3

    .line 192
    :goto_3
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge v0, v4, :cond_4

    .line 193
    add-int/lit8 v0, v1, 0x1

    if-lt v0, v3, :cond_6

    .line 206
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    goto/16 :goto_0

    .line 198
    :cond_4
    :try_start_1
    invoke-virtual {v6, v4}, Lcom/android/gallery3d/a/dd;->bn(I)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    .line 199
    invoke-static {v0, v2, v10, p0, p1}, Lcom/android/gallery3d/a/db;->a(Lcom/android/gallery3d/a/dd;Landroid/database/Cursor;Lcom/android/gallery3d/a/ao;Lcom/android/gallery3d/app/cl;Z)Lcom/android/gallery3d/a/ax;

    move-result-object v0

    .line 201
    aput-object v0, v7, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    add-int/lit8 v1, v1, 0x1

    .line 203
    goto :goto_2

    .line 206
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_6
    move v1, v0

    goto :goto_3
.end method


# virtual methods
.method public aN()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 218
    iget v0, p0, Lcom/android/gallery3d/a/db;->JF:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/a/db;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery3d/a/db;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/a/db;->kg:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/a/db;->JA:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p0, Lcom/android/gallery3d/a/db;->JC:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 222
    if-nez v1, :cond_0

    .line 223
    const-string v0, "LocalAlbum"

    const-string v1, "query fail"

    invoke-static {v0, v1}, Lcom/android/gallery3d/a/bx;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 233
    :goto_0
    return v0

    .line 227
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 228
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/db;->JF:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/a/db;->JF:I

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public aQ()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public aT()J
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/a/db;->jx:Lcom/android/gallery3d/a/cb;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/cb;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {}, Lcom/android/gallery3d/a/db;->ex()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    .line 245
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/a/db;->JF:I

    .line 247
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    return-wide v0
.end method

.method public aU()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/android/gallery3d/a/db;->JE:Z

    return v0
.end method

.method public am()I
    .locals 1

    .prologue
    .line 252
    const/16 v0, 0x405

    return v0
.end method

.method public delete()V
    .locals 6

    .prologue
    .line 257
    invoke-static {}, Lcom/android/gallery3d/b/y;->fM()V

    .line 258
    const-string v0, "LocalAlbum"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete mBaseUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/a/db;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/a/bx;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/a/db;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery3d/a/db;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/gallery3d/a/db;->JA:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/gallery3d/a/db;->JC:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 261
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/gallery3d/a/db;->JD:Ljava/lang/String;

    return-object v0
.end method

.method public j(II)Ljava/util/ArrayList;
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/a/db;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v8

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/a/db;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 95
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-static {}, Lcom/android/gallery3d/b/y;->fM()V

    .line 97
    const/4 v6, 0x0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/a/db;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/gallery3d/a/db;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/a/db;->JA:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v9, p0, Lcom/android/gallery3d/a/db;->JC:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    iget-object v5, p0, Lcom/android/gallery3d/a/db;->JB:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 109
    :goto_0
    iget v2, p0, Lcom/android/gallery3d/a/db;->JC:I

    if-nez v2, :cond_0

    .line 110
    new-instance v2, Lcom/android/gallery3d/a/av;

    const-string v3, "/local/image/item"

    invoke-static {v3}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/a/db;->i:Lcom/android/gallery3d/app/cl;

    const-string v5, "/res/drawable/more.png"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/gallery3d/a/av;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    if-nez v0, :cond_1

    .line 115
    const-string v0, "LocalAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/a/bx;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 130
    :goto_1
    return-object v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    const-string v2, "LocalAlbum"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/gallery3d/a/bx;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_0

    .line 120
    :cond_1
    :goto_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 122
    iget-object v2, p0, Lcom/android/gallery3d/a/db;->ae:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/a/dd;->bn(I)Lcom/android/gallery3d/a/dd;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/android/gallery3d/a/db;->i:Lcom/android/gallery3d/app/cl;

    iget-boolean v3, p0, Lcom/android/gallery3d/a/db;->JE:Z

    invoke-static {v1, v0, v8, v2, v3}, Lcom/android/gallery3d/a/db;->a(Lcom/android/gallery3d/a/dd;Landroid/database/Cursor;Lcom/android/gallery3d/a/ao;Lcom/android/gallery3d/app/cl;Z)Lcom/android/gallery3d/a/ax;

    move-result-object v1

    .line 125
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 128
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    .line 130
    goto :goto_1
.end method
