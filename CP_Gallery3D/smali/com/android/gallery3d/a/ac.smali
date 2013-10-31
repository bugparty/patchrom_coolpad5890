.class public Lcom/android/gallery3d/a/ac;
.super Lcom/android/gallery3d/a/r;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/an;


# static fields
.field private static final TAG:Ljava/lang/String; = "MapAlbumSet"

.field public static js:Z

.field public static jt:Z

.field private static final jw:Landroid/net/Uri;


# instance fields
.field private i:Lcom/android/gallery3d/app/cl;

.field private jr:Lcom/android/gallery3d/a/r;

.field private ju:Ljava/util/ArrayList;

.field public jv:Ljava/util/ArrayList;

.field private final jx:Lcom/android/gallery3d/a/cb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/a/ac;->js:Z

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/gallery3d/a/ac;->jt:Z

    .line 28
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/gallery3d/a/ac;->jw:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;Lcom/android/gallery3d/a/r;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-static {}, Lcom/android/gallery3d/a/ac;->ex()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/a/r;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/ac;->ju:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/ac;->jv:Ljava/util/ArrayList;

    .line 34
    iput-object p2, p0, Lcom/android/gallery3d/a/ac;->i:Lcom/android/gallery3d/app/cl;

    .line 35
    sput-boolean p4, Lcom/android/gallery3d/a/ac;->js:Z

    .line 36
    iput-object p3, p0, Lcom/android/gallery3d/a/ac;->jr:Lcom/android/gallery3d/a/r;

    .line 37
    invoke-virtual {p3, p0}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/an;)V

    .line 38
    new-instance v0, Lcom/android/gallery3d/a/cb;

    sget-object v1, Lcom/android/gallery3d/a/ac;->jw:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/a/cb;-><init>(Lcom/android/gallery3d/a/r;Landroid/net/Uri;Lcom/android/gallery3d/app/cl;)V

    iput-object v0, p0, Lcom/android/gallery3d/a/ac;->jx:Lcom/android/gallery3d/a/cb;

    .line 39
    return-void
.end method

