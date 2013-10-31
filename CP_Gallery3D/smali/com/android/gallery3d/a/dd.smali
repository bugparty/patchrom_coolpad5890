.class public Lcom/android/gallery3d/a/dd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static JK:Lcom/android/gallery3d/a/dd; = null

.field private static final TAG:Ljava/lang/String; = "Path"


# instance fields
.field private final JL:Lcom/android/gallery3d/a/dd;

.field private final JM:Ljava/lang/String;

.field private JN:Ljava/lang/ref/WeakReference;

.field private JO:Lcom/android/gallery3d/b/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/android/gallery3d/a/dd;

    const/4 v1, 0x0

    const-string v2, "ROOT"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/a/dd;-><init>(Lcom/android/gallery3d/a/dd;Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/a/dd;->JK:Lcom/android/gallery3d/a/dd;

    return-void
.end method

.method private constructor <init>(Lcom/android/gallery3d/a/dd;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/a/dd;->JL:Lcom/android/gallery3d/a/dd;

    .line 36
    iput-object p2, p0, Lcom/android/gallery3d/a/dd;->JM:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;
    .locals 5
    .parameter

    .prologue
    .line 95
    const-class v2, Lcom/android/gallery3d/a/dd;

    monitor-enter v2

    .line 96
    :try_start_0
    invoke-static {p0}, Lcom/android/gallery3d/a/dd;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 97
    sget-object v1, Lcom/android/gallery3d/a/dd;->JK:Lcom/android/gallery3d/a/dd;

    .line 98
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 99
    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/a/dd;->A(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v1

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    monitor-exit v2

    return-object v1

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static C(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/16 v9, 0x7d

    const/16 v8, 0x7b

    const/4 v3, 0x0

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 152
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_0

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v9, :cond_1

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad sequence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 156
    const/4 v2, 0x1

    .line 157
    :goto_0
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_7

    move v1, v2

    move v0, v3

    .line 160
    :goto_1
    add-int/lit8 v6, v4, -0x1

    if-ge v1, v6, :cond_5

    .line 161
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 162
    if-ne v6, v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 160
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 163
    :cond_3
    if-ne v6, v9, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 164
    :cond_4
    if-nez v0, :cond_2

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_2

    .line 166
    :cond_5
    if-eqz v0, :cond_6

    .line 167
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbalanced brace in path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_6
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v2, v1, 0x1

    .line 171
    goto :goto_0

    .line 172
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 173
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 174
    return-object v0
.end method

.method static a(Lcom/android/gallery3d/a/dd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    const-class v2, Lcom/android/gallery3d/a/dd;

    monitor-enter v2

    .line 215
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/a/dd;->gw()Lcom/android/gallery3d/a/bj;

    move-result-object v0

    .line 216
    const-string v1, "Path"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/a/dd;->JM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/a/bx;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/gallery3d/a/dd;->JO:Lcom/android/gallery3d/b/i;

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/a/dd;->JO:Lcom/android/gallery3d/b/i;

    invoke-virtual {v0}, Lcom/android/gallery3d/b/i;->bZ()Ljava/util/ArrayList;

    move-result-object v1

    .line 220
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 221
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    iget-object v5, p0, Lcom/android/gallery3d/a/dd;->JO:Lcom/android/gallery3d/b/i;

    invoke-virtual {v5, v0}, Lcom/android/gallery3d/b/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/dd;

    .line 223
    if-nez v0, :cond_1

    .line 224
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 225
    goto :goto_1

    .line 216
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_1
    const-string v5, "Path"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/a/bx;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v3, :cond_2

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+-- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/android/gallery3d/a/dd;->a(Lcom/android/gallery3d/a/dd;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 231
    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+-- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/android/gallery3d/a/dd;->a(Lcom/android/gallery3d/a/dd;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 235
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    return-void
.end method

.method static clearAll()V
    .locals 4

    .prologue
    .line 204
    const-class v1, Lcom/android/gallery3d/a/dd;

    monitor-enter v1

    .line 205
    :try_start_0
    new-instance v0, Lcom/android/gallery3d/a/dd;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/android/gallery3d/a/dd;-><init>(Lcom/android/gallery3d/a/dd;Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/a/dd;->JK:Lcom/android/gallery3d/a/dd;

    .line 206
    monitor-exit v1

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static gz()V
    .locals 3

    .prologue
    .line 210
    sget-object v0, Lcom/android/gallery3d/a/dd;->JK:Lcom/android/gallery3d/a/dd;

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/a/dd;->a(Lcom/android/gallery3d/a/dd;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x2f

    const/4 v3, 0x0

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 122
    if-nez v4, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    .line 145
    :goto_0
    return-object v0

    .line 123
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v8, :cond_1

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 127
    const/4 v2, 0x1

    .line 128
    :goto_1
    if-ge v2, v4, :cond_7

    move v1, v2

    move v0, v3

    .line 131
    :goto_2
    if-ge v1, v4, :cond_5

    .line 132
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 133
    const/16 v7, 0x7b

    if-ne v6, v7, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 131
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 134
    :cond_3
    const/16 v7, 0x7d

    if-ne v6, v7, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 135
    :cond_4
    if-nez v0, :cond_2

    if-ne v6, v8, :cond_2

    .line 137
    :cond_5
    if-eqz v0, :cond_6

    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbalanced brace in path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_6
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v2, v1, 0x1

    .line 142
    goto :goto_1

    .line 143
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 144
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;
    .locals 3
    .parameter

    .prologue
    .line 40
    const-class v1, Lcom/android/gallery3d/a/dd;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/a/dd;->JO:Lcom/android/gallery3d/b/i;

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Lcom/android/gallery3d/b/i;

    invoke-direct {v0}, Lcom/android/gallery3d/b/i;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/dd;->JO:Lcom/android/gallery3d/b/i;

    .line 48
    :cond_0
    new-instance v0, Lcom/android/gallery3d/a/dd;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/a/dd;-><init>(Lcom/android/gallery3d/a/dd;Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Lcom/android/gallery3d/a/dd;->JO:Lcom/android/gallery3d/b/i;

    invoke-virtual {v2, p1, v0}, Lcom/android/gallery3d/b/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    monitor-exit v1

    :goto_0
    return-object v0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/a/dd;->JO:Lcom/android/gallery3d/b/i;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/b/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/dd;

    .line 45
    if-eqz v0, :cond_0

    monitor-exit v1

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bn(I)Lcom/android/gallery3d/a/dd;
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/a/dd;->A(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    return-object v0
.end method

.method public bo(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 195
    .line 196
    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-eqz p1, :cond_0

    .line 197
    iget-object p0, p0, Lcom/android/gallery3d/a/dd;->JL:Lcom/android/gallery3d/a/dd;

    move p1, v0

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/a/dd;->JM:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 178
    const-class v1, Lcom/android/gallery3d/a/dd;

    monitor-enter v1

    .line 180
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/a/dd;->JK:Lcom/android/gallery3d/a/dd;

    if-ne p0, v0, :cond_0

    const-string v0, ""

    monitor-exit v1

    .line 184
    :goto_0
    return-object v0

    .line 181
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/a/dd;->JL:Lcom/android/gallery3d/a/dd;

    sget-object v2, Lcom/android/gallery3d/a/dd;->JK:Lcom/android/gallery3d/a/dd;

    if-eq v0, v2, :cond_1

    .line 182
    iget-object p0, p0, Lcom/android/gallery3d/a/dd;->JL:Lcom/android/gallery3d/a/dd;

    goto :goto_1

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/a/dd;->JM:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public gv()Lcom/android/gallery3d/a/dd;
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/android/gallery3d/a/dd;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/a/dd;->JL:Lcom/android/gallery3d/a/dd;

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public gw()Lcom/android/gallery3d/a/bj;
    .locals 2

    .prologue
    .line 76
    const-class v1, Lcom/android/gallery3d/a/dd;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/a/dd;->JN:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/a/dd;->JN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/bj;

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public gx()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 106
    const-class v2, Lcom/android/gallery3d/a/dd;

    monitor-enter v2

    .line 107
    const/4 v0, 0x0

    move v1, v0

    move-object v0, p0

    .line 108
    :goto_0
    :try_start_0
    sget-object v3, Lcom/android/gallery3d/a/dd;->JK:Lcom/android/gallery3d/a/dd;

    if-eq v0, v3, :cond_0

    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 108
    iget-object v0, v0, Lcom/android/gallery3d/a/dd;->JL:Lcom/android/gallery3d/a/dd;

    goto :goto_0

    .line 111
    :cond_0
    new-array v3, v1, [Ljava/lang/String;

    .line 112
    add-int/lit8 v0, v1, -0x1

    .line 113
    :goto_1
    sget-object v1, Lcom/android/gallery3d/a/dd;->JK:Lcom/android/gallery3d/a/dd;

    if-eq p0, v1, :cond_1

    .line 114
    add-int/lit8 v1, v0, -0x1

    iget-object v4, p0, Lcom/android/gallery3d/a/dd;->JM:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 113
    iget-object p0, p0, Lcom/android/gallery3d/a/dd;->JL:Lcom/android/gallery3d/a/dd;

    move v0, v1

    goto :goto_1

    .line 116
    :cond_1
    monitor-exit v2

    return-object v3

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public gy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/a/dd;->JM:Ljava/lang/String;

    return-object v0
.end method

.method public i(J)Lcom/android/gallery3d/a/dd;
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/a/dd;->A(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    return-object v0
.end method

.method public j(Lcom/android/gallery3d/a/bj;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    const-class v1, Lcom/android/gallery3d/a/dd;

    monitor-enter v1

    .line 71
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/gallery3d/a/dd;->JN:Ljava/lang/ref/WeakReference;

    .line 72
    monitor-exit v1

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 83
    const-class v1, Lcom/android/gallery3d/a/dd;

    monitor-enter v1

    .line 84
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-virtual {p0}, Lcom/android/gallery3d/a/dd;->gx()[Ljava/lang/String;

    move-result-object v3

    .line 86
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 87
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
