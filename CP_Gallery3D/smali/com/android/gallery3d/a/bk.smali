.class Lcom/android/gallery3d/a/bk;
.super Lcom/android/gallery3d/a/ci;
.source "SourceFile"


# static fields
.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static final MEDIA_TYPE_VIDEO:I = 0x4

.field private static final NO_MATCH:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LocalSource"

.field private static final xA:I = 0x3

.field private static final xB:I = 0x4

.field private static final xC:I = 0x5

.field private static final xD:I = 0x6

.field private static final xE:I = 0x7

.field private static final xF:I = 0x8

.field public static final xu:Ljava/lang/String; = "bucketId"

.field public static final xw:Ljava/util/Comparator; = null

.field private static final xx:I = 0x0

.field private static final xy:I = 0x1

.field private static final xz:I = 0x2


# instance fields
.field private i:Lcom/android/gallery3d/app/cl;

.field private j:Lcom/android/gallery3d/a/bz;

.field private xG:Landroid/content/ContentProviderClient;

.field private final xv:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/android/gallery3d/a/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/a/o;-><init>(Lcom/android/gallery3d/a/ar;)V

    sput-object v0, Lcom/android/gallery3d/a/bk;->xw:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/cl;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 58
    const-string v0, "local"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/a/ci;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/a/bk;->xv:Landroid/content/UriMatcher;

    .line 59
    iput-object p1, p0, Lcom/android/gallery3d/a/bk;->i:Lcom/android/gallery3d/app/cl;

    .line 60
    new-instance v0, Lcom/android/gallery3d/a/bz;

    invoke-direct {v0}, Lcom/android/gallery3d/a/bz;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/bk;->j:Lcom/android/gallery3d/a/bz;

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/local/image"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/local/video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/local/all"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/local/image/more/"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/local/image/*"

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/local/video/*"

    invoke-virtual {v0, v1, v5}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/local/image/more/*"

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/local/all/*"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/local/image/item/*"

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/local/video/item/*"

    invoke-virtual {v0, v1, v6}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/local/image/more/item/*"

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->xv:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/images/media/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->xv:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/video/media/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->xv:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/images/media"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->xv:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/video/media"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method private a(Landroid/net/Uri;I)Lcom/android/gallery3d/a/dd;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 145
    const-string v0, "mediaTypes"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/gallery3d/a/bk;->e(Ljava/lang/String;I)I

    move-result v0

    .line 148
    const-string v1, "bucketId"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 156
    packed-switch v0, :pswitch_data_0

    .line 162
    :pswitch_0
    const-string v0, "/local/all"

    invoke-static {v0}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/dd;->bn(I)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    :goto_0
    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const-string v2, "LocalSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid bucket id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/android/gallery3d/a/bx;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    const/4 v0, 0x0

    goto :goto_0

    .line 158
    :pswitch_1
    const-string v0, "/local/image"

    invoke-static {v0}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/dd;->bn(I)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    goto :goto_0

    .line 160
    :pswitch_2
    const-string v0, "/local/video"

    invoke-static {v0}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/dd;->bn(I)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/util/ArrayList;Lcom/android/gallery3d/a/bu;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    sget-object v0, Lcom/android/gallery3d/a/bk;->xw:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 226
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 227
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_3

    .line 228
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/cg;

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    iget-object v0, v0, Lcom/android/gallery3d/a/cg;->jy:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/dd;->gy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 233
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v0, v2, 0x1

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_0

    .line 237
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/cg;

    .line 238
    iget-object v0, v0, Lcom/android/gallery3d/a/cg;->jy:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/dd;->gy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 239
    sub-int v6, v0, v5

    const/16 v7, 0x1f4

    if-lt v6, v7, :cond_1

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->i:Lcom/android/gallery3d/app/cl;

    invoke-static {v0, p3, v1}, Lcom/android/gallery3d/a/db;->a(Lcom/android/gallery3d/app/cl;ZLjava/util/ArrayList;)[Lcom/android/gallery3d/a/ax;

    move-result-object v5

    move v1, v2

    .line 247
    :goto_2
    if-ge v1, v3, :cond_2

    .line 248
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/cg;

    .line 249
    iget v0, v0, Lcom/android/gallery3d/a/cg;->id:I

    sub-int v6, v1, v2

    aget-object v6, v5, v6

    invoke-interface {p2, v0, v6}, Lcom/android/gallery3d/a/bu;->a(ILcom/android/gallery3d/a/ax;)V

    .line 247
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 242
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 253
    goto :goto_0

    .line 254
    :cond_3
    return-void
.end method

.method private static e(Ljava/lang/String;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 129
    if-nez p0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return p1

    .line 131
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 132
    and-int/lit8 v1, v0, 0x5

    if-eqz v1, :cond_0

    move p1, v0

    .line 133
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    const-string v1, "LocalSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/a/bx;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 86
    iget-object v1, p0, Lcom/android/gallery3d/a/bk;->i:Lcom/android/gallery3d/app/cl;

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->j:Lcom/android/gallery3d/a/bz;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/bz;->s(Lcom/android/gallery3d/a/dd;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :pswitch_0
    new-instance v0, Lcom/android/gallery3d/a/br;

    iget-object v1, p0, Lcom/android/gallery3d/a/bk;->i:Lcom/android/gallery3d/app/cl;

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/a/br;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;)V

    .line 122
    :goto_0
    return-object v0

    .line 105
    :pswitch_1
    new-instance v0, Lcom/android/gallery3d/a/db;

    iget-object v2, p0, Lcom/android/gallery3d/a/bk;->j:Lcom/android/gallery3d/a/bz;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/a/bz;->aK(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2, v6}, Lcom/android/gallery3d/a/db;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;IZ)V

    goto :goto_0

    .line 107
    :pswitch_2
    new-instance v0, Lcom/android/gallery3d/a/db;

    iget-object v2, p0, Lcom/android/gallery3d/a/bk;->j:Lcom/android/gallery3d/a/bz;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/a/bz;->aK(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2, v5}, Lcom/android/gallery3d/a/db;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;IZ)V

    goto :goto_0

    .line 109
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->j:Lcom/android/gallery3d/a/bz;

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/a/bz;->aK(I)I

    move-result v2

    .line 110
    invoke-interface {v1}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v1

    .line 111
    sget-object v0, Lcom/android/gallery3d/a/br;->yS:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/a/dd;->bn(I)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/r;

    .line 113
    sget-object v3, Lcom/android/gallery3d/a/br;->yT:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/a/dd;->bn(I)Lcom/android/gallery3d/a/dd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/a/r;

    .line 115
    sget-object v3, Lcom/android/gallery3d/a/ao;->ph:Ljava/util/Comparator;

    .line 116
    new-instance v2, Lcom/android/gallery3d/a/u;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/android/gallery3d/a/r;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-direct {v2, p1, v3, v4}, Lcom/android/gallery3d/a/u;-><init>(Lcom/android/gallery3d/a/dd;Ljava/util/Comparator;[Lcom/android/gallery3d/a/r;)V

    move-object v0, v2

    goto :goto_0

    .line 120
    :pswitch_4
    new-instance v0, Lcom/android/gallery3d/a/av;

    iget-object v1, p0, Lcom/android/gallery3d/a/bk;->i:Lcom/android/gallery3d/app/cl;

    iget-object v2, p0, Lcom/android/gallery3d/a/bk;->j:Lcom/android/gallery3d/a/bz;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/a/bz;->aK(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/gallery3d/a/av;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;I)V

    goto :goto_0

    .line 122
    :pswitch_5
    new-instance v0, Lcom/android/gallery3d/a/ak;

    iget-object v1, p0, Lcom/android/gallery3d/a/bk;->i:Lcom/android/gallery3d/app/cl;

    iget-object v2, p0, Lcom/android/gallery3d/a/bk;->j:Lcom/android/gallery3d/a/bz;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/a/bz;->aK(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/gallery3d/a/ak;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;I)V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/util/ArrayList;Lcom/android/gallery3d/a/bu;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 203
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 204
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    .line 206
    :goto_0
    if-ge v1, v5, :cond_2

    .line 207
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/cg;

    .line 210
    iget-object v6, v0, Lcom/android/gallery3d/a/cg;->jy:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v6}, Lcom/android/gallery3d/a/dd;->gv()Lcom/android/gallery3d/a/dd;

    move-result-object v6

    .line 211
    sget-object v7, Lcom/android/gallery3d/a/av;->nV:Lcom/android/gallery3d/a/dd;

    if-ne v6, v7, :cond_1

    .line 212
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 213
    :cond_1
    sget-object v7, Lcom/android/gallery3d/a/ak;->nV:Lcom/android/gallery3d/a/dd;

    if-ne v6, v7, :cond_0

    .line 214
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 218
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v3, p2, v0}, Lcom/android/gallery3d/a/bk;->a(Ljava/util/ArrayList;Lcom/android/gallery3d/a/bu;Z)V

    .line 219
    invoke-direct {p0, v4, p2, v2}, Lcom/android/gallery3d/a/bk;->a(Ljava/util/ArrayList;Lcom/android/gallery3d/a/bu;Z)V

    .line 220
    return-void
.end method

.method public e(Landroid/net/Uri;)Lcom/android/gallery3d/a/dd;
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/a/bk;->xv:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 188
    :cond_0
    :goto_0
    return-object v0

    .line 171
    :pswitch_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 172
    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    sget-object v3, Lcom/android/gallery3d/a/av;->nV:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v3, v1, v2}, Lcom/android/gallery3d/a/dd;->i(J)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    goto :goto_0

    .line 175
    :pswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 176
    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    sget-object v3, Lcom/android/gallery3d/a/ak;->nV:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v3, v1, v2}, Lcom/android/gallery3d/a/dd;->i(J)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    goto :goto_0

    .line 179
    :pswitch_2
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/a/bk;->a(Landroid/net/Uri;I)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    goto :goto_0

    .line 182
    :pswitch_3
    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/a/bk;->a(Landroid/net/Uri;I)Lcom/android/gallery3d/a/dd;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    const-string v2, "LocalSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/gallery3d/a/bx;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public m(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/dd;
    .locals 2
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    .line 194
    instance-of v1, v0, Lcom/android/gallery3d/a/at;

    if-eqz v1, :cond_0

    .line 195
    const-string v1, "/local/all"

    invoke-static {v1}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v1

    check-cast v0, Lcom/android/gallery3d/a/at;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/at;->dz()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/a/dd;->A(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->xG:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->xG:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/a/bk;->xG:Landroid/content/ContentProviderClient;

    .line 284
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/gallery3d/a/bk;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/bk;->xG:Landroid/content/ContentProviderClient;

    .line 277
    return-void
.end method
