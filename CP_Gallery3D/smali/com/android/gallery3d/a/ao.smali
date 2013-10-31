.class public Lcom/android/gallery3d/a/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DataManager"

.field public static final oP:I = 0x1

.field public static final oQ:I = 0x2

.field public static final oR:I = 0x3

.field public static final oS:I = 0x4

.field public static final oT:I = 0x5

.field public static final oU:I = 0x6

.field public static final oV:I = 0x7

.field public static final oW:I = 0x9

.field public static final oX:Ljava/lang/Object; = null

.field private static final oY:Ljava/lang/String; = "/combo/{/mtp,/local/all,/picasa/all}"

.field public static final oZ:Ljava/lang/String; = "/combo/{/mtp,/local/image,/picasa/image}"

.field private static final pa:Ljava/lang/String; = "/combo/{/local/video,/picasa/video}"

.field private static final pb:Ljava/lang/String; = "/local/all"

.field private static final pc:Ljava/lang/String; = "/local/image"

.field private static final pd:Ljava/lang/String; = "/local/video"

.field private static final pe:Ljava/lang/String; = "/local/image/more"

.field public static final pf:Ljava/lang/String; = "/map/{/combo/{/mtp,/local/image,/local/image/more,/picasa/image}}/maplocation"

.field public static final pg:Ljava/lang/String; = "{/combo/{/mtp,/local/image,/local/image/more,/picasa/image}}"

.field public static final ph:Ljava/util/Comparator;


# instance fields
.field private i:Lcom/android/gallery3d/app/cl;

.field private final pi:Landroid/os/Handler;

.field private pj:I

.field public pk:Z

.field public pl:Z

.field private pm:Ljava/util/HashMap;

.field private pn:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/gallery3d/a/ao;->oX:Ljava/lang/Object;

    .line 91
    new-instance v0, Lcom/android/gallery3d/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/a/d;-><init>(Lcom/android/gallery3d/a/cq;)V

    sput-object v0, Lcom/android/gallery3d/a/ao;->ph:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/cl;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v0, p0, Lcom/android/gallery3d/a/ao;->pj:I

    .line 106
    iput-boolean v0, p0, Lcom/android/gallery3d/a/ao;->pk:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/gallery3d/a/ao;->pl:Z

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/ao;->pm:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/ao;->pn:Ljava/util/HashMap;

    .line 117
    iput-object p1, p0, Lcom/android/gallery3d/a/ao;->i:Lcom/android/gallery3d/app/cl;

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p1}, Lcom/android/gallery3d/app/cl;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/a/ao;->pi:Landroid/os/Handler;

    .line 119
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcom/android/gallery3d/a/cb;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 320
    .line 321
    iget-object v1, p0, Lcom/android/gallery3d/a/ao;->pm:Ljava/util/HashMap;

    monitor-enter v1

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/a/ao;->pm:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/bc;

    .line 323
    if-nez v0, :cond_0

    .line 324
    new-instance v0, Lcom/android/gallery3d/a/bc;

    iget-object v2, p0, Lcom/android/gallery3d/a/ao;->pi:Landroid/os/Handler;

    invoke-direct {v0, v2}, Lcom/android/gallery3d/a/bc;-><init>(Landroid/os/Handler;)V

    .line 325
    iget-object v2, p0, Lcom/android/gallery3d/a/ao;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v2}, Lcom/android/gallery3d/app/cl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 327
    iget-object v2, p0, Lcom/android/gallery3d/a/ao;->pm:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/a/bc;->a(Lcom/android/gallery3d/a/cb;)V

    .line 331
    return-void

    .line 329
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(Lcom/android/gallery3d/a/ci;)V
    .locals 2
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/a/ao;->pn:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/a/ci;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
.end method