.method private bU()V
    .locals 8

    .prologue
    .line 189
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->jr:Lcom/android/gallery3d/a/r;

    new-instance v1, Lcom/android/gallery3d/a/dc;

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/a/dc;-><init>(Lcom/android/gallery3d/a/ac;Ljava/util/HashSet;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/r;->b(Lcom/android/gallery3d/a/bu;)V

    .line 198
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 202
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    .line 203
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/z;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/z;->bB()Ljava/util/ArrayList;

    move-result-object v4

    .line 204
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 206
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v6, :cond_1

    .line 207
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/dd;

    .line 208
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 209
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/z;

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/a/z;->a(Ljava/util/ArrayList;)V

    .line 213
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 202
    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 219
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/a/ac;->bV()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_2
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public A(I)Lcom/android/gallery3d/a/r;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/r;

    return-object v0
.end method

.method public aP()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public aT()J
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->jx:Lcom/android/gallery3d/a/cb;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/cb;->isDirty()Z

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/android/gallery3d/a/ac;->jr:Lcom/android/gallery3d/a/r;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/r;->aT()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/gallery3d/a/bj;->vI:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 60
    sget-boolean v1, Lcom/android/gallery3d/a/ac;->js:Z

    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/android/gallery3d/a/ac;->bS()V

    .line 62
    sput-boolean v5, Lcom/android/gallery3d/a/ac;->js:Z

    .line 63
    sput-boolean v6, Lcom/android/gallery3d/a/ac;->jt:Z

    .line 67
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/gallery3d/a/ac;->ex()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    .line 96
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    return-wide v0

    .line 64
    :cond_2
    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/android/gallery3d/a/ac;->bU()V

    goto :goto_0

    .line 68
    :cond_3
    sget-boolean v1, Lcom/android/gallery3d/a/ac;->js:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 69
    invoke-virtual {p0}, Lcom/android/gallery3d/a/ac;->bS()V

    .line 70
    sput-boolean v5, Lcom/android/gallery3d/a/ac;->js:Z

    .line 71
    invoke-static {}, Lcom/android/gallery3d/a/ac;->ex()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    .line 72
    sput-boolean v6, Lcom/android/gallery3d/a/ac;->jt:Z

    goto :goto_1

    .line 73
    :cond_4
    sget-boolean v1, Lcom/android/gallery3d/a/ac;->jt:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/android/gallery3d/a/ac;->bT()V

    .line 75
    sput-boolean v5, Lcom/android/gallery3d/a/ac;->jt:Z

    goto :goto_1
.end method

.method public aW()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/gallery3d/a/ac;->aS()V

    .line 101
    return-void
.end method

.method public bS()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->jv:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v4

    .line 108
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 109
    new-instance v6, Lcom/android/gallery3d/a/h;

    invoke-direct {v6, v4}, Lcom/android/gallery3d/a/h;-><init>(Landroid/content/Context;)V

    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->jr:Lcom/android/gallery3d/a/r;

    invoke-virtual {v6, v0}, Lcom/android/gallery3d/a/h;->a(Lcom/android/gallery3d/a/r;)V

    .line 111
    invoke-virtual {v6}, Lcom/android/gallery3d/a/h;->J()I

    move-result v7

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v8

    move v2, v3

    .line 113
    :goto_0
    if-ge v2, v7, :cond_1

    .line 115
    invoke-virtual {v6, v2}, Lcom/android/gallery3d/a/h;->l(I)Ljava/lang/String;

    move-result-object v9

    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/a/bj;->uj:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/a/dd;->bn(I)Lcom/android/gallery3d/a/dd;

    move-result-object v10

    .line 117
    invoke-virtual {v8, v10}, Lcom/android/gallery3d/a/ao;->d(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/z;

    .line 119
    if-nez v0, :cond_3

    .line 120
    new-instance v0, Lcom/android/gallery3d/a/z;

    invoke-direct {v0, v10, v8, p0}, Lcom/android/gallery3d/a/z;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/a/ao;Lcom/android/gallery3d/a/r;)V

    move-object v1, v0

    .line 123
    :goto_1
    invoke-virtual {v6, v2}, Lcom/android/gallery3d/a/h;->i(I)Ljava/util/ArrayList;

    move-result-object v11

    .line 124
    invoke-virtual {v1, v11}, Lcom/android/gallery3d/a/z;->a(Ljava/util/ArrayList;)V

    .line 125
    invoke-virtual {v1, v9}, Lcom/android/gallery3d/a/z;->setName(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v6, v2}, Lcom/android/gallery3d/a/aw;->U(I)Lcom/android/gallery3d/a/ax;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/a/z;->a(Lcom/android/gallery3d/a/ax;)V

    .line 127
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/dd;

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    .line 128
    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->dA()Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v12, p0, Lcom/android/gallery3d/a/ac;->ju:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/gallery3d/a/ac;->jv:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "|"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v10}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "|"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6, v2}, Lcom/android/gallery3d/a/h;->j(I)D

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "|"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6, v2}, Lcom/android/gallery3d/a/h;->k(I)D

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->jv:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-boolean v0, Lcom/android/gallery3d/a/ac;->js:Z

    if-eqz v0, :cond_2

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/app/PhotoDisplayMap;

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    const-string v1, "gpsAlbums"

    iget-object v2, p0, Lcom/android/gallery3d/a/ac;->jv:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 140
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/android/gallery3d/a/ac;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v1}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 143
    sput-boolean v3, Lcom/android/gallery3d/a/ac;->js:Z

    .line 146
    :cond_2
    return-void

    :cond_3
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public bT()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->jv:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 155
    new-instance v5, Lcom/android/gallery3d/a/h;

    invoke-direct {v5, v0}, Lcom/android/gallery3d/a/h;-><init>(Landroid/content/Context;)V

    .line 156
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->jr:Lcom/android/gallery3d/a/r;

    invoke-virtual {v5, v0}, Lcom/android/gallery3d/a/h;->a(Lcom/android/gallery3d/a/r;)V

    .line 157
    invoke-virtual {v5}, Lcom/android/gallery3d/a/h;->J()I

    move-result v6

    .line 158
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v7

    move v2, v3

    .line 159
    :goto_0
    if-ge v2, v6, :cond_1

    .line 161
    invoke-virtual {v5, v2}, Lcom/android/gallery3d/a/h;->l(I)Ljava/lang/String;

    move-result-object v8

    .line 162
    iget-object v0, p0, Lcom/android/gallery3d/a/bj;->uj:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/a/dd;->bn(I)Lcom/android/gallery3d/a/dd;

    move-result-object v9

    .line 163
    invoke-virtual {v7, v9}, Lcom/android/gallery3d/a/ao;->d(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/z;

    .line 165
    if-nez v0, :cond_2

    .line 166
    new-instance v0, Lcom/android/gallery3d/a/z;

    invoke-direct {v0, v9, v7, p0}, Lcom/android/gallery3d/a/z;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/a/ao;Lcom/android/gallery3d/a/r;)V

    move-object v1, v0

    .line 169
    :goto_1
    invoke-virtual {v5, v2}, Lcom/android/gallery3d/a/h;->i(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 170
    invoke-virtual {v1, v10}, Lcom/android/gallery3d/a/z;->a(Ljava/util/ArrayList;)V

    .line 171
    invoke-virtual {v1, v8}, Lcom/android/gallery3d/a/z;->setName(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v5, v2}, Lcom/android/gallery3d/a/aw;->U(I)Lcom/android/gallery3d/a/ax;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/a/z;->a(Lcom/android/gallery3d/a/ax;)V

    .line 173
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/dd;

    invoke-virtual {v7, v0}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    .line 174
    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->dA()Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v11, p0, Lcom/android/gallery3d/a/ac;->ju:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/gallery3d/a/ac;->jv:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "|"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v9}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "|"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5, v2}, Lcom/android/gallery3d/a/h;->j(I)D

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "|"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5, v2}, Lcom/android/gallery3d/a/h;->k(I)D

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 185
    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public bV()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 227
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->jv:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->jv:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 232
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->ju:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v4

    .line 234
    :goto_0
    if-ge v3, v6, :cond_4

    .line 235
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/z;

    .line 236
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/a/z;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/a/z;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 239
    invoke-virtual {v0}, Lcom/android/gallery3d/a/z;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v7

    .line 240
    const/4 v1, 0x0

    .line 241
    invoke-virtual {v0, v4, v11}, Lcom/android/gallery3d/a/z;->j(II)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v4, v11}, Lcom/android/gallery3d/a/z;->j(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 243
    invoke-virtual {v0, v4, v11}, Lcom/android/gallery3d/a/z;->j(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/a/at;

    .line 245
    :cond_1
    const-string v2, ""

    .line 246
    const/4 v8, 0x2

    new-array v8, v8, [D

    .line 247
    if-eqz v1, :cond_2

    .line 248
    invoke-virtual {v1}, Lcom/android/gallery3d/a/at;->dA()Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-virtual {v1, v8}, Lcom/android/gallery3d/a/at;->a([D)V

    :cond_2
    move-object v1, v2

    .line 251
    invoke-virtual {v0}, Lcom/android/gallery3d/a/z;->aN()I

    move-result v0

    .line 252
    iget-object v2, p0, Lcom/android/gallery3d/a/ac;->jv:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 253
    iget-object v2, p0, Lcom/android/gallery3d/a/ac;->jv:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "|"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "|"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v9, v8, v4

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v7, v8, v11

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 261
    :cond_4
    return-void
.end method

.method public bW()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->jv:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/a/ac;->jr:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
