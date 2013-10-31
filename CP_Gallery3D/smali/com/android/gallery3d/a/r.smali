.class public abstract Lcom/android/gallery3d/a/r;
.super Lcom/android/gallery3d/a/bj;
.source "SourceFile"


# static fields
.field public static final gg:I = 0x1f4

.field public static final gh:I = -0x1

.field public static final gi:I = 0x0

.field public static final gj:I = 0x1

.field public static final gk:I = 0x2

.field private static final gm:Lcom/android/gallery3d/b/l;


# instance fields
.field private gl:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lcom/android/gallery3d/a/ay;

    invoke-direct {v0}, Lcom/android/gallery3d/a/ay;-><init>()V

    sput-object v0, Lcom/android/gallery3d/a/r;->gm:Lcom/android/gallery3d/b/l;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/a/dd;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/a/bj;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 138
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/r;->gl:Ljava/util/WeakHashMap;

    .line 57
    return-void
.end method


# virtual methods
.method public A(I)Lcom/android/gallery3d/a/r;
    .locals 1
    .parameter

    .prologue
    .line 89
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method protected a(Lcom/android/gallery3d/a/bu;I)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/android/gallery3d/a/r;->aN()I

    move-result v4

    move v3, v2

    .line 197
    :goto_0
    if-ge v3, v4, :cond_1

    .line 198
    const/16 v0, 0x1f4

    sub-int v1, v4, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 199
    invoke-virtual {p0, v3, v5}, Lcom/android/gallery3d/a/r;->j(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 200
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v1, v2

    :goto_1
    if-ge v1, v7, :cond_0

    .line 201
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    .line 202
    add-int v8, p2, v3

    add-int/2addr v8, v1

    invoke-interface {p1, v8, v0}, Lcom/android/gallery3d/a/bu;->a(ILcom/android/gallery3d/a/ax;)V

    .line 200
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 204
    :cond_0
    add-int v0, v3, v5

    move v3, v0

    .line 205
    goto :goto_0

    .line 206
    :cond_1
    return v4
.end method

.method protected a(Lcom/android/gallery3d/a/dd;Ljava/util/ArrayList;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 128
    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 129
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    iget-object v0, v0, Lcom/android/gallery3d/a/bj;->uj:Lcom/android/gallery3d/a/dd;

    if-ne v0, p1, :cond_0

    move v0, v1

    .line 133
    :goto_1
    return v0

    .line 128
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(Lcom/android/gallery3d/a/da;)Lcom/android/gallery3d/b/l;
    .locals 1
    .parameter

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/gallery3d/a/da;->a(Lcom/android/gallery3d/a/r;I)V

    .line 235
    sget-object v0, Lcom/android/gallery3d/a/r;->gm:Lcom/android/gallery3d/b/l;

    return-object v0
.end method

.method protected a([Lcom/android/gallery3d/a/r;Lcom/android/gallery3d/a/da;)Lcom/android/gallery3d/b/l;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 263
    new-instance v0, Lcom/android/gallery3d/a/ba;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/gallery3d/a/ba;-><init>(Lcom/android/gallery3d/a/r;[Lcom/android/gallery3d/a/r;Lcom/android/gallery3d/a/da;)V

    return-object v0
.end method

.method public a(Lcom/android/gallery3d/a/an;)V
    .locals 2
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/a/r;->gl:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/a/r;->gl:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public a(Lcom/android/gallery3d/a/bu;)V
    .locals 1
    .parameter

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/bu;I)I

    .line 181
    return-void
.end method

.method public aN()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public aO()Lcom/android/gallery3d/a/ax;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 75
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/a/r;->j(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/a/r;->aP()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/a/r;->A(I)Lcom/android/gallery3d/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aO()Lcom/android/gallery3d/a/ax;

    move-result-object v0

    .line 79
    if-nez v0, :cond_0

    .line 77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 81
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aP()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public aQ()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public aR()I
    .locals 4

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/gallery3d/a/r;->aN()I

    move-result v1

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/gallery3d/a/r;->aP()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/a/r;->A(I)Lcom/android/gallery3d/a/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/a/r;->aR()I

    move-result v3

    add-int/2addr v1, v3

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return v1
.end method

.method public aS()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/gallery3d/a/r;->gl:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/an;

    .line 161
    invoke-interface {v0}, Lcom/android/gallery3d/a/an;->aW()V

    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method public abstract aT()J
.end method

.method public aU()Z
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public aq()Lcom/android/gallery3d/a/cw;
    .locals 3

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/gallery3d/a/bj;->aq()Lcom/android/gallery3d/a/cw;

    move-result-object v0

    .line 172
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/gallery3d/a/r;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 173
    return-object v0
.end method

.method protected b(Lcom/android/gallery3d/a/bu;I)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 213
    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/bu;I)I

    move-result v1

    add-int/2addr v1, v0

    .line 215
    invoke-virtual {p0}, Lcom/android/gallery3d/a/r;->aP()I

    move-result v2

    .line 216
    :goto_0
    if-ge v0, v2, :cond_0

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/a/r;->A(I)Lcom/android/gallery3d/a/r;

    move-result-object v3

    add-int v4, p2, v1

    invoke-virtual {v3, p1, v4}, Lcom/android/gallery3d/a/r;->b(Lcom/android/gallery3d/a/bu;I)I

    move-result v3

    add-int/2addr v1, v3

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    return v1
.end method

.method public b(Lcom/android/gallery3d/a/dd;I)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    const/16 v1, 0x1f4

    .line 108
    add-int/lit16 v2, p2, -0xfa

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 110
    invoke-virtual {p0, v2, v1}, Lcom/android/gallery3d/a/r;->j(II)Ljava/util/ArrayList;

    move-result-object v4

    .line 112
    invoke-virtual {p0, p1, v4}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/dd;Ljava/util/ArrayList;)I

    move-result v4

    .line 113
    if-eq v4, v3, :cond_0

    add-int v0, v2, v4

    .line 121
    :goto_0
    return v0

    .line 116
    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    .line 117
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/a/r;->j(II)Ljava/util/ArrayList;

    move-result-object v2

    move-object v5, v2

    move v2, v0

    move-object v0, v5

    .line 119
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/dd;Ljava/util/ArrayList;)I

    move-result v4

    .line 120
    if-eq v4, v3, :cond_2

    add-int v0, v2, v4

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_3

    move v0, v3

    goto :goto_0

    .line 122
    :cond_3
    add-int/lit16 v2, v2, 0x1f4

    .line 123
    invoke-virtual {p0, v2, v1}, Lcom/android/gallery3d/a/r;->j(II)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1
.end method

.method public b(Lcom/android/gallery3d/a/an;)V
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/gallery3d/a/r;->gl:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/a/r;->gl:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public b(Lcom/android/gallery3d/a/bu;)V
    .locals 1
    .parameter

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/a/r;->b(Lcom/android/gallery3d/a/bu;I)I

    .line 185
    return-void
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public j(II)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