.method public a(Ljava/util/ArrayList;Lcom/android/gallery3d/a/bu;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 237
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 238
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    .line 239
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/dd;

    .line 240
    invoke-virtual {v0}, Lcom/android/gallery3d/a/dd;->getPrefix()Ljava/lang/String;

    move-result-object v5

    .line 241
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 242
    if-nez v1, :cond_0

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_0
    new-instance v5, Lcom/android/gallery3d/a/cg;

    add-int v6, v2, p3

    invoke-direct {v5, v0, v6}, Lcom/android/gallery3d/a/cg;-><init>(Lcom/android/gallery3d/a/dd;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 251
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 252
    iget-object v3, p0, Lcom/android/gallery3d/a/ao;->pn:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/a/ci;

    .line 253
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Lcom/android/gallery3d/a/ci;->a(Ljava/util/ArrayList;Lcom/android/gallery3d/a/bu;)V

    goto :goto_1

    .line 255
    :cond_2
    return-void
.end method

.method public ai(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 145
    packed-switch p1, :pswitch_data_0

    .line 153
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 146
    :pswitch_1
    const-string v0, "/combo/{/mtp,/local/image,/picasa/image}"

    .line 152
    :goto_0
    return-object v0

    .line 147
    :pswitch_2
    const-string v0, "/combo/{/local/video,/picasa/video}"

    goto :goto_0

    .line 148
    :pswitch_3
    const-string v0, "/combo/{/mtp,/local/all,/picasa/all}"

    goto :goto_0

    .line 149
    :pswitch_4
    const-string v0, "/local/image"

    goto :goto_0

    .line 150
    :pswitch_5
    const-string v0, "/local/video"

    goto :goto_0

    .line 151
    :pswitch_6
    const-string v0, "/local/all"

    goto :goto_0

    .line 152
    :pswitch_7
    const-string v0, "/local/image/more"

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public d(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;
    .locals 1
    .parameter

    .prologue
    .line 163
    invoke-virtual {p1}, Lcom/android/gallery3d/a/dd;->gw()Lcom/android/gallery3d/a/bj;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/android/gallery3d/a/dd;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/a/bj;->E(I)V

    .line 268
    return-void
.end method

.method public declared-synchronized dh()V
    .locals 2

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/a/ao;->pn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 141
    :cond_0
    monitor-exit p0

    return-void

    .line 125
    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/gallery3d/a/bk;

    iget-object v1, p0, Lcom/android/gallery3d/a/ao;->i:Lcom/android/gallery3d/app/cl;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/a/bk;-><init>(Lcom/android/gallery3d/app/cl;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/a/ao;->a(Lcom/android/gallery3d/a/ci;)V

    .line 126
    new-instance v0, Lcom/android/gallery3d/c/b;

    iget-object v1, p0, Lcom/android/gallery3d/a/ao;->i:Lcom/android/gallery3d/app/cl;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/c/b;-><init>(Lcom/android/gallery3d/app/cl;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/a/ao;->a(Lcom/android/gallery3d/a/ci;)V

    .line 127
    new-instance v0, Lcom/android/gallery3d/a/e;

    iget-object v1, p0, Lcom/android/gallery3d/a/ao;->i:Lcom/android/gallery3d/app/cl;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/a/e;-><init>(Lcom/android/gallery3d/app/cl;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/a/ao;->a(Lcom/android/gallery3d/a/ci;)V

    .line 128
    new-instance v0, Lcom/android/gallery3d/a/b;

    iget-object v1, p0, Lcom/android/gallery3d/a/ao;->i:Lcom/android/gallery3d/app/cl;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/a/b;-><init>(Lcom/android/gallery3d/app/cl;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/a/ao;->a(Lcom/android/gallery3d/a/ci;)V

    .line 129
    new-instance v0, Lcom/android/gallery3d/a/bv;

    iget-object v1, p0, Lcom/android/gallery3d/a/ao;->i:Lcom/android/gallery3d/app/cl;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/a/bv;-><init>(Lcom/android/gallery3d/app/cl;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/a/ao;->a(Lcom/android/gallery3d/a/ci;)V

    .line 130
    new-instance v0, Lcom/android/gallery3d/a/ct;

    iget-object v1, p0, Lcom/android/gallery3d/a/ao;->i:Lcom/android/gallery3d/app/cl;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/a/ct;-><init>(Lcom/android/gallery3d/app/cl;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/a/ao;->a(Lcom/android/gallery3d/a/ci;)V

    .line 131
    new-instance v0, Lcom/android/gallery3d/a/ch;

    iget-object v1, p0, Lcom/android/gallery3d/a/ao;->i:Lcom/android/gallery3d/app/cl;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/a/ch;-><init>(Lcom/android/gallery3d/app/cl;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/a/ao;->a(Lcom/android/gallery3d/a/ci;)V

    .line 133
    new-instance v0, Lcom/android/gallery3d/a/bg;

    iget-object v1, p0, Lcom/android/gallery3d/a/ao;->i:Lcom/android/gallery3d/app/cl;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/a/bg;-><init>(Lcom/android/gallery3d/app/cl;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/a/ao;->a(Lcom/android/gallery3d/a/ci;)V

    .line 136
    iget v0, p0, Lcom/android/gallery3d/a/ao;->pj:I

    if-lez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/a/ao;->pn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ci;

    .line 138
    invoke-virtual {v0}, Lcom/android/gallery3d/a/ci;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public di()J
    .locals 6

    .prologue
    .line 302
    const-wide/16 v0, 0x0

    .line 303
    iget-object v2, p0, Lcom/android/gallery3d/a/ao;->pn:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ci;

    .line 304
    invoke-virtual {v0}, Lcom/android/gallery3d/a/ci;->di()J

    move-result-wide v4

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0

    .line 306
    :cond_0
    return-wide v1
.end method

.method public dj()J
    .locals 6

    .prologue
    .line 312
    const-wide/16 v0, 0x0

    .line 313
    iget-object v2, p0, Lcom/android/gallery3d/a/ao;->pn:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ci;

    .line 314
    invoke-virtual {v0}, Lcom/android/gallery3d/a/ci;->dj()J

    move-result-wide v4

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0

    .line 316
    :cond_0
    return-wide v1
.end method

.method public dk()Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/android/gallery3d/a/ao;->pk:Z

    return v0
.end method

.method public dl()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/android/gallery3d/a/ao;->pl:Z

    return v0
.end method

.method public e(Landroid/net/Uri;)Lcom/android/gallery3d/a/dd;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 287
    if-nez p1, :cond_0

    move-object v0, v1

    .line 292
    :goto_0
    return-object v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/a/ao;->pn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ci;

    .line 289
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/ci;->e(Landroid/net/Uri;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 292
    goto :goto_0
.end method

.method public e(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/r;
    .locals 1
    .parameter

    .prologue
    .line 167
    invoke-virtual {p1}, Lcom/android/gallery3d/a/dd;->gw()Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/r;

    return-object v0
.end method

.method public e(Lcom/android/gallery3d/a/dd;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/a/bj;->au(I)V

    .line 284
    return-void
.end method

.method public f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;
    .locals 5
    .parameter

    .prologue
    .line 171
    invoke-virtual {p1}, Lcom/android/gallery3d/a/dd;->gw()Lcom/android/gallery3d/a/bj;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_1

    .line 174
    instance-of v1, v0, Lcom/android/gallery3d/a/ac;

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/android/gallery3d/a/bj;->bW()Ljava/util/ArrayList;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 177
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/gallery3d/a/ao;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v3}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/gallery3d/app/PhotoDisplayMap;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    const-string v3, "gpsAlbums"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 179
    const/high16 v1, 0x1400

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/android/gallery3d/a/ao;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v1}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 201
    :cond_0
    :goto_0
    return-object v0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/a/ao;->pn:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/a/dd;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ci;

    .line 192
    if-nez v0, :cond_2

    .line 193
    const-string v0, "DataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find media source for path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/a/bx;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/ci;->a(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    .line 198
    if-nez v0, :cond_0

    .line 199
    const-string v1, "DataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot create media object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/a/bx;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public g(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/r;
    .locals 1
    .parameter

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/r;

    return-object v0
.end method

.method public h(Lcom/android/gallery3d/a/dd;)I
    .locals 1
    .parameter

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/bj;->am()I

    move-result v0

    return v0
.end method

.method public i(Lcom/android/gallery3d/a/dd;)V
    .locals 1
    .parameter

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/bj;->delete()V

    .line 264
    return-void
.end method

.method public j(Lcom/android/gallery3d/a/dd;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/bj;->ap()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public j(Z)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-boolean p1, p0, Lcom/android/gallery3d/a/ao;->pk:Z

    .line 379
    return-void
.end method

.method public k(Lcom/android/gallery3d/a/dd;)I
    .locals 1
    .parameter

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/bj;->ao()I

    move-result v0

    return v0
.end method

.method public k(Z)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/android/gallery3d/a/ao;->pl:Z

    .line 387
    return-void
.end method

.method public l(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/cw;
    .locals 1
    .parameter

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/bj;->aq()Lcom/android/gallery3d/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public m(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/dd;
    .locals 2
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/gallery3d/a/ao;->pn:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/a/dd;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ci;

    .line 297
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/ci;->m(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    goto :goto_0
.end method

.method public o(Ljava/lang/String;)Lcom/android/gallery3d/a/bj;
    .locals 1
    .parameter

    .prologue
    .line 205
    invoke-static {p1}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/String;)Lcom/android/gallery3d/a/r;
    .locals 1
    .parameter

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/ao;->o(Ljava/lang/String;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/r;

    return-object v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 342
    iget v0, p0, Lcom/android/gallery3d/a/ao;->pj:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/a/ao;->pj:I

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/gallery3d/a/ao;->pn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ci;

    .line 344
    invoke-virtual {v0}, Lcom/android/gallery3d/a/ci;->pause()V

    goto :goto_0

    .line 347
    :cond_0
    return-void
.end method

.method public q(Ljava/lang/String;)[Lcom/android/gallery3d/a/r;
    .locals 5
    .parameter

    .prologue
    .line 217
    invoke-static {p1}, Lcom/android/gallery3d/a/dd;->C(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 218
    array-length v2, v1

    .line 219
    new-array v3, v2, [Lcom/android/gallery3d/a/r;

    .line 220
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 221
    aget-object v4, v1, v0

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/a/ao;->p(Ljava/lang/String;)Lcom/android/gallery3d/a/r;

    move-result-object v4

    aput-object v4, v3, v0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_0
    return-object v3
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 334
    iget v0, p0, Lcom/android/gallery3d/a/ao;->pj:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/a/ao;->pj:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/gallery3d/a/ao;->pn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ci;

    .line 336
    invoke-virtual {v0}, Lcom/android/gallery3d/a/ci;->resume()V

    goto :goto_0

    .line 339
    :cond_0
    return-void
.end method
