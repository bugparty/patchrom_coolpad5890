.class public Lcom/android/gallery3d/b/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/u;


# static fields
.field private static final Eh:I = 0x1

.field private static final Ei:I = 0x2

.field private static final TAG:Ljava/lang/String; = "JobLimiter"

.field private static final dR:I


# instance fields
.field private final Ej:Ljava/util/LinkedList;

.field private final Ek:Lcom/android/gallery3d/b/n;

.field private mLimit:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/b/n;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/b/z;->Ej:Ljava/util/LinkedList;

    .line 132
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/b/n;

    iput-object v0, p0, Lcom/android/gallery3d/b/z;->Ek:Lcom/android/gallery3d/b/n;

    .line 133
    iput p2, p0, Lcom/android/gallery3d/b/z;->mLimit:I

    .line 134
    return-void
.end method

.method private fQ()V
    .locals 2

    .prologue
    .line 149
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/gallery3d/b/z;->mLimit:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/b/z;->Ej:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/b/z;->Ej:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/b/w;

    .line 151
    invoke-virtual {v0}, Lcom/android/gallery3d/b/w;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget v1, p0, Lcom/android/gallery3d/b/z;->mLimit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/b/z;->mLimit:I

    .line 153
    iget-object v1, p0, Lcom/android/gallery3d/b/z;->Ek:Lcom/android/gallery3d/b/n;

    invoke-virtual {v1, v0, p0}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/b/w;->c(Lcom/android/gallery3d/b/l;)V

    goto :goto_0

    .line 156
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/b/ab;)Lcom/android/gallery3d/b/l;
    .locals 1
    .parameter

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/b/z;->a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/android/gallery3d/b/w;

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/b/ab;

    invoke-direct {v1, v0, p2}, Lcom/android/gallery3d/b/w;-><init>(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)V

    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/b/z;->Ej:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 139
    invoke-direct {p0}, Lcom/android/gallery3d/b/z;->fQ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-object v1

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/android/gallery3d/b/l;)V
    .locals 1
    .parameter

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/b/z;->mLimit:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/b/z;->mLimit:I

    .line 161
    invoke-direct {p0}, Lcom/android/gallery3d/b/z;->fQ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
