.class public Lcom/android/gallery3d/ui/ev;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Jd:I = 0x1

.field public static final Je:I = 0x2

.field public static final Jf:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SelectionManager"


# instance fields
.field private Jg:Ljava/util/Set;

.field private Jh:Lcom/android/gallery3d/a/r;

.field private Ji:Lcom/android/gallery3d/ui/ba;

.field private Jj:Z

.field private Jk:Z

.field private Jl:Z

.field private Jm:Z

.field private ih:Lcom/android/gallery3d/a/ao;

.field private mTotal:I

.field private rv:Lcom/android/gallery3d/a/dd;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/bh;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/ev;->Jm:Z

    .line 54
    invoke-interface {p1}, Lcom/android/gallery3d/app/bh;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ev;->ih:Lcom/android/gallery3d/a/ao;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ev;->Jg:Ljava/util/Set;

    .line 56
    iput-boolean p2, p0, Lcom/android/gallery3d/ui/ev;->Jk:Z

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/ev;->mTotal:I

    .line 58
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Lcom/android/gallery3d/a/r;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-virtual {p1}, Lcom/android/gallery3d/a/r;->aP()I

    move-result v2

    move v1, v0

    .line 156
    :goto_0
    if-ge v1, v2, :cond_0

    .line 157
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/a/r;->A(I)Lcom/android/gallery3d/a/r;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/gallery3d/ui/ev;->a(Ljava/util/ArrayList;Lcom/android/gallery3d/a/r;)V

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/a/r;->aN()I

    move-result v3

    .line 160
    const/16 v1, 0x32

    move v2, v0

    .line 163
    :goto_1
    if-ge v2, v3, :cond_3

    .line 164
    add-int v0, v2, v1

    if-ge v0, v3, :cond_1

    move v0, v1

    .line 167
    :goto_2
    invoke-virtual {p1, v2, v0}, Lcom/android/gallery3d/a/r;->j(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    .line 169
    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 164
    :cond_1
    sub-int v0, v3, v2

    goto :goto_2

    .line 171
    :cond_2
    add-int v0, v2, v1

    move v2, v0

    .line 172
    goto :goto_1

    .line 173
    :cond_3
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/ui/ev;->Ji:Lcom/android/gallery3d/ui/ba;

    .line 68
    return-void
.end method

.method public g(Lcom/android/gallery3d/a/r;)V
    .locals 1
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/gallery3d/ui/ev;->Jh:Lcom/android/gallery3d/a/r;

    .line 225
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/ev;->mTotal:I

    .line 226
    return-void
.end method

.method public gn()V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ev;->gr()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/ev;->Jj:Z

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Jg:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 81
    return-void
.end method

.method public go()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ev;->Jj:Z

    return v0
.end method

.method public gp()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ev;->Jl:Z

    return v0
.end method

.method public gq()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 92
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ev;->Jl:Z

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/ev;->Jl:Z

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Ji:Lcom/android/gallery3d/ui/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Ji:Lcom/android/gallery3d/ui/ba;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/ba;->R(I)V

    goto :goto_0
.end method

.method public gr()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ev;->Jl:Z

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/ev;->Jl:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/ev;->Jj:Z

    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Jg:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Ji:Lcom/android/gallery3d/ui/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Ji:Lcom/android/gallery3d/ui/ba;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/ba;->R(I)V

    goto :goto_0
.end method

.method public gs()I
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Jg:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 113
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ev;->Jj:Z

    if-eqz v0, :cond_3

    .line 115
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ev;->Jk:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Jh:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aP()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/gallery3d/ui/ev;->mTotal:I

    .line 119
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/ev;->Jh:Lcom/android/gallery3d/a/r;

    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->aP()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 120
    iget-object v2, p0, Lcom/android/gallery3d/ui/ev;->Jh:Lcom/android/gallery3d/a/r;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/a/r;->A(I)Lcom/android/gallery3d/a/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->aN()I

    move-result v2

    if-gtz v2, :cond_0

    .line 121
    iget v2, p0, Lcom/android/gallery3d/ui/ev;->mTotal:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/gallery3d/ui/ev;->mTotal:I

    .line 119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Jh:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aN()I

    move-result v0

    goto :goto_0

    .line 126
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/ui/ev;->mTotal:I

    sub-int/2addr v0, v1

    .line 128
    :goto_2
    const-string v1, "SelectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectedCount() count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public gt()Lcom/android/gallery3d/a/r;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Jh:Lcom/android/gallery3d/a/r;

    return-object v0
.end method

.method public gu()Ljava/util/Set;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Jg:Ljava/util/Set;

    return-object v0
.end method

.method public n(Lcom/android/gallery3d/a/dd;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/gallery3d/ui/ev;->rv:Lcom/android/gallery3d/a/dd;

    .line 148
    return-void
.end method

.method public o(Lcom/android/gallery3d/a/dd;)Z
    .locals 1
    .parameter

    .prologue
    .line 151
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->rv:Lcom/android/gallery3d/a/dd;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/ev;->Jj:Z

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Jg:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 73
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ev;->gq()V

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Ji:Lcom/android/gallery3d/ui/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Ji:Lcom/android/gallery3d/ui/ba;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/ba;->R(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public t(Lcom/android/gallery3d/a/dd;)Z
    .locals 2
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ev;->Jj:Z

    iget-object v1, p0, Lcom/android/gallery3d/ui/ev;->Jg:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public u(Lcom/android/gallery3d/a/dd;)V
    .locals 2
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Jg:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Jg:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Ji:Lcom/android/gallery3d/ui/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Ji:Lcom/android/gallery3d/ui/ba;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/ev;->t(Lcom/android/gallery3d/a/dd;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/gallery3d/ui/ba;->a(Lcom/android/gallery3d/a/dd;Z)V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ev;->gs()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ev;->Jm:Z

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ev;->gr()V

    .line 144
    :cond_1
    return-void

    .line 136
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ev;->gq()V

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Jg:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public w(Z)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/ev;->Jm:Z

    .line 64
    return-void
.end method

.method public x(Z)Ljava/util/ArrayList;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/ev;->Jk:Z

    if-eqz v1, :cond_4

    .line 178
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/ev;->Jj:Z

    if-eqz v1, :cond_2

    .line 179
    iget-object v1, p0, Lcom/android/gallery3d/ui/ev;->Jh:Lcom/android/gallery3d/a/r;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/r;->aP()I

    move-result v1

    .line 180
    :goto_0
    if-ge v0, v1, :cond_8

    .line 181
    iget-object v3, p0, Lcom/android/gallery3d/ui/ev;->Jh:Lcom/android/gallery3d/a/r;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/a/r;->A(I)Lcom/android/gallery3d/a/r;

    move-result-object v3

    .line 182
    invoke-virtual {v3}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v4

    .line 183
    iget-object v5, p0, Lcom/android/gallery3d/ui/ev;->Jg:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 184
    if-eqz p1, :cond_1

    .line 185
    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/ev;->a(Ljava/util/ArrayList;Lcom/android/gallery3d/a/r;)V

    .line 180
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Jg:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/dd;

    .line 193
    if-eqz p1, :cond_3

    .line 194
    iget-object v3, p0, Lcom/android/gallery3d/ui/ev;->ih:Lcom/android/gallery3d/a/ao;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/a/ao;->g(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/r;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/gallery3d/ui/ev;->a(Ljava/util/ArrayList;Lcom/android/gallery3d/a/r;)V

    goto :goto_2

    .line 196
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 201
    :cond_4
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/ev;->Jj:Z

    if-eqz v1, :cond_7

    .line 203
    iget-object v1, p0, Lcom/android/gallery3d/ui/ev;->Jh:Lcom/android/gallery3d/a/r;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/r;->aN()I

    move-result v3

    move v1, v0

    .line 205
    :goto_3
    if-ge v1, v3, :cond_8

    .line 206
    sub-int v0, v3, v1

    const/16 v4, 0x1f4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Jh:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/a/r;->j(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    .line 209
    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    .line 210
    iget-object v6, p0, Lcom/android/gallery3d/ui/ev;->Jg:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 212
    :cond_6
    add-int v0, v1, v4

    move v1, v0

    .line 213
    goto :goto_3

    .line 215
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/ui/ev;->Jg:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/dd;

    .line 216
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 220
    :cond_8
    return-object v2
.end method
