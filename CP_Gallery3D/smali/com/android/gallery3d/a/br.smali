.class public Lcom/android/gallery3d/a/br;
.super Lcom/android/gallery3d/a/r;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalAlbumSet"

.field private static final bk:I = 0x0

.field private static final bl:I = 0x1

.field private static final bm:[Ljava/lang/String; = null

.field private static final bn:Ljava/lang/String; = "1) GROUP BY 1,(2"

.field private static final bo:Ljava/lang/String; = "MAX(datetaken) DESC"

.field private static final jw:Landroid/net/Uri; = null

.field private static final kg:[Ljava/lang/String; = null

.field private static final mBaseUri:Landroid/net/Uri; = null

.field public static final yR:Lcom/android/gallery3d/a/dd; = null

.field public static final yS:Lcom/android/gallery3d/a/dd; = null

.field public static final yT:Lcom/android/gallery3d/a/dd; = null

.field private static final yU:Ljava/lang/String; = "external"

.field private static final yV:I = 0x2

.field private static final yW:Landroid/net/Uri;


# instance fields
.field private final i:Lcom/android/gallery3d/app/cl;

.field private ju:Ljava/util/ArrayList;

.field private final mName:Ljava/lang/String;

.field private final mType:I

.field private final yX:Lcom/android/gallery3d/a/cb;

.field private final yY:Lcom/android/gallery3d/a/cb;

.field private yZ:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const-string v0, "/local/all"

    invoke-static {v0}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/a/br;->yR:Lcom/android/gallery3d/a/dd;

    .line 45
    const-string v0, "/local/image"

    invoke-static {v0}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/a/br;->yS:Lcom/android/gallery3d/a/dd;

    .line 46
    const-string v0, "/local/video"

    invoke-static {v0}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/a/br;->yT:Lcom/android/gallery3d/a/dd;

    .line 56
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/a/br;->mBaseUri:Landroid/net/Uri;

    .line 57
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/gallery3d/a/br;->jw:Landroid/net/Uri;

    .line 58
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/gallery3d/a/br;->yW:Landroid/net/Uri;

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v3

    const-string v1, "media_type"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/a/br;->bm:[Ljava/lang/String;

    .line 81
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "count(*)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/a/br;->kg:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-static {}, Lcom/android/gallery3d/a/br;->ex()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/a/r;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/br;->ju:Ljava/util/ArrayList;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/a/br;->yZ:I

    .line 106
    iput-object p2, p0, Lcom/android/gallery3d/a/br;->i:Lcom/android/gallery3d/app/cl;

    .line 107
    invoke-static {p1}, Lcom/android/gallery3d/a/br;->r(Lcom/android/gallery3d/a/dd;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/br;->mType:I

    .line 108
    new-instance v0, Lcom/android/gallery3d/a/cb;

    sget-object v1, Lcom/android/gallery3d/a/br;->jw:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/a/cb;-><init>(Lcom/android/gallery3d/a/r;Landroid/net/Uri;Lcom/android/gallery3d/app/cl;)V

    iput-object v0, p0, Lcom/android/gallery3d/a/br;->yX:Lcom/android/gallery3d/a/cb;

    .line 109
    new-instance v0, Lcom/android/gallery3d/a/cb;

    sget-object v1, Lcom/android/gallery3d/a/br;->yW:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/a/cb;-><init>(Lcom/android/gallery3d/a/r;Landroid/net/Uri;Lcom/android/gallery3d/app/cl;)V

    iput-object v0, p0, Lcom/android/gallery3d/a/br;->yY:Lcom/android/gallery3d/a/cb;

    .line 110
    invoke-interface {p2}, Lcom/android/gallery3d/app/cl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/br;->mName:Ljava/lang/String;

    .line 112
    return-void
.end method

.method private static a([Lcom/android/gallery3d/a/m;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 313
    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 314
    aget-object v2, p0, v0

    iget v2, v2, Lcom/android/gallery3d/a/m;->cF:I

    if-ne v2, p1, :cond_0

    .line 316
    :goto_1
    return v0

    .line 313
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private a(Lcom/android/gallery3d/a/ao;ILcom/android/gallery3d/a/dd;ILjava/lang/String;)Lcom/android/gallery3d/a/r;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    invoke-virtual {p3, p4}, Lcom/android/gallery3d/a/dd;->bn(I)Lcom/android/gallery3d/a/dd;

    move-result-object v1

    .line 380
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/a/ao;->d(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/gallery3d/a/r;

    .line 393
    :goto_0
    return-object v0

    .line 382
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 397
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :pswitch_1
    new-instance v0, Lcom/android/gallery3d/a/db;

    iget-object v2, p0, Lcom/android/gallery3d/a/br;->i:Lcom/android/gallery3d/app/cl;

    const/4 v4, 0x1

    move v3, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/a/db;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;IZLjava/lang/String;)V

    goto :goto_0

    .line 388
    :pswitch_2
    new-instance v0, Lcom/android/gallery3d/a/db;

    iget-object v2, p0, Lcom/android/gallery3d/a/br;->i:Lcom/android/gallery3d/app/cl;

    const/4 v4, 0x1

    move v3, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/a/db;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;IZLjava/lang/String;)V

    goto :goto_0

    .line 390
    :pswitch_3
    new-instance v0, Lcom/android/gallery3d/a/db;

    iget-object v2, p0, Lcom/android/gallery3d/a/br;->i:Lcom/android/gallery3d/app/cl;

    const/4 v4, 0x0

    move v3, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/a/db;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;IZLjava/lang/String;)V

    goto :goto_0

    .line 392
    :pswitch_4
    sget-object v8, Lcom/android/gallery3d/a/ao;->ph:Ljava/util/Comparator;

    .line 393
    new-instance v0, Lcom/android/gallery3d/a/u;

    const/4 v2, 0x2

    new-array v9, v2, [Lcom/android/gallery3d/a/r;

    const/4 v10, 0x0

    const/4 v4, 0x2

    sget-object v5, Lcom/android/gallery3d/a/br;->yS:Lcom/android/gallery3d/a/dd;

    move-object v2, p0

    move-object v3, p1

    move v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/a/br;->a(Lcom/android/gallery3d/a/ao;ILcom/android/gallery3d/a/dd;ILjava/lang/String;)Lcom/android/gallery3d/a/r;

    move-result-object v2

    aput-object v2, v9, v10

    const/4 v10, 0x1

    const/4 v4, 0x4

    sget-object v5, Lcom/android/gallery3d/a/br;->yT:Lcom/android/gallery3d/a/dd;

    move-object v2, p0

    move-object v3, p1

    move v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/a/br;->a(Lcom/android/gallery3d/a/ao;ILcom/android/gallery3d/a/dd;ILjava/lang/String;)Lcom/android/gallery3d/a/r;

    move-result-object v2

    aput-object v2, v9, v10

    invoke-direct {v0, v1, v8, v9}, Lcom/android/gallery3d/a/u;-><init>(Lcom/android/gallery3d/a/dd;Ljava/util/Comparator;[Lcom/android/gallery3d/a/r;)V

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 401
    sget-object v0, Lcom/android/gallery3d/a/br;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 405
    sget-object v2, Lcom/android/gallery3d/a/br;->bm:[Ljava/lang/String;

    const-string v3, "bucket_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 409
    if-nez v2, :cond_0

    .line 410
    const-string v0, "LocalAlbumSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-string v0, ""

    .line 418
    :goto_0
    return-object v0

    .line 414
    :cond_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 418
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 414
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 418
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static a([Ljava/lang/Object;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 476
    aget-object v0, p0, p2

    .line 477
    :goto_0
    if-le p2, p1, :cond_0

    .line 478
    add-int/lit8 v1, p2, -0x1

    aget-object v1, p0, v1

    aput-object v1, p0, p2

    .line 477
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 480
    :cond_0
    aput-object v0, p0, p1

    .line 481
    return-void
.end method

.method private d(Landroid/database/Cursor;)[Lcom/android/gallery3d/a/m;
    .locals 11
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget v2, p0, Lcom/android/gallery3d/a/br;->mType:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_f

    .line 148
    :goto_0
    iget v2, p0, Lcom/android/gallery3d/a/br;->mType:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 149
    or-int/lit8 v0, v0, 0x8

    .line 152
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/a/br;->mType:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_e

    .line 153
    or-int/lit8 v0, v0, 0x2

    move v2, v0

    .line 156
    :goto_1
    invoke-virtual {p0, v3, p1, v2}, Lcom/android/gallery3d/a/br;->a(Ljava/util/ArrayList;Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v7

    .line 157
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 158
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 159
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/m;

    iget v0, v0, Lcom/android/gallery3d/a/m;->cF:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 161
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 162
    iput v1, p0, Lcom/android/gallery3d/a/br;->yZ:I

    .line 164
    :cond_2
    :goto_3
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 165
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    shl-int v0, v4, v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 166
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 167
    const v3, 0x33216d8e

    if-eq v0, v3, :cond_2

    const v3, -0x2e5f70a3

    if-eq v0, v3, :cond_2

    const v3, -0x6c34b3ec

    if-eq v0, v3, :cond_2

    const v3, -0x383d865b

    if-eq v0, v3, :cond_2

    const v3, -0x2fc91b64

    if-eq v0, v3, :cond_2

    const v3, 0x20bdae05

    if-eq v0, v3, :cond_2

    const v3, 0x11093599

    if-eq v0, v3, :cond_2

    const v3, -0x1c6db71

    if-eq v0, v3, :cond_2

    const v3, 0x2293b53d

    if-eq v0, v3, :cond_2

    const v3, 0x21f70390

    if-eq v0, v3, :cond_2

    const v3, -0x7cbff074

    if-eq v0, v3, :cond_2

    const v3, 0x15fb5997

    if-eq v0, v3, :cond_2

    const v3, 0x63c17fa1

    if-eq v0, v3, :cond_2

    .line 180
    new-instance v6, Lcom/android/gallery3d/a/m;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v0, v3}, Lcom/android/gallery3d/a/m;-><init>(ILjava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v1

    .line 184
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 185
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v9, 0x0

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v0, v9, :cond_3

    .line 186
    iget v0, p0, Lcom/android/gallery3d/a/br;->yZ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/a/br;->yZ:I

    .line 184
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 189
    :cond_4
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 190
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 197
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 201
    :try_start_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 202
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 203
    const-string v0, "LocalAlbumSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ListId.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 204
    :goto_5
    if-ge v3, v5, :cond_7

    .line 206
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/m;

    iget v10, v0, Lcom/android/gallery3d/a/m;->cF:I

    move v6, v1

    move v2, v1

    .line 207
    :goto_6
    if-ge v6, v9, :cond_6

    .line 208
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v10, v0, :cond_d

    move v0, v4

    .line 207
    :goto_7
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v0

    goto :goto_6

    .line 212
    :cond_6
    if-nez v2, :cond_c

    .line 213
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 214
    add-int/lit8 v2, v5, -0x1

    .line 215
    add-int/lit8 v0, v3, -0x1

    .line 204
    :goto_8
    add-int/lit8 v3, v0, 0x1

    move v5, v2

    goto :goto_5

    .line 219
    :catch_0
    move-exception v0

    .line 220
    :try_start_2
    const-string v2, "LocalAlbumSet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 225
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/android/gallery3d/a/br;->yZ:I

    if-le v0, v2, :cond_b

    .line 226
    iget v0, p0, Lcom/android/gallery3d/a/br;->mType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    .line 227
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    iget v2, p0, Lcom/android/gallery3d/a/br;->yZ:I

    if-lt v0, v2, :cond_8

    .line 228
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 227
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 222
    :catchall_1
    move-exception v0

    throw v0

    .line 230
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/a/br;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0d00d2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v2, Lcom/android/gallery3d/a/m;

    invoke-direct {v2, v1, v0}, Lcom/android/gallery3d/a/m;-><init>(ILjava/lang/String;)V

    .line 232
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_9
    const-string v0, "LocalAlbumSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/gallery3d/a/m;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/a/m;

    return-object v0

    .line 233
    :cond_a
    iget v0, p0, Lcom/android/gallery3d/a/br;->mType:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9

    move v0, v1

    .line 234
    :goto_a
    iget v2, p0, Lcom/android/gallery3d/a/br;->yZ:I

    if-ge v0, v2, :cond_9

    .line 235
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 239
    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/android/gallery3d/a/br;->yZ:I

    if-ne v0, v2, :cond_9

    .line 240
    iget v0, p0, Lcom/android/gallery3d/a/br;->mType:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9

    move v0, v1

    .line 241
    :goto_b
    iget v2, p0, Lcom/android/gallery3d/a/br;->yZ:I

    if-ge v0, v2, :cond_9

    .line 242
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_c
    move v0, v3

    move v2, v5

    goto/16 :goto_8

    :cond_d
    move v0, v2

    goto/16 :goto_7

    :cond_e
    move v2, v0

    goto/16 :goto_1

    :cond_f
    move v0, v1

    goto/16 :goto_0
.end method

.method private ff()J
    .locals 6

    .prologue
    .line 434
    sget-object v1, Lcom/android/gallery3d/a/br;->mBaseUri:Landroid/net/Uri;

    .line 435
    iget-object v0, p0, Lcom/android/gallery3d/a/br;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/gallery3d/a/br;->bm:[Ljava/lang/String;

    const-string v3, "1) GROUP BY 1,(2"

    const/4 v4, 0x0

    const-string v5, "MAX(datetaken) DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 437
    if-nez v0, :cond_0

    .line 438
    const-string v0, "LocalAlbumSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot open local database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-wide/16 v0, 0x0

    .line 442
    :goto_0
    return-wide v0

    .line 441
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/gallery3d/a/br;->d(Landroid/database/Cursor;)[Lcom/android/gallery3d/a/m;

    move-result-object v0

    .line 442
    array-length v0, v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method private static r(Lcom/android/gallery3d/a/dd;)I
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v4, 0x1

    .line 115
    invoke-virtual {p0}, Lcom/android/gallery3d/a/dd;->gx()[Ljava/lang/String;

    move-result-object v1

    .line 116
    array-length v2, v1

    if-ge v2, v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    const-string v2, "image"

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    array-length v2, v1

    if-le v2, v0, :cond_2

    const-string v2, "more"

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x8

    .line 122
    :cond_1
    :goto_0
    return v0

    .line 120
    :cond_2
    const-string v2, "all"

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x6

    goto :goto_0

    .line 121
    :cond_3
    const-string v2, "image"

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    const-string v0, "video"

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 123
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A(I)Lcom/android/gallery3d/a/r;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/a/br;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/r;

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;Landroid/database/Cursor;I)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 261
    iget-object v0, p0, Lcom/android/gallery3d/a/br;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 262
    const v1, 0x7f0d00af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    const v1, 0x7f0d00b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    const v1, 0x7f0d00b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    const v1, 0x7f0d00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    const v1, 0x7f0d00b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    const v1, 0x7f0d00b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    const v1, 0x7f0d00b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    const v1, 0x7f0d00b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    const v1, 0x7f0d00bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    const v1, 0x7f0d00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    const v1, 0x7f0d00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    const v1, 0x7f0d00b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    const v1, 0x7f0d00b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    const v1, 0x7f0d00ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    const v1, 0x7f0d00bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    const v1, 0x7f0d00bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    const v1, 0x7f0d00bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    const v1, 0x7f0d00be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    const v1, 0x7f0d00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    const v1, 0x7f0d00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    const v1, 0x7f0d00c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    const v1, 0x7f0d00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    const v1, 0x7f0d00c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    const v1, 0x7f0d00c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Lcom/android/gallery3d/a/br;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 288
    iget-object v0, p0, Lcom/android/gallery3d/a/br;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d00d3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 289
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 290
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 291
    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 292
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 294
    const-string v6, "/mnt/sdcard/external_sd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 295
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    :goto_1
    new-instance v6, Lcom/android/gallery3d/a/m;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-direct {v6, v5, v0}, Lcom/android/gallery3d/a/m;-><init>(ILjava/lang/String;)V

    .line 304
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 297
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 300
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 307
    :cond_2
    return-object p1
.end method

.method public aP()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/a/br;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public aT()J
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/gallery3d/a/br;->yX:Lcom/android/gallery3d/a/cb;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/cb;->isDirty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/a/br;->yY:Lcom/android/gallery3d/a/cb;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/cb;->isDirty()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 426
    invoke-static {}, Lcom/android/gallery3d/a/br;->ex()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    .line 427
    invoke-virtual {p0}, Lcom/android/gallery3d/a/br;->fe()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/br;->ju:Ljava/util/ArrayList;

    .line 429
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    return-wide v0
.end method

.method protected fe()Ljava/util/ArrayList;
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 324
    sget-object v1, Lcom/android/gallery3d/a/br;->mBaseUri:Landroid/net/Uri;

    .line 325
    invoke-static {}, Lcom/android/gallery3d/b/y;->fM()V

    .line 326
    iget-object v0, p0, Lcom/android/gallery3d/a/br;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/gallery3d/a/br;->bm:[Ljava/lang/String;

    const-string v3, "1) GROUP BY 1,(2"

    const/4 v4, 0x0

    const-string v5, "MAX(datetaken) DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 328
    if-nez v0, :cond_0

    .line 329
    const-string v0, "LocalAlbumSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot open local database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    :goto_0
    return-object v0

    .line 332
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/gallery3d/a/br;->d(Landroid/database/Cursor;)[Lcom/android/gallery3d/a/m;

    move-result-object v9

    .line 350
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 351
    iget-object v0, p0, Lcom/android/gallery3d/a/br;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v1

    .line 354
    array-length v10, v9

    move v8, v7

    :goto_1
    if-ge v8, v10, :cond_4

    aget-object v11, v9, v8

    .line 355
    iget v2, p0, Lcom/android/gallery3d/a/br;->mType:I

    iget-object v3, p0, Lcom/android/gallery3d/a/bj;->uj:Lcom/android/gallery3d/a/dd;

    iget v4, v11, Lcom/android/gallery3d/a/m;->cF:I

    iget-object v5, v11, Lcom/android/gallery3d/a/m;->cE:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/a/br;->a(Lcom/android/gallery3d/a/ao;ILcom/android/gallery3d/a/dd;ILjava/lang/String;)Lcom/android/gallery3d/a/r;

    move-result-object v2

    .line 357
    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->aN()I

    move-result v0

    .line 359
    if-nez v0, :cond_1

    .line 360
    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->aU()Z

    move-result v0

    .line 361
    iget v3, v11, Lcom/android/gallery3d/a/m;->cF:I

    invoke-virtual {p0, v3, v0}, Lcom/android/gallery3d/a/br;->h(IZ)I

    move-result v0

    .line 364
    :cond_1
    if-gtz v0, :cond_2

    iget v0, v11, Lcom/android/gallery3d/a/m;->cF:I

    if-nez v0, :cond_3

    .line 365
    :cond_2
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 371
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v7

    :goto_2
    if-ge v1, v2, :cond_5

    .line 372
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aT()J

    .line 371
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    move-object v0, v6

    .line 374
    goto :goto_0
.end method

.method fg()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/gallery3d/a/br;->yX:Lcom/android/gallery3d/a/cb;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/cb;->fg()V

    .line 448
    iget-object v0, p0, Lcom/android/gallery3d/a/br;->yY:Lcom/android/gallery3d/a/cb;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/cb;->fg()V

    .line 449
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/a/br;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public h(IZ)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 496
    .line 497
    if-eqz p2, :cond_1

    .line 498
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 499
    const-string v3, "bucket_id = ?"

    .line 505
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/a/br;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/gallery3d/a/br;->kg:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 507
    if-nez v1, :cond_2

    .line 508
    const-string v0, "LocalAlbumSet"

    const-string v1, "cannot open local database: "

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 522
    :cond_0
    :goto_1
    return v0

    .line 501
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 502
    const-string v3, "bucket_id = ?"

    goto :goto_0

    .line 513
    :cond_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 514
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 516
    if-eqz v1, :cond_0

    .line 517
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 516
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 517
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 518
    :cond_3
    throw v0
.end method
